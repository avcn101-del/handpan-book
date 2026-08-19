# Fact check — ch03

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Chương không nêu ví dụ bài hát cụ thể nào ở tông nào → không có gì cần xác minh cho mục 7.

## Chi tiết đối chiếu
1. **Nốt tồn tại**: chương chỉ dùng D3 (Ding) và D4. Cả hai đều có trong bảng 10 nốt (`facts/dkurd.md` mục 1). Đạt.
2. **Quãng tám**: mọi lần nhắc đều ghi rõ D3 / D4, không có chỗ nào viết "D" trống trơn hay sai quãng tám. Đạt.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào. Không áp dụng.
4. **Quãng**: chương chỉ dùng khái niệm "quãng tám" giữa D3–D4, đây là quan hệ nốt cùng tên khác tầng — đúng lý thuyết cơ bản, không có phát biểu số nửa cung sai. Đạt.
5. **Sơ đồ ASCII**: đã `diff` từng ký tự dòng 13–26 của `chapters/ch03.md` với dòng 29–42 của `facts/dkurd.md` — khớp tuyệt đối, không lệch một ký tự nào.
6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch03.md --kiem`:
   ```
   ĐẠT tab/sach_ch03_bai1.json  (1 nốt, 2 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch03_bai2.json  (2 nốt, 3 ding, 1 ô, 4/4)
   ```
   Không có lỗi.
7. **Ví dụ bài hát**: chương không khẳng định bài hát cụ thể nào ở tông nào. Không áp dụng.

## KẾT LUẬN: SẠCH (0 blocker, 0 major)
