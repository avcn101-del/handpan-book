# Fact check — ch04

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không áp dụng — chương không nêu ví dụ bài hát nào, không cần xác minh tông)

## Ghi chú soát chi tiết
1. **Nốt tồn tại**: mọi tên nốt xuất hiện (Ding D3, A3, Bb3, C4, D4, E4, F4, G4, A4, C5) đều nằm trong 10 nốt hợp lệ của facts/dkurd.md mục 1. Không có nốt lạ.
2. **Quãng tám**: mọi nốt đều ghi kèm số quãng tám đúng (A3, Bb3, C4, D4, E4, F4, G4, A4, C5, D3) — khớp bảng mục 1 và mục 4 facts/dkurd.md. Không phát hiện lỗi kiểu Bb4/D5.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào (Am, C, Bb, Dm, F, Gm, Edim) — không có gì để đối chiếu.
4. **Quãng (interval)**: chương không phát biểu tuyên bố nào về khoảng cách nốt kiểu "quãng 2/3/nửa cung". Từ "quãng tám" (= octave, đúng nghĩa) và "quãng giữa trống" (= khu vực giữa mặt trống, không phải thuật ngữ nhạc lý quãng) đều dùng đúng ngữ cảnh, không phải phát biểu sai về quãng nhạc lý.
5. **Sơ đồ ASCII**: đối chiếu bằng script trích xuất khối code — cả hai sơ đồ (bản đồ tròn đầy đủ dòng 12–24, và bản đồ tách trái/phải dòng 33–40) khớp **từng ký tự** với facts/dkurd.md mục 2 và mục 3.
6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch04.md --kiem` → kết quả:
   - `ĐẠT tab/sach_ch04_bai1.json  (9 nốt, 0 ding, 3 ô, 4/4)`
   - `ĐẠT tab/sach_ch04_bai2.json  (9 nốt, 1 ding, 3 ô, 4/4)`
   Không có lỗi. Kiểm thêm bằng mắt: mapping số ô ↔ tên nốt trong mọi khối tab (4=D4, 3=C4, 2=Bb3, 1=A3, 8=A4, 7=G4, 6=F4, 5=E4, 9=C5, D=Ding D3) khớp bảng mục 1 tab-notation.md; hàng Tay (P/T) khớp đúng quy tắc "lẻ phải, chẵn trái" ở mọi cột có gõ nốt (C5 ở đỉnh và Ding dùng tay linh hoạt, đúng như cheat sheet ghi "tuỳ thuận" / "—"); thứ tự hàng trong mỗi khối xếp giảm dần từ số cao xuống thấp rồi Ding rồi Tay, đúng mục 2 tab-notation.md.
7. **Ví dụ bài hát**: chương không nêu bất kỳ bài hát cụ thể nào ở tông nào — không có gì cần xác minh.

## KẾT LUẬN: SẠCH
