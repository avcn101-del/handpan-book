#!/usr/bin/env python3
"""
Đọc file chương .md, tìm các khối ```tab, sinh file JSON trong tab/
theo đúng lược đồ của app handpan_dkurd10_v2_4.html.

Dùng:  python3 bin/sach_tab_sang_json.py chapters/ch05.md
       python3 bin/sach_tab_sang_json.py chapters/ch05.md --kiem   (chỉ soát, không ghi)

Lý do tồn tại: LLM tính tick bằng tay là sai. Lưới in trong sách là nguồn
duy nhất; JSON sinh ra từ nó, nên không thể lệch nhau.
"""
import sys, os, re, json

TPB   = 480
G16   = 120
PAD   = {"1":57,"2":58,"3":60,"4":62,"5":64,"6":65,"7":67,"8":69,"9":72}
NAME  = {57:"A3",58:"Bb3",60:"C4",62:"D4",64:"E4",65:"F4",67:"G4",69:"A4",72:"C5"}
DING  = 50
GO    = {"●","○"}          # sinh nốt
TRONG = {".","·","▬","✕"}  # không sinh nốt
TAY   = {"P":"R","T":"L"}

class Loi(Exception): pass

def moc(ts):
    num, den = (int(x) for x in ts.split("/"))
    e8  = TPB * 4 // den
    bar = e8 * num
    if bar % G16: raise Loi(f"nhịp {ts} không chia hết cho lưới móc kép")
    return num, den, bar, bar // G16

def doc_khoi(md):
    """Trả về list (info_dict, [dòng]) cho mỗi khối ```tab."""
    ra, dang, info, buf = [], False, None, []
    for so, dong in enumerate(md.splitlines(), 1):
        if not dang:
            m = re.match(r"^```tab\s+(.*)$", dong.strip())
            if m:
                kv = dict(p.split("=", 1) for p in m.group(1).split() if "=" in p)
                thieu = {"id","bar","ts"} - kv.keys()
                if thieu: raise Loi(f"dòng {so}: khối tab thiếu {sorted(thieu)}")
                info, buf, dang = kv, [], True
        else:
            if dong.strip() == "```":
                ra.append((info, buf)); dang = False
            else:
                buf.append((so, dong))
    if dang: raise Loi("có khối ```tab không đóng")
    return ra

def phan_tich(info, dong_list):
    num, den, bar_ticks, cols = moc(info["ts"])
    base = (int(info["bar"]) - 1) * bar_ticks
    hang = {}
    for so, dong in dong_list:
        if "|" not in dong: raise Loi(f"dòng {so}: thiếu ký tự |")
        nhan, phai = dong.split("|", 1)
        nhan = nhan.strip()
        o = phai.split()
        if nhan.startswith(("móc","nốt","phách")) and not re.match(r"^[1-9D]\s*·", nhan):
            continue  # hàng tiêu đề nhịp
        if len(o) != cols:
            raise Loi(f"dòng {so}: hàng '{nhan}' có {len(o)} ô, nhịp {info['ts']} cần {cols}")
        hang[nhan] = o
    return num, den, bar_ticks, cols, base, hang

def sinh(md_path, ghi=True):
    md   = open(md_path, encoding="utf-8").read()
    khoi = doc_khoi(md)
    if not khoi:
        print("không tìm thấy khối ```tab nào"); return 0
    gom = {}
    for info, dong_list in khoi:
        num, den, bar_ticks, cols, base, hang = phan_tich(info, dong_list)
        bid = info["id"]
        g = gom.setdefault(bid, {"notes": [], "ding": [], "ts": [num, den], "bars": 0})
        if g["ts"] != [num, den]:
            raise Loi(f"{bid}: các ô không cùng nhịp")
        g["bars"] = max(g["bars"], int(info["bar"]))
        tay = hang.get("Tay"); loi = hang.get("Lời")
        for nhan, o in hang.items():
            if nhan in ("Tay", "Lời"): continue
            m = re.match(r"^([1-9D])\s*·", nhan)
            if not m: raise Loi(f"nhãn hàng lạ: '{nhan}'")
            k = m.group(1)
            for c, ky in enumerate(o):
                if ky in TRONG: continue
                if ky not in GO: raise Loi(f"{bid} ô {info['bar']}: ký hiệu lạ '{ky}'")
                t = base + c * G16
                if k == "D":
                    g["ding"].append(t)
                else:
                    n = {"t": t, "note": PAD[k], "fixed": False,
                         "hand": TAY.get(tay[c], "R") if tay else "R"}
                    if loi and loi[c] not in ("_", ".", "·"):
                        n["ly"] = loi[c]
                    g["notes"].append(n)
    n_file = 0
    for bid, g in gom.items():
        g["notes"].sort(key=lambda x: (x["t"], x["note"]))
        g["ding"] = sorted(set(g["ding"]))
        doc = {
            "notes": g["notes"], "ding": g["ding"],
            "PAD": {str(v): k for k, v in PAD.items()},
            "NAME": {str(k): v for k, v in NAME.items()},
            "meta": {"name": bid, "bpm": 90, "dmode": "tab",
                     "bars": g["bars"], "barOffset": 0,
                     "timeSig": g["ts"], "transpose": 0, "version": 1},
        }
        ra = os.path.join("tab", bid + ".json")
        if ghi:
            os.makedirs("tab", exist_ok=True)
            with open(ra, "w", encoding="utf-8") as f:
                json.dump(doc, f, ensure_ascii=False, indent=1)
        print(f"{'ghi' if ghi else 'ĐẠT'} {ra}  ({len(g['notes'])} nốt, "
              f"{len(g['ding'])} ding, {g['bars']} ô, {g['ts'][0]}/{g['ts'][1]})")
        n_file += 1
    return n_file

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(2)
    try:
        sinh(sys.argv[1], ghi="--kiem" not in sys.argv)
    except Loi as e:
        print("LỖI TAB:", e); sys.exit(1)
