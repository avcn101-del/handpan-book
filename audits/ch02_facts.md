# Fact check — ch02

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát nào, không có tuyên bố về tông/song nào cần xác minh)

## Ghi chú soát theo 6 mục

1. **Nốt tồn tại** — Chương chỉ dùng "Ding" (D3), không xuất hiện tên nốt nào khác (không A/Bb/C/D4/E/F/G/A4/C5). Không có nốt lạ.
2. **Quãng tám** — Chương chỉ nhắc "Ding" (không kèm số "D3" trong văn xuôi), đúng với cách dùng của chính `facts/dkurd.md` (vd mục 3: "Ding ở tâm", "chủ âm" — không kèm octave khi nói về Ding như tên riêng). Không có nốt nào khác cần kiểm octave.
3. **Cấu tạo hợp âm** — Chương không nhắc tới hợp âm nào. Không áp dụng.
4. **Quãng** — Chương không phát biểu về khoảng cách nốt nào (chỉ nói về lực gõ, kiểu chạm tay, ghost note, tắt tiếng). Không áp dụng.
5. **Sơ đồ ASCII** — Chương không chứa sơ đồ mặt trống nào. Không áp dụng.
6. **Lưới tab chạy được** — Đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch02.md --kiem`:
   ```
   ĐẠT tab/sach_ch02_bai1.json  (0 nốt, 8 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch02_bai2.json  (0 nốt, 8 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch02_bai3.json  (0 nốt, 4 ding, 2 ô, 4/4)
   ```
   Không có lỗi. Ký hiệu dùng trong lưới (`●`, `○`, `▬`, `✕`, `P`) đều nằm trong bảng ký hiệu mục 3 của `facts/tab-notation.md`. Hàng `Ding` và hàng `Tay` đều có mặt như luật yêu cầu; không có hàng `Lời` (đúng vì bài tập không gắn lời hát).
7. **Ví dụ bài hát** — Chương không nêu tên bài hát hay tuyên bố về tông nào. Không có gì cần xác minh.

## KẾT LUẬN: SẠCH
