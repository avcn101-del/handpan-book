# Fact check — ch05

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát cụ thể nào kèm tông, nên mục 7 không áp dụng)

## Ghi chú soát
- Mục 1 (nốt tồn tại): các nốt xuất hiện trong ch05 — A3, A4, Bb3, C4, C5, D3, D4, E4, F4, G4 — đều nằm trong danh sách 10 nốt của facts/dkurd.md mục 1.
- Mục 2 (quãng tám): mọi tên nốt đều kèm số quãng tám, khớp bảng (A3, D4, E4, D4, Bb3, C4, C5, F4, G4, A4, D3-Ding). Không thấy Bb4/D5 hay octave sai nào.
- Mục 3 (cấu tạo hợp âm): chương không gọi tên hợp âm nào (Am, C, Bb...) — không có gì để đối chiếu.
- Mục 4 (quãng/interval): chương không phát biểu cụ thể về khoảng cách nốt tính bằng nửa cung/quãng nhạc lý — chỉ mô tả vị trí không gian trên mặt trống (vd "D4 nằm phía trên A3 một nấc, nhưng đã nhảy sang bên trái"; "E4 nằm đối xứng D4 qua Ding"). Đối chiếu với sơ đồ ASCII ở facts/dkurd.md mục 2: các mô tả này đúng — A3 (①) ở hàng dưới cùng bên phải, D4 (④) ở hàng ngay trên bên trái, E4 (⑤) ở hàng đối diện phía trên Ding bên phải. Không có phát biểu quãng nhạc lý sai.
- Mục 5 (sơ đồ ASCII): đã diff nguyên văn (`diff` từng ký tự) khối sơ đồ ở dòng 18–29 chương 05 với khối ở dòng 30–41 facts/dkurd.md — **giống hệt 100%**.
- Mục 6 (lưới tab chạy được): đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch05.md --kiem`:
  ```
  ĐẠT tab/sach_ch05_bai1.json  (0 nốt, 8 ding, 1 ô, 4/4)
  ĐẠT tab/sach_ch05_bai2.json  (8 nốt, 8 ding, 2 ô, 4/4)
  ĐẠT tab/sach_ch05_bai3.json  (1 nốt, 2 ding, 1 ô, 4/4)
  ```
  Không có lỗi. Đối chiếu thêm bằng mắt giữa mô tả văn xuôi và lưới: Pattern 1 (Ding đều 4 lần + ghost giữa mỗi khoảng) khớp lưới bài tập 1; Pattern 2 (A3–D4–E4–D4 chèn đúng vị trí ghost cũ, lặp 2 ô giống hệt) khớp lưới bài tập 2; Pattern 3 (Ding → D4 → Ding giữ bằng `▬`) khớp lưới bài tập 3.
- Mục 7 (ví dụ bài hát): chương không nêu tên bài hát cụ thể nào kèm khẳng định tông — không cần xác minh.

## KẾT LUẬN: SẠCH
