# Fact check — ch03

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Không có ví dụ bài hát nào được nêu trong chương này — không áp dụng mục 7.

## Chi tiết kiểm tra
1. **Nốt tồn tại**: chương chỉ dùng D3 (Ding) và D4 — cả hai đều có trong `facts/dkurd.md` mục 1. Đạt.
2. **Quãng tám**: mọi lần nhắc đến nốt đều ghi kèm số quãng tám (D3, D4). Đạt.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào — không áp dụng.
4. **Quãng**: chương chỉ phát biểu về "quãng tám" giữa D3–D4 (cùng tên nốt, khác độ cao) — đúng định nghĩa quãng tám, khớp với dòng "D4 | quãng tám của Ding" trong `facts/dkurd.md` mục 1. Không có phát biểu quãng nào khác cần đối chiếu bảng mục 5.
5. **Sơ đồ ASCII**: đã diff từng ký tự khối sơ đồ trong ch03.md với khối trong `facts/dkurd.md` mục 2 — khớp tuyệt đối (identical string).
6. **Lưới tab chạy được**: đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch03.md --kiem`:
   ```
   ĐẠT tab/sach_ch03_bai1.json  (1 nốt, 2 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch03_bai2.json  (2 nốt, 3 ding, 1 ô, 4/4)
   ```
   Không có lỗi. Đối chiếu thêm bằng mắt giữa mô tả văn bản và lưới:
   - Bài tập 1: Ding (cột 1) → D4 (cột 5) → Ding (cột 9), đúng như mô tả "Ding – D4 – Ding, mỗi tiếng một nhịp".
   - Bài tập 2: Ding x2 (cột 1, 3) → D4 x2 (cột 5, 7) → Ding giữ dài từ cột 9 tới hết (▬ tới cột 16), đúng như mô tả "Ding hai tiếng, D4 hai tiếng, Ding ngân dài".
7. **Ví dụ bài hát**: chương không nêu bài hát cụ thể nào — không có gì để xác minh.

## KẾT LUẬN: SẠCH
