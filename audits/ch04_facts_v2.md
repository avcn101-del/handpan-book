# Fact check — ch04

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Chương không nêu ví dụ bài hát cụ thể nào (không có tông/bài hát nào cần đối chiếu) — mục 7 không áp dụng.

## Chi tiết đối chiếu
1. **Nốt tồn tại**: mọi tên nốt xuất hiện (D3/Ding, A3, Bb3, C4, D4, E4, F4, G4, A4, C5) đều nằm trong 10 nốt hợp lệ ở `facts/dkurd.md` mục 1. Đạt.
2. **Quãng tám**: toàn bộ tên nốt trong văn bản, sơ đồ, bảng cheat sheet, và lưới tab đều ghi kèm đúng quãng tám khớp `facts/dkurd.md` mục 1 (không có Bb4, D5, hay octave sai nào). Đạt.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào (Am, C, Bb, Dm...), nên mục này không áp dụng.
4. **Quãng**: chương không phát biểu số nửa cung/tên quãng cụ thể nào (không nhắc "quãng 2", "nửa cung" v.v.) — chỉ mô tả zigzag trái/phải, khớp `facts/dkurd.md` mục 3. Đạt.
5. **Sơ đồ ASCII**: đã `diff` từng ký tự hai sơ đồ trong ch04.md (dòng 11–24 và dòng 32–40) với bản gốc `facts/dkurd.md` (dòng 29–42 và 52–60) — **giống hệt tuyệt đối**, không lệch ký tự nào.
6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch04.md --kiem`
   ```
   ĐẠT tab/sach_ch04_bai1.json  (9 nốt, 0 ding, 3 ô, 4/4)
   ĐẠT tab/sach_ch04_bai2.json  (9 nốt, 1 ding, 3 ô, 4/4)
   ```
   Không có lỗi.
   Ngoài ra kiểm tay bằng mắt việc gán số ô ↔ tên nốt trong từng khối tab (vd `1·A3`, `2·Bb3`... `9·C5`, `D·Ding`) khớp đúng bảng mục 1 của `facts/tab-notation.md`. Hàng `Tay` (P/T) khớp đúng quy tắc "lẻ = P (phải), chẵn = T (trái)" ở mọi cột có nốt lẻ/chẵn; C5 và Ding dùng tay tuỳ thuận đúng như văn bản đã giải thích (không có luật cứng cho hai trường hợp này theo `facts/dkurd.md` mục 3 và cheat sheet của chính chương).
7. **Ví dụ bài hát**: không có — không áp dụng.

## KẾT LUẬN: SẠCH
