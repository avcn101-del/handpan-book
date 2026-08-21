# Fact check — ch07

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Chương không nêu ví dụ bài hát nào ở tông cụ thể (mục 7 không áp dụng).

## Chi tiết đối chiếu

1. **Nốt tồn tại** — các nốt xuất hiện: D3, A3, C4, E4, F4, G4, A4. Tất cả đều nằm trong 10 nốt của trống (facts/dkurd.md mục 1). Không có nốt lạ.

2. **Quãng tám** — mọi tên nốt đều kèm số quãng tám đúng với bảng (D3, A3, C4, E4, F4, G4, A4 — không có A4 nào bị viết nhầm octave khác, không có Bb4/D5).

3. **Cấu tạo hợp âm** — chương không gọi tên hợp âm nào, mục này không áp dụng.

4. **Quãng** — kiểm bằng số MIDI trong facts/dkurd.md mục 1:
   - D3 (MIDI 50) → A3 (MIDI 57): 57-50 = 7 nửa cung. Chương ghi "7 nửa cung" — ĐÚNG, khớp cả bảng mục 5 (A: 7 nửa cung từ D) lẫn tính theo MIDI thực tế.
   - D3 (MIDI 50) → C4 (MIDI 60): 60-50 = 10 nửa cung. Chương ghi "10 nửa cung" — ĐÚNG, khớp bảng mục 5 (C: 10 nửa cung từ D).
   - "Cung = 2 nửa cung, khoảng cách phổ biến nhất giữa các nốt liền kề" — khớp facts mục 5 ("Mọi cặp liền kề còn lại cách 1 cung (2 nửa cung)" ngoại trừ hai cặp nửa cung đặc biệt).
   - Chuỗi bài tập 2 (D3-E4-F4-G4-A4) được thiết kế để tai phát hiện cặp "dính hơn" là E4→F4 — đúng là một trong hai cặp nửa cung đặc biệt của D Kurd theo facts mục 5 ("E4 → F4 cách 1 nửa cung"). Chương không gọi tên cặp này (đúng chủ đích, để dành cho chương 8) nên không có phát biểu sai.

5. **Sơ đồ ASCII** — đã diff từng ký tự dòng 17–30 của chương với dòng 29–42 của facts/dkurd.md bằng `diff`, không có sai khác.

6. **Lưới tab chạy được** — đã chạy:
   ```
   python3 bin/sach_tab_sang_json.py chapters/ch07.md --kiem
   ```
   Kết quả:
   ```
   ĐẠT tab/sach_ch07_bai1.json  (2 nốt, 2 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch07_bai2.json  (4 nốt, 1 ding, 2 ô, 4/4)
   ```
   Không có lỗi.

7. **Ví dụ bài hát** — chương không nêu tên bài hát/tông nào, không có gì cần xác minh.

## KẾT LUẬN: SẠCH (0 blocker, 0 major)
