# Fact check — ch06

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát cụ thể nào cần xác minh tông)

## Chi tiết đối chiếu

1. **Nốt tồn tại**: mọi tên nốt xuất hiện trong ch06 (D3/Ding, D4, A3, A4, C4, C5, Bb3, E4, F4, G4) đều nằm trong danh sách 10 nốt ở `facts/dkurd.md` mục 1. Không có nốt lạ (không B bécar, không dấu thăng/giáng nào khác).

2. **Quãng tám**: tất cả tên nốt đều ghi kèm số quãng tám đúng theo mục 4 — cặp lặp lại D (Ding D3, D4), A (A3, A4), C (C4, C5) đúng; các nốt đơn Bb3, E4, F4, G4 đúng, không nhầm sang quãng khác (không có Bb4, D5 nào xuất hiện).

3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm cụ thể nào (Am, C, Bb, Dm, F, Gm, Edim) — không có gì để đối chiếu, không phát sinh lỗi.

4. **Quãng**: chương chỉ giới thiệu khái niệm "bậc" (số thứ tự nốt trong thang, đếm từ Ding = bậc 1), liệt kê D=1, E=2, F=3, G=4, A=5, Bb=6, C=7. Đối chiếu bảng mục 5 của `facts/dkurd.md` (Bậc: D=1, E=2, F=♭3, G=4, A=5, Bb=♭6, C=♭7) — số thứ tự bậc trùng khớp (chương chỉ chưa dùng ký hiệu ♭ vì cố ý để dành cho chương sau, được nêu rõ trong "Móc nối"). Không có phát biểu sai về số nửa cung hay tên quãng cụ thể nào trong ch06.

5. **Sơ đồ ASCII**: đã `diff` trực tiếp khối sơ đồ trong `chapters/ch06.md` (dòng 13–26) với khối chuẩn trong `facts/dkurd.md` (dòng 29–42) — khớp từng ký tự, không lệch.

6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch06.md --kiem`:
   ```
   ĐẠT tab/sach_ch06_bai1.json  (8 nốt, 1 ding, 3 ô, 4/4)
   ĐẠT tab/sach_ch06_bai2.json  (2 nốt, 1 ding, 1 ô, 4/4)
   ```
   Không có lỗi. Số nốt cũng khớp mô tả trong văn bản: Bài 1 nói "gõ tám nốt bất kỳ" → script đếm đúng 8 nốt (+ 1 ding kết bài). Bài 2 nói "gõ lần lượt Ding, A3, D4" (ba nốt) → script đếm 2 nốt (A3, D4) + 1 ding, khớp.

7. **Ví dụ bài hát**: chương không nêu tên bài hát cụ thể nào kèm tông — không có gì cần xác minh.

## KẾT LUẬN: SẠCH
