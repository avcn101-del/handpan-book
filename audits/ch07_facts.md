# Fact check — ch07

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát cụ thể nào để đối chiếu tông)

## Chi tiết đối chiếu

1. **Nốt tồn tại**: D3, A3, Bb3, C4, D4(không dùng), E4, F4, G4, A4, C5 — tất cả nốt xuất hiện trong chương (D3, E4, F4, G4, A4, Bb3, C4, A3, C5) đều nằm trong 10 nốt của facts/dkurd.md mục 1. Không có nốt lạ.
2. **Quãng tám**: mọi tên nốt đều kèm số quãng tám đúng (D3, E4, F4, G4, A4, Bb3, C4, A3, C5) — khớp facts/dkurd.md mục 1 và mục 4. Không có lỗi kiểu Bb4/D5.
3. **Cấu tạo hợp âm**: chương không nhắc hợp âm nào — mục này không áp dụng.
4. **Quãng**: đối chiếu bảng quãng mục 5 facts/dkurd.md —
   - E4 cách D3 2 nửa cung, quãng 2 trưởng ✓
   - F4 cách D3 3 nửa cung, quãng 3 thứ ✓
   - G4 cách D3 5 nửa cung, quãng 4 đúng ✓
   - A4 cách D3 7 nửa cung, quãng 5 đúng ✓
   - Bb3 cách D3 8 nửa cung, quãng 6 thứ ✓
   - C4 cách D3 10 nửa cung, quãng 7 thứ ✓
   Tất cả khớp chính xác con số nửa cung và tên quãng trong facts. Câu "A3 và A4 ... cách nhau tới 12 nửa cung" (một quãng tám) đúng theo tính toán MIDI (57→69 = 12).
5. **Sơ đồ ASCII**: đã `diff` nguyên khối dòng 17-30 của chapters/ch07.md với dòng 29-42 của facts/dkurd.md — khớp từng ký tự, không lệch.
6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch07.md --kiem` → cả 2 bài đều "ĐẠT" (sach_ch07_bai1, sach_ch07_bai2), không có lỗi.
7. **Ví dụ bài hát**: chương không khẳng định bài hát cụ thể nào ở tông nào — không cần xác minh.

## KẾT LUẬN: SẠCH
