# Fact check — ch03

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát nào)

## Chi tiết kiểm tra
1. Nốt tồn tại: chương chỉ dùng D3 (Ding) và D4 — cả hai đều có trong bảng 10 nốt (`facts/dkurd.md` mục 1).
2. Quãng tám: mọi lần ghi nốt đều kèm số quãng tám đúng (D3, D4). Không có nhầm lẫn kiểu Bb4/D5.
3. Cấu tạo hợp âm: chương không gọi tên hợp âm nào — mục này không áp dụng.
4. Quãng: chương khẳng định D3–D4 là một quãng tám. Đối chiếu MIDI (D3=50, D4=62) → cách 12 nửa cung = đúng 1 quãng tám. Khớp facts.
5. Sơ đồ ASCII: đã diff ký tự-đối-ký tự giữa khối trong chapters/ch03.md (dòng 13–26) và facts/dkurd.md (dòng 29–42) — khớp tuyệt đối, không lệch một ký tự nào.
6. Lưới tab: chạy `python3 bin/sach_tab_sang_json.py chapters/ch03.md --kiem` →
   ```
   ĐẠT tab/sach_ch03_bai1.json  (1 nốt, 2 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch03_bai2.json  (2 nốt, 3 ding, 1 ô, 4/4)
   ```
   Không có lỗi.
7. Ví dụ bài hát: chương không nêu bài hát cụ thể nào — mục này không áp dụng.

## KẾT LUẬN: SẠCH
