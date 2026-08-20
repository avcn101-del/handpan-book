# Fact check — ch05

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát nào để đối chiếu tông)

## Ghi chú soát chi tiết

1. **Nốt tồn tại**: chương chỉ dùng Ding (D3), A3, D4, E4 — cả 4 đều nằm trong 10 nốt của trống (facts/dkurd.md mục 1). Không có nốt lạ.
2. **Quãng tám**: mọi lần nhắc tên nốt đều kèm số quãng tám (A3, D4, E4, D3). Grep toàn chương không thấy trường hợp "nốt A/D/E" viết trống trơn không kèm số.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào — mục này không áp dụng.
4. **Quãng**: chương không phát biểu số nửa cung/tên quãng cụ thể nào (chỉ mô tả vị trí zigzag trái/phải bằng lời), nên không có gì để đối chiếu bảng quãng mục 5. Mô tả vị trí A3 (①, phải), D4 (④, trái), E4 (⑤, phải) khớp đúng sơ đồ và luật zigzag ở facts/dkurd.md mục 3.
5. **Sơ đồ ASCII**: đã `diff` trực tiếp khối sơ đồ trong chapters/ch05.md (dòng 17–29) với khối chuẩn trong facts/dkurd.md (dòng 29–41) — khớp từng ký tự, không lệch.
6. **Lưới tab chạy được**: đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch05.md --kiem`, kết quả:
   ```
   ĐẠT tab/sach_ch05_bai1.json  (0 nốt, 8 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch05_bai2.json  (8 nốt, 8 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch05_bai3.json  (1 nốt, 2 ding, 1 ô, 4/4)
   ```
   Không có lỗi. Đối chiếu thêm bằng mắt: thứ tự nốt trong Bài tập 2 (A3 → D4 → E4 → D4, lặp 2 ô) khớp đúng với mô tả văn xuôi "A3 – D4 – E4 – D4 ... hai lần liên tiếp". Hàng Tay ở Bài tập 2 gán A3/E4 (lẻ) = P (phải), D4 (chẵn) = T (trái) — khớp đúng luật zigzag lẻ-phải/chẵn-trái ở facts/dkurd.md mục 3. Bài tập 3 (Ding – D4 – tắt tiếng – Ding giữ) khớp mô tả văn xuôi và ký hiệu `✕`/`▬` dùng đúng theo facts/tab-notation.md mục 3.
7. **Ví dụ bài hát**: chương không khẳng định bài hát cụ thể nào ở tông nào — không có gì cần xác minh.

## KẾT LUẬN: SẠCH
