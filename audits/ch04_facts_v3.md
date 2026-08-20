# Fact check — ch04

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương này không nêu ví dụ bài hát cụ thể nào, nên mục 7 không áp dụng)

## Ghi chú soát chi tiết
1. **Nốt tồn tại**: toàn bộ tên nốt xuất hiện trong chương = {A3, A4, Bb3, C4, C5, D3, D4, E4, F4, G4} — đối chiếu `grep` toàn văn, khớp chính xác 10 nốt hợp lệ trong `facts/dkurd.md` mục 1 và mục 4. Không có B bécar, không có nốt thăng/giáng lạ, không có nốt ngoài tầm.
2. **Quãng tám**: mọi tên nốt đều ghi kèm số quãng tám đúng như bảng facts (A3, Bb3, C4, D4, E4, F4, G4, A4, C5, D3-Ding). Không có lỗi kiểu Bb4/D5.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào (đúng theo tiến độ sách — hợp âm dành cho chương 9), nên không có gì để đối chiếu.
4. **Quãng**: chương không phát biểu cụ thể về số nửa cung/quãng nào (không nhắc "quãng 2", "nửa cung" v.v.), nên không có gì để đối chiếu với bảng quãng mục 5.
5. **Sơ đồ ASCII**: đã diff từng ký tự cả hai khối ASCII trong ch04.md (sơ đồ mặt trống dòng ~12-24, và sơ đồ tách cột trái/phải dòng ~33-40) với `facts/dkurd.md` mục 2 và mục 3 bằng script Python trích khối code — khớp 100%, không lệch một ký tự nào.
6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch04.md --kiem` → kết quả:
   ```
   ĐẠT tab/sach_ch04_bai1.json  (9 nốt, 0 ding, 3 ô, 4/4)
   ĐẠT tab/sach_ch04_bai2.json  (9 nốt, 1 ding, 3 ô, 4/4)
   ```
   Không có lỗi.
   - Kiểm thêm bằng tay quy tắc "lẻ = phải = P, chẵn = trái = T" cho từng cột có nốt trong cả 2 bài: tất cả các nốt số lẻ (1,3,5,7,9) đều gán `P`, tất cả nốt số chẵn (2,4,6,8) đều gán `T`, đúng như bảng cheat sheet Lớp 3 và quy tắc mục 3 của `facts/dkurd.md`. Riêng C5 (đỉnh) và Ding — chương ghi rõ là "tuỳ thuận"/không có luật tay cố định, và cách gán tay trong ví dụ (P) không vi phạm gì vì không có luật cứng nào cho hai vị trí này.
7. **Ví dụ bài hát**: chương không nêu tên bài hát cụ thể hay khẳng định tông nào — không áp dụng.

## KẾT LUẬN: SẠCH
