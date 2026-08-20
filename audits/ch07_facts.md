# Fact check — ch07

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Chương không nêu ví dụ bài hát cụ thể nào ở tông nào, nên mục 7 không áp dụng.

## Chi tiết đối chiếu
1. **Nốt tồn tại** — mọi tên nốt xuất hiện (D3, E4, F4, G4, A4, Bb3, C4, A3, C5) đều nằm trong 10 nốt của trống (facts/dkurd.md mục 1). Đạt.
2. **Quãng tám** — mọi nốt đều ghi kèm số quãng tám đúng với trống (không có Bb4, D5, v.v.). Đạt.
3. **Cấu tạo hợp âm** — chương không gọi tên hợp âm nào (chỉ nói về quãng hai-nốt đơn lẻ), nên không có gì để đối chiếu với bảng hợp âm mục 6.
4. **Quãng** — đối chiếu bảng quãng mục 5 facts/dkurd.md:
   - D→E4 = 2 nửa cung, quãng 2 trưởng — khớp.
   - D→F4 = 3 nửa cung, quãng 3 thứ — khớp.
   - D→G4 = 5 nửa cung, quãng 4 đúng — khớp.
   - D→A4 = 7 nửa cung, quãng 5 đúng — khớp.
   - D→Bb3 = 8 nửa cung, quãng 6 thứ — khớp.
   - D→C4 = 10 nửa cung, quãng 7 thứ — khớp.
   - Claim "E4 và F4 nghe dính hơn hẳn" (ẩn trong Bài tập 2, chưa gọi tên) tương ứng đúng với cặp nửa cung E4→F4 nêu ở facts mục 5 (một trong hai cặp nửa cung của D Kurd). Không có phát biểu sai.
   - Bảng cheat sheet Lớp 3 (số nửa cung, tên quãng) khớp 100% với bảng mục 5.
5. **Sơ đồ ASCII** — so khớp từng ký tự giữa dòng 16–27 của chapters/ch07.md và dòng 30–41 của facts/dkurd.md bằng `diff`: khớp tuyệt đối, không lệch ký tự nào.
6. **Lưới tab chạy được** — chạy `python3 bin/sach_tab_sang_json.py chapters/ch07.md --kiem`:
   ```
   ĐẠT tab/sach_ch07_bai1.json  (2 nốt, 2 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch07_bai2.json  (4 nốt, 1 ding, 2 ô, 4/4)
   ```
   Không có lỗi.
7. **Ví dụ bài hát** — chương không nêu bài hát cụ thể nào, không có gì cần xác minh.

## KẾT LUẬN: SẠCH (0 blocker, 0 major)
