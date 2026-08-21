# Fact check — ch07

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Chương không nêu ví dụ bài hát cụ thể nào (không có tuyên bố "bài X ở tông Y") → mục 7 không áp dụng.

## Chi tiết đối chiếu
1. **Nốt tồn tại** — các nốt xuất hiện: D3, A3, Bb3, C4, D4, E4, F4, G4, A4, C5. Tất cả đều nằm trong 10 nốt hợp lệ của `facts/dkurd.md` mục 1. Không có B bécar, không có thăng/giáng lạ.
2. **Quãng tám** — mọi tên nốt đều kèm số quãng tám đúng (D3, A3, C4… khớp bảng MIDI mục 1). Không có lỗi kiểu Bb4/D5.
3. **Cấu tạo hợp âm** — chương không gọi tên hợp âm nào (Am, C, Bb, Dm…), chỉ dạy quãng giữa hai nốt đơn lẻ. Mục này không áp dụng, không có gì để sai.
4. **Quãng**:
   - D3→A3 = 7 nửa cung: đúng, khớp MIDI (57−50=7) và bảng mục 5 (A = quãng 5 đúng = 7 nửa cung từ D).
   - D3→C4 = 10 nửa cung: đúng, khớp MIDI (60−50=10) và bảng mục 5 (C = quãng 7 thứ = 10 nửa cung từ D).
   - "Cung = 2 nửa cung, khoảng cách phổ biến nhất giữa các nốt liền kề trên D Kurd": đúng — trong 8 cặp liền kề theo zigzag (A3-Bb3-C4-D4-E4-F4-G4-A4-C5) chỉ có 2 cặp nửa cung (A3-Bb3 và E4-F4), còn lại 6 cặp là 1 cung, khớp mục 5 facts.
   - Chuỗi D3-E4-F4-G4-A4 (bậc 1-2-3-4-5): quãng liền kề D-E=2, E-F=1, F-G=2, G-A=2 nửa cung → chỗ "dính" hơn là E4-F4, đúng là cặp nửa cung đã xác nhận ở mục 5 facts (không bị chương gọi tên trước — hoãn đúng sang chương 8 như mục đích sư phạm).
   - "A3 (①) và C4 (③) đều nằm bên phải": đúng theo mục 2 facts (nhóm số lẻ = bên phải).
5. **Sơ đồ ASCII** — đối chiếu `diff` từng ký tự giữa khối sơ đồ trong ch07.md (dòng 17–30) và bản chuẩn `facts/dkurd.md` (dòng 29–42): khớp tuyệt đối, không lệch ký tự nào.
6. **Lưới tab chạy được** — chạy lệnh kiểm:
   ```
   python3 bin/sach_tab_sang_json.py chapters/ch07.md --kiem
   ĐẠT tab/sach_ch07_bai1.json  (2 nốt, 2 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch07_bai2.json  (4 nốt, 1 ding, 2 ô, 4/4)
   ```
   Không có lỗi cột/nhịp.

## KẾT LUẬN: SẠCH (0 blocker, 0 major)
