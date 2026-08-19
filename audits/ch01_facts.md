# Fact check — ch01

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Không có phát biểu về bài hát/tông nào trong chương này — mục 7 không áp dụng.

## Ghi chú soát
1. Nốt tồn tại — chương chỉ dùng đúng một nốt: **Ding (D3)**. D3 có trong bảng 10 nốt của `facts/dkurd.md` mục 1. Không có nốt nào khác xuất hiện trong văn bản hay lưới tab.
2. Quãng tám — mọi lần nhắc "Ding" trong sơ đồ và chú thích đều ghi kèm "D3" (dòng 34, 42). Đúng.
3. Cấu tạo hợp âm — không có hợp âm nào được gọi tên trong chương. N/A.
4. Quãng — không có phát biểu nào về khoảng cách giữa các nốt. N/A.
5. Sơ đồ ASCII — đã `diff` dòng 27–40 của `chapters/ch01.md` với dòng 29–42 của `facts/dkurd.md`: khớp từng ký tự, không lệch.
6. Lưới tab chạy được — đã chạy:
   `python3 bin/sach_tab_sang_json.py chapters/ch01.md --kiem`
   Kết quả:
   ```
   ĐẠT tab/sach_ch01_bai1.json  (0 nốt, 8 ding, 8 ô, 4/4)
   ĐẠT tab/sach_ch01_bai2.json  (0 nốt, 4 ding, 1 ô, 4/4)
   ```
   Không có lỗi. `git status` sau khi chạy `--kiem` không phát sinh file mới (đúng chế độ chỉ soát).
7. Ví dụ bài hát — chương không khẳng định bài hát nào ở tông nào (chỉ nói chung "không phải bài hát"). Không cần xác minh.

## KẾT LUẬN: SẠCH
