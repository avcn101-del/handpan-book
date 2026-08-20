# Fact check — ch05

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Chương không nêu tên bài hát thật nào kèm tông, nên mục 7 (ví dụ bài hát) không áp dụng — không có gì cần xác minh.

## Ghi chú kiểm tra
1. **Nốt tồn tại**: chỉ dùng D3 (Ding), A3, D4, E4 — cả 4 đều có trong bảng 10 nốt của `facts/dkurd.md`.
2. **Quãng tám**: quét toàn văn bản, mọi lần xuất hiện tên nốt đều kèm số quãng tám (D3, A3, D4, E4, và các nốt xuất hiện trong sơ đồ: C5, A4, G4, F4, Bb3, C4). Không thấy trường hợp viết trống trơn "nốt A" hay thiếu số quãng tám.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào (Am, C, Dm...), chỉ dùng nốt đơn lẻ trong pattern — không có gì để đối chiếu bảng hợp âm.
4. **Quãng**: chương không phát biểu số nửa cung/quãng cụ thể nào (không nói "quãng 3 thứ", "nửa cung" v.v.) — không có phát biểu quãng cần đối chiếu bảng mục 5.
5. **Sơ đồ ASCII**: đã `diff` từng ký tự khối sơ đồ ở dòng 17–30 của `chapters/ch05.md` với khối chuẩn ở `facts/dkurd.md` (dòng 29–41) — **khớp tuyệt đối, không lệch ký tự nào**.
6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch05.md --kiem`, kết quả:
   ```
   ĐẠT tab/sach_ch05_bai1.json  (0 nốt, 8 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch05_bai2.json  (8 nốt, 8 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch05_bai3.json  (1 nốt, 2 ding, 1 ô, 4/4)
   ```
   Không có lỗi.
7. **Ví dụ bài hát**: không áp dụng — chương chỉ dùng ẩn dụ "câu hát ru" chung chung, không gọi tên bài hát thật hay tông cụ thể nào.

Đối chiếu thêm phần mô tả vị trí nốt trên trống (Lớp 1, đoạn Pattern 2): A3 = ① dưới-phải, D4 = ④ trên-trái (lệch một nấc so với A3), E4 = ⑤ phải — khớp với chiều trái/phải đã xác nhận trong `facts/dkurd.md` mục 2 (số lẻ bên phải, số chẵn bên trái). Nội dung lưới bài tập (Bài tập 1, 2, 3) đối chiếu tay chơi (P/T) với vị trí trái/phải của từng nốt trong sơ đồ đều nhất quán (A3 bên phải → P, D4 bên trái → T, E4 bên phải → P).

## KẾT LUẬN: SẠCH
