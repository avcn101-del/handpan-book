# FACTS — Ký hiệu tab dùng trong sách

> Mọi bài tập trong sách viết bằng ký hiệu này. Không dùng khuông nhạc.
> Format này **trùng với lưới của app `handpan_dkurd10_v2_4.html`** — người đọc thấy trong sách y hệt thứ họ thấy trên điện thoại.

## 1. Bảng nốt — số ô trùng với `PAD` của app

| Số ô | Nốt | MIDI |
|------|-----|------|
| 9 | C5 | 72 |
| 8 | A4 | 69 |
| 7 | G4 | 67 |
| 6 | F4 | 65 |
| 5 | E4 | 64 |
| 4 | D4 | 62 |
| 3 | C4 | 60 |
| 2 | Bb3 | 58 |
| 1 | A3 | 57 |
| D | Ding D3 | 50 |

Nhớ nhanh: **lẻ = bên phải, chẵn = bên trái, 9 ở đỉnh, D ở giữa.**

## 2. Khuôn lưới

Hàng xếp từ **9 xuống 1**, rồi **Ding**, rồi **Lời**. Cột = ô nhỏ trong ô nhạc.
Chiều dọc của lưới trùng chiều dọc của sơ đồ mặt trống: số 9 ở trên = xa người chơi; số 1 ở dưới = gần người chơi. Dùng điểm này để dạy — mắt đọc lưới và mắt nhìn trống cùng một hướng.

````
```tab id=sach_ch05_bai1 bar=1 ts=6/8
móc đơn  | 1  .  2  .  3  .  4  .  5  .  6  .
 5 · E4  | ·  ·  ·  ·  ●  ·  ·  ·  ·  ·  ·  ·
 3 · C4  | ·  ·  ·  ·  ·  ·  ·  ·  ●  ·  ·  ·
 1 · A3  | ●  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·
 D · Ding| ●  ·  ·  ·  ·  ·  ●  ·  ·  ·  ·  ·
 Tay     | P  ·  ·  ·  P  ·  T  ·  P  ·  ·  ·
```
````

Dòng mở khối bắt buộc: ```` ```tab id=<slug> bar=<số ô> ts=<nhịp> ````. Mỗi ô nhạc là một khối riêng, cùng `id` thì thuộc cùng bài tập.

- Mỗi ô là **một ký tự, cách nhau bằng khoảng trắng**. Số ô phải khớp nhịp: 6/8 → 12 cột, 4/4 → 16 cột. Lệch một cột là script báo lỗi ngay, không cần người soát.
- `●` = gõ, `·` = không gõ.
- **Chỉ vẽ những hàng thực sự dùng trong bài tập đó.** Bài dùng 3 nốt thì 3 hàng, không vẽ đủ 9. Đây là khác biệt duy nhất so với app (app luôn vẽ đủ 9 hàng vì có màn hình cuộn được, sách in thì không).
- Hàng `Ding` và hàng `Tay` luôn có. Hàng `Lời` chỉ có khi bài tập gắn với lời hát.
- Hàng `Tay` là **của sách, app không có** — nhưng dữ liệu đã nằm sẵn ở trường `hand`.

## 3. Ký hiệu bổ sung

| Ký hiệu | Nghĩa |
|---------|-------|
| `●` | gõ bình thường |
| `○` | ghost note — gõ rất nhẹ, gần như chỉ nghe hơi |
| `✕` | tắt tiếng: đặt tay lên nốt vừa gõ cho im |
| `▬` | giữ, để ngân qua các cột tiếp theo |
| `P` / `T` | tay phải / tay trái |

Hợp âm = nhiều `●` thẳng cột ở nhiều hàng.

## 4. Luật viết bài tập
- Cột phải thẳng hàng tuyệt đối. Luôn bọc trong khối code.
- Ghi tiêu đề mỗi ô: `Ô N · <nhịp> · <tên phách>` (vd `Ô 3 · 4/4 · móc đơn`).
- Bài tập trong sách **tối đa 8 ô**. Dài hơn thì người mới không tập nổi và không in vừa trang.
- Chỉ dùng nốt trong bảng mục 1. Nốt ngoài bảng = BLOCKER.
- Ghi tốc độ gợi ý bằng chữ (chậm — vừa — nhanh), không ghi BPM cứng.
- Tên nốt luôn kèm quãng tám. Cấm viết "nốt A" trống trơn.

## 5. Ánh xạ sang JSON

```
{ notes:[{t, note, ly, fixed, hand}], ding:[t], PAD, NAME,
  meta:{name, bpm, dmode, bars, barOffset, timeSig:[n,d], transpose, version:1} }
```

| Sách | JSON | Ghi chú |
|------|------|---------|
| số ô 1–9 | `note` (số MIDI, bảng mục 1) | `PAD` ánh xạ MIDI → số ô |
| vị trí cột | `t` | tick tuyệt đối |
| `P` / `T` | `hand` = `"R"` / `"L"` | mặc định `"R"` |
| hàng Ding | mảng `ding` (tick), **không** nằm trong `notes` | |
| hàng Lời | `ly` — âm tiết lời hát gắn với nốt đó | |
| nhịp | `meta.timeSig` | thiếu thì mặc định `[6,8]` |
| số ô | `meta.bars` | |
| `fixed` | 5 giá trị: `false` · `"8va"` · `"8vb"` · `"8va-le"` · `"nan"` | bài tập gốc của sách luôn `false` |

Hằng số lưới: `G16 = 120` · `E8 = TPB*4/d` · `BAR = E8*n` · `COLS = BAR/G16` · `SUB = E8/G16`.

## 6. Xuất JSON — sinh bằng script, KHÔNG viết tay

```bash
python3 bin/sach_tab_sang_json.py chapters/chNN.md          # sinh file vào tab/
python3 bin/sach_tab_sang_json.py chapters/chNN.md --kiem   # chỉ soát, không ghi
```

Script đọc chính khối lưới in trong chương và sinh `tab/<id>.json`. **Lưới in là nguồn duy nhất** — JSON là sản phẩm phái sinh, nên không thể lệch nhau. Không agent nào được tự tính tick hay viết JSON bằng tay.

Kết quả: mở file trong app hiện có là nghe được bài tập. Sách đọc bằng mắt, app thì nghe.

Đặt `id` theo mẫu `sach_chNN_baiM` (không dấu, không khoảng trắng — gõ được trên Android).

Hai giới hạn đã biết:
- Hàng `Ding` không mang được thông tin tay, vì lược đồ lưu `ding` là mảng tick trần. Tay của Ding chỉ tồn tại trong sách in.
- `▬` (giữ) và `✕` (tắt tiếng) không sinh nốt trong JSON — chúng là chỉ dẫn kỹ thuật cho người đọc, app không biểu diễn được.
