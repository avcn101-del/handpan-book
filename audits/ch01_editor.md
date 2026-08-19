# Editor — ch01

Ghi chú quy trình: ch01 là chương đầu tiên, không có 2 chương liền trước để đọc — bỏ qua bước đó theo đúng lý do (không tồn tại file).

## BLOCKER
(không có)

## MAJOR
- Lời văn dẫn dắt cho hàng "Tay" trong bài tập 1 (Lớp 3) gọi thẳng tên khái niệm bị cấm: *"Ký hiệu 'P' ở hàng Tay chỉ là mặc định kỹ thuật của lưới bài tập — **không có nghĩa là bạn phải dùng tay phải**. Ở chương này, gõ tay nào cũng được, không cần để ý hàng này."* (dòng ngay trước khối `sach_ch01_bai1`). Spec `ch01` liệt "tay phải/trái (P/T)" vào mục Cấm đụng và ghi rõ "cấm NHẮC/GIẢNG các khái niệm này trong lời văn". Ngoại lệ bắt buộc trong spec chỉ áp dụng cho sơ đồ mặt trống ASCII, không mở rộng cho hàng Tay của lưới tab. Câu này gọi tên "tay phải" trực tiếp, vượt quá phạm vi ngoại lệ được cấp.
  → **Sửa cụ thể**: bỏ cụm "không có nghĩa là bạn phải dùng tay phải", chỉ giữ phần dặn bỏ qua hàng, ví dụ: *"Ký hiệu 'P' ở hàng Tay là mặc định của lưới bài tập, chương nào trong sách cũng có — hôm nay bạn chưa cần để ý, gõ tay nào tuỳ thích."* Câu trước đó ("Hàng 'Tay' bên dưới cũng bỏ qua luôn — đó là chi tiết kỹ thuật của lưới bài tập, không phải điều bạn cần lo hôm nay.") đã đủ làm nhiệm vụ dẫn dắt, không cần thêm câu giải thích chữ P là gì.

## MINOR
- Tiêu đề chương lệch số: spec ghi "Chương 01", bản thảo ghi "Chương 1" (thiếu số 0 đứng đầu). Không ảnh hưởng nội dung nhưng nên đồng bộ format số chương xuyên sách → đổi thành "# Chương 01 — Tiếng đầu tiên" nếu các chương khác đều dùng 2 chữ số.
- Tiêu đề mỗi ô trong Bài tập 1 chỉ ghi "Ô N · tự do", thiếu phần `<tên phách>` như mẫu chuẩn trong `facts/tab-notation.md` ("Ô 3 · 4/4 · móc đơn"). Hợp lý vì bài tập này đúng là nhịp tự do (theo spec), nhưng để nhất quán định dạng toàn sách có thể ghi rõ hơn, ví dụ "Ô 1 · 4/4 · tự do (không đếm phách)".

## Chuyển fact-checker
- Không có nghi vấn nhạc lý. Đề nghị fact-checker xác nhận riêng: cách đánh số hàng "móc đơn" trong Bài tập 2 (chuỗi `1 . 2 . 3 . 4 . 5 . 6 . 7 . 8 .` cho ô nhịp 4/4, 16 cột) có khớp đúng quy tắc sinh cột của `bin/sach_tab_sang_json.py` như mô tả ở `facts/tab-notation.md` mục 5 không — đây là chi tiết kỹ thuật ngoài phạm vi soát của editor.

## Nhận xét thêm (không chặn, chỉ ghi nhận)
- Đúng spec: mục tiêu học ("gõ được Ding, đặt tay đúng chỗ, nghe trọn tiếng ngân") được phủ đủ cả 3 lớp, không lấn sang nội dung chương 2 (kỹ thuật gõ) hay chương 3 (Ding là nhà) — chỉ "gieo mầm" đúng như mục Móc nối yêu cầu.
- Nợ khái niệm: rà toàn bộ lời văn, không thấy dùng "tone field", "zigzag", "hợp âm", "quãng", "thang âm", "ghost note" — sạch, trừ điểm MAJOR về "tay phải" nêu trên. "Chủ âm" dùng đúng như mục Được phép dùng (chỉ gọi tên, không giảng lý thuyết).
- Đủ 3 lớp: cả 3 lớp đều có. Lớp 1 đếm tay được khoảng 1.250 từ — nằm trong khoảng 1200–1500 từ yêu cầu, không phải MAJOR.
- Sơ đồ mặt trống copy đúng nguyên xi từ `facts/dkurd.md` (đối chiếu từng ký tự, khớp 100%), có câu dẫn dắt ngay sau sơ đồ yêu cầu bỏ qua các nhãn chưa cần dùng — đúng điều kiện ngoại lệ bắt buộc của spec.
- Hình dung bằng chữ: đạt — mô tả Ding là "cái lõm tròn nằm ngay giữa", "hơi lõm xuống so với phần còn lại", và đặc biệt câu "khi bạn ngồi ôm trống trong lòng, tâm đó cũng chính là điểm gần bạn nhất" tạo được cảm giác không gian thật trên mặt trống, không chỉ liệt kê tên nốt.
- Kiểu piano/guitar: không có — chương chỉ nói về một điểm duy nhất (Ding ở tâm), không mô tả gì có thể hiểu nhầm là bàn phím thẳng hàng.
- Giọng văn: đúng tinh thần "cà phê với bạn thân", không lên lớp, ẩn dụ giọt nước/tiếng chuông nhẹ nhàng, không thô. Đoạn trấn an người mới ("Cây trống này sinh ra để bạn được thư giãn, không phải để thi") khớp đúng mục 4 CLAUDE.md.
- Hack Lớp 3 dùng được ngay, không đòi hỏi nhớ lý thuyết, khớp with hack trong spec, có thêm một câu chốt hợp lý ("Làm vậy vài lần là đủ để đầu óc chậm lại") không vi phạm gì.

## KẾT LUẬN: SỬA (0 blocker, 1 major)
