# Fact check — ch06

## Kiểm tra đã thực hiện
1. **Nốt tồn tại**: mọi tên nốt xuất hiện (D3, D4, A3, A4, C4, C5, Bb3, E4, F4, G4, cùng 7 tên gốc bare D/E/F/G/A/Bb/C dùng ở mức khái quát thang âm) đều nằm trong 10 nốt của trống theo `facts/dkurd.md` mục 1 và mục 4. Không có B bécar, không có nốt thăng/giáng nào khác, không có nốt ngoài tầm A3–C5.
2. **Quãng tám**: mọi lần nêu nốt cụ thể (D3, D4, A3, A4, C4, C5, Bb3, E4, F4, G4) đều kèm số quãng tám đúng, khớp bảng mục 1. Các chỗ dùng tên nốt trần (D, E, F, G, A, Bb, C) đều ở ngữ cảnh liệt kê 7 tên gốc của thang âm hoặc "bậc" (khái niệm ở cấp thang âm, không chỉ nốt cụ thể) — đúng cách dùng mà bản thân `facts/dkurd.md` mục 4–5 cũng dùng (bảng liệt kê tên nốt gốc không kèm quãng tám). Không vi phạm luật "cấm viết nốt A trống trơn" vì luật này áp cho nốt cụ thể, không áp cho tên gọi 7 bậc thang âm.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào (không có Am/C/Bb/Dm...) — mục này không áp dụng, không có gì để đối chiếu.
4. **Quãng**: chương không đưa ra con số nửa cung/tên quãng cụ thể nào (không nói "quãng 3 thứ", "quãng 2 trưởng"...). Câu foreshadowing cuối chương ("gõ A3 rồi Bb3 nghe căng hơn A3 rồi C4") chỉ định hướng cảm giác, không đưa số liệu sai — khớp tinh thần mục 5 (A3→Bb3 là cặp nửa cung "chữ ký" của D Kurd). Không có claim sai để chặn.
5. **Sơ đồ ASCII**: đối chiếu bằng diff ký tự-với-ký tự (Python) giữa khối ASCII trong `chapters/ch06.md` (dòng 13–26) và khối chuẩn trong `facts/dkurd.md` mục 2 — **khớp tuyệt đối, EQUAL: True**.
6. **Lưới tab chạy được**: đã chạy
   ```
   python3 bin/sach_tab_sang_json.py chapters/ch06.md --kiem
   ```
   Kết quả:
   ```
   ĐẠT tab/sach_ch06_bai1.json  (8 nốt, 1 ding, 3 ô, 4/4)
   ĐẠT tab/sach_ch06_bai2.json  (2 nốt, 1 ding, 1 ô, 4/4)
   ```
   Không có lỗi.
7. **Ví dụ bài hát**: chương không nêu tên bài hát cụ thể nào kèm tông — mục này không áp dụng.

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có mục nào cần xác minh — chương không trích dẫn bài hát ngoài hoặc số liệu cần nguồn ngoài)

## KẾT LUẬN: SẠCH
