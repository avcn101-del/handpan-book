# Fact check — ch01

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát nào)

## Ghi chú soát
1. **Nốt tồn tại** — chương chỉ dùng đúng một nốt: Ding D3. Có trong danh sách 10 nốt của `facts/dkurd.md` mục 1. Đạt.
2. **Quãng tám** — "Ding D3" ghi kèm quãng tám nhất quán, đúng với mục 1. Không có nốt nào khác xuất hiện trong nội dung dạy hay bài tập (các tên nốt khác chỉ xuất hiện bên trong khối sơ đồ ASCII copy nguyên, không phải phát biểu dạy). Đạt.
3. **Cấu tạo hợp âm** — chương không đề cập hợp âm nào. Không áp dụng.
4. **Quãng** — chương không phát biểu về khoảng cách nốt nào. Không áp dụng.
5. **Sơ đồ ASCII** — đối chiếu bằng diff ký tự-cho-ký tự với khối trong `facts/dkurd.md` mục 2: khớp tuyệt đối (EQUAL: True). Đạt.
6. **Lưới tab chạy được** — chạy `python3 bin/sach_tab_sang_json.py chapters/ch01.md --kiem`:
   ```
   ĐẠT tab/sach_ch01_bai1.json  (0 nốt, 8 ding, 8 ô, 4/4)
   ĐẠT tab/sach_ch01_bai2.json  (0 nốt, 4 ding, 1 ô, 4/4)
   ```
   Không có lỗi. Đạt.
7. **Ví dụ bài hát** — chương không khẳng định bài hát nào ở tông nào. Không cần xác minh.

## KẾT LUẬN: SẠCH (0 blocker, 0 major)
