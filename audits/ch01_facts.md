# Fact check — ch01

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nhắc bài hát cụ thể nào)

## Ghi chú kiểm tra
1. Nốt tồn tại — chỉ dùng "Ding D3" trong văn xuôi (dòng 13, 42) và các nhãn nốt trong sơ đồ ASCII. D3 nằm trong bảng 10 nốt (`facts/dkurd.md` mục 1). Không có nốt nào ngoài danh sách.
2. Quãng tám — "Ding D3" ghi đúng quãng tám khớp facts (D3, MIDI 50). Không có nốt nào thiếu số quãng tám.
3. Cấu tạo hợp âm — chương không gọi tên hợp âm nào. Không áp dụng.
4. Quãng — chương không phát biểu về khoảng cách nốt nào (chỉ có một nốt duy nhất được dạy). Không áp dụng.
5. Sơ đồ ASCII — đối chiếu bằng `diff` giữa khối sơ đồ dòng 27–40 của ch01.md và khối chuẩn dòng 29–42 của `facts/dkurd.md`: **giống hệt từng ký tự**.
6. Lưới tab chạy được — chạy `python3 bin/sach_tab_sang_json.py chapters/ch01.md --kiem`:
   ```
   ĐẠT tab/sach_ch01_bai1.json  (0 nốt, 8 ding, 8 ô, 4/4)
   ĐẠT tab/sach_ch01_bai2.json  (0 nốt, 4 ding, 1 ô, 4/4)
   ```
   Không có lỗi.
7. Ví dụ bài hát — chương không nêu tên bài hát hay tông cụ thể nào. Không cần xác minh.

## KẾT LUẬN: SẠCH
