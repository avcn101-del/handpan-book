# Fact check — ch07

## BLOCKER

- [dòng 13, Lớp 1] "gõ D3 (Ding) rồi gõ E4 ... Đây là quãng 2 trưởng, chỉ cách nhau 2 nửa cung ... Nghe kỹ, hai nốt này gần như 'líu' vào nhau" và "rồi gõ D3 lần nữa, tiếp theo là F4. Đây là quãng 3 thứ, cách nhau 3 nửa cung ... cặp D3–F4 có một khoảng thở rộng hơn hẳn cặp D3–E4, dù chỉ hơn nhau đúng một nửa cung."
  → **Sai số nửa cung thực tế.** Tính từ MIDI gốc (facts/dkurd.md mục 1): D3=50, E4=64, F4=65. D3→E4 = **14 nửa cung** (không phải 2), D3→F4 = **15 nửa cung** (không phải 3). Đây là quãng ghép (compound interval — hơn một quãng tám), không phải quãng đơn "quãng 2 trưởng"/"quãng 3 thứ" như văn bản mô tả. Lý do: nốt E và F trên trống này CHỈ tồn tại ở quãng tám 4 (E4, F4), không có E3/F3 — bảng "số nửa cung từ D" ở facts/dkurd.md mục 5 (E=2, F=3...) là bảng bậc thang âm trừu tượng (không kèm quãng tám cụ thể), KHÔNG phải khoảng cách thật giữa Ding (D3) và các nốt E4/F4 thật trên trống. facts/dkurd.md mục 4 đã cảnh báo đúng lỗi này: "Vì thang không đủ hai quãng tám, phải kiểm theo 9 nốt tuyệt đối, không kiểm theo bậc." Chương đã áp bảng bậc trừu tượng thẳng vào cặp nốt cụ thể D3–E4/D3–F4, dẫn tới mô tả cảm giác nghe ("líu vào nhau", "một bước chân rất ngắn") hoàn toàn sai với thực tế (quãng 9 và quãng 10 ghép nghe rất "mở", không "dính").
  → Cần sửa: hoặc đổi ví dụ sang cặp nốt thật sự cách 2/3 nửa cung (không có cặp liền kề nào cách đúng 3 nửa cung trên trống — theo mục 5, chỉ có 1 nửa cung hoặc 1 cung giữa các cặp liền kề), hoặc nói rõ đây là quãng ghép và tính lại đúng số nửa cung thật (14, 15) thay vì con số bậc trừu tượng (2, 3).
  (căn cứ: facts/dkurd.md mục 1 bảng MIDI, mục 4 cảnh báo bậc vs nốt tuyệt đối, mục 5 bảng quãng)

- [dòng 36, Lớp 1] "gõ liên tiếp D3–E4–F4–G4–A4 ... Đây là năm nốt đầu tiên tính từ Ding đi lên, theo đúng thứ tự bậc 1-2-3-4-5"
  → **Sai về thứ tự cao độ thật.** Theo MIDI (mục 1): D3=50, A3=57, Bb3=58, C4=60, D4=62, E4=64... Năm nốt có cao độ THẤP NHẤT tính từ Ding đi lên thực ra là D3–A3–Bb3–C4–D4 (50→57→58→60→62), không phải D3–E4–F4–G4–A4. Chuỗi D3–E4–F4–G4–A4 nhảy thẳng từ 50 lên 64 (bỏ qua 4 nốt A3/Bb3/C4/D4 nằm giữa về cao độ), không phải "năm nốt đầu tiên đi lên" theo nghĩa cao độ liên tục.
  → Sửa: bỏ khẳng định "năm nốt đầu tiên tính từ Ding đi lên" hoặc làm rõ đây là 5 nốt đầu theo TÊN BẬC (D-E-F-G-A, chưa tính quãng tám), không phải 5 nốt liền kề gần Ding nhất về cao độ thật.
  (căn cứ: facts/dkurd.md mục 1 bảng MIDI)

- [dòng 46, Lớp 2] "Từ Ding (D3): E4 cách 2 nửa cung, F4 cách 3, G4 cách 5, A4 cách 7, Bb3 cách 8, C4 cách 10."
  → Ba mục đầu sai vì đã gắn quãng tám cụ thể (E4, F4, G4, A4) vào con số bậc trừu tượng. Số nửa cung thật từ D3: E4=14, F4=15, G4=17, A4=19 (không phải 2, 3, 5, 7). Riêng A4=7 sai kép: 7 nửa cung đúng là khoảng cách D3→A3 (không phải A4); D3→A4 thật ra là 19 nửa cung. Bb3 (8) và C4 (10) thì đúng vì hai nốt này thật sự nằm trong quãng tám gần Ding.
  → Sửa: dùng đúng octave khớp con số, hoặc nêu rõ đây là số nửa cung theo bậc thang âm trừu tượng, không phải khoảng cách thật tới nốt có ghi quãng tám.
  (căn cứ: facts/dkurd.md mục 1, mục 4)

- [dòng 52–59, Lớp 3 — bảng cheat sheet] Bảng liệt "E4 | 2 | quãng 2 trưởng", "F4 | 3 | quãng 3 thứ", "G4 | 5 | quãng 4 đúng", "A4 | 7 | quãng 5 đúng" — cùng lỗi như trên, gắn octave cụ thể vào số nửa cung sai. Số đúng: E4=14, F4=15, G4=17, A4=19 tính từ D3; còn 7 nửa cung là của A3 chứ không phải A4.
  → Sửa lại bảng cho khớp octave đã ghi, hoặc đổi tên cột nốt về nốt không ghi octave kèm chú thích rõ đây là bậc trừu tượng.
  (căn cứ: facts/dkurd.md mục 1, mục 4, mục 5)

- [dòng 71, Lớp 3 — mô tả Bài tập 1] "Ô 1 gõ D3 rồi E4 (quãng 2 trưởng, 2 nửa cung) ... Ô 2 gõ D3 rồi F4 (quãng 3 thứ, 3 nửa cung)"
  → Lặp lại lỗi ở dòng 13. Số nửa cung thật D3→E4 = 14, D3→F4 = 15.
  (căn cứ: facts/dkurd.md mục 1)

## MAJOR
(không có mục MAJOR riêng — các lỗi trên đã đủ nghiêm trọng để xếp BLOCKER vì sai sự thật nhạc lý cốt lõi của bài học)

## MINOR
(không phát hiện)

## KHÔNG XÁC MINH ĐƯỢC
- Không có.

## KẾT LUẬN: CÓ LỖI (5 blocker, 0 major)

Ghi chú thêm cho người sửa: mục "Nốt tồn tại", "Quãng tám", "Sơ đồ ASCII", "Lưới tab chạy được" đều SẠCH — script `python3 bin/sach_tab_sang_json.py chapters/ch07.md --kiem` trả về `ĐẠT` cho cả `sach_ch07_bai1.json` và `sach_ch07_bai2.json`, và khối ASCII sơ đồ ở dòng 17–29 khớp 100% từng ký tự với facts/dkurd.md mục 2 (đã `diff` xác nhận). Vấn đề duy nhất nhưng nghiêm trọng là toàn bộ ví dụ "quãng 2 trưởng D3–E4" và "quãng 3 thứ D3–F4" xuyên suốt cả 3 lớp đều dùng nhầm bảng bậc trừu tượng (facts mục 5, không ghi octave) như thể là khoảng cách thật giữa các nốt CÓ ghi octave cụ thể trên trống — đúng thứ mà facts/dkurd.md mục 4 đã cảnh báo trước. Cần người viết (chapter-writer) xử lý lại phần chọn ví dụ minh hoạ quãng nhỏ, vì trên trống D Kurd này không có cặp nốt nào thật sự cách Ding 2 hoặc 3 nửa cung (trừ khi tính bằng octave khác đúng cách).
