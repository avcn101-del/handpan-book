# Editor — ch07

## BLOCKER
(không có)

## MAJOR
- **Lớp 1 khả năng dưới ngưỡng 1200 từ.** Đếm tay theo câu (9 đoạn văn, không tính sơ đồ ASCII và tiêu đề) ra khoảng **~1174 từ**, dưới mốc tối thiểu 1200. Sai số đếm tay có thể ±5-10%, nên có thể đang nằm sát biên chứ chưa chắc chắn dưới hẳn — nhưng vì đây là ranh giới cứng theo CLAUDE.md, cần đếm lại chính xác (`wc -w` trên riêng phần Lớp 1, không tính khối ```` ``` ````/tiêu đề/sơ đồ). Nếu xác nhận dưới 1200 → cách sửa cụ thể: bổ sung ~100-150 từ vào một trong hai chỗ đang mỏng nhất — đoạn giới thiệu sơ đồ mặt trống (đoạn "Nhìn trên sơ đồ mặt trống…", hiện chỉ ~72 từ, có thể mô tả thêm một cặp nốt liền kề khác ví dụ D3–D4 hoặc A3–A4 để đối chiếu cảm giác quãng rộng hơn) hoặc đoạn kết ("Bạn để ý là chương này…", hiện ~136 từ, có thể thêm 1-2 câu nối cảm giác "dính/mở" với việc tay sẽ dùng khi tập pattern ở các chương sau).

## MINOR
- Ẩn dụ cảm giác của **nửa cung** trong chương ("dính"/"mở") hơi lệch từ vựng so với `facts/glossary.md` (định nghĩa nửa cung ở đó dùng "cọ sát, hơi căng"). Không sai, chỉ là chọn từ khác — cân nhắc chêm một chữ "căng" ở đâu đó trong Lớp 1 để bắc cầu với glossary, không bắt buộc sửa.
- **Hack #1** ở Lớp 3 ("nhớ số nửa cung, số nhỏ là dính, số lớn là mở") về bản chất là tóm tắt lại đúng logic đã giảng ở Lớp 1, hơi mỏng so với Hack #2 (thực sự là một mẹo hành vi: hỏi tai trước, hỏi tên sau). Không đủ nặng để là MAJOR vì người đọc vẫn dùng được ngay không cần nhớ tên quãng, nhưng nếu muốn sắc hơn có thể đổi thành mẹo hành động cụ thể hơn, ví dụ: "Không nhớ nổi số nửa cung của từng nốt? Cứ nhớ đúng 2 cặp cực trị: D3–E4 (dính nhất) và D3–C4 (mở nhất) làm mốc so sánh, mọi cặp khác nằm ở đâu đó giữa hai mốc này."
- Bảng cheat sheet cột "Cảm giác" (rất dính / dính vừa / vừa mở / mở / mở hơn / rất mở) là thang 6 bậc khá dày, có nguy cơ người mới cố phân biệt "mở" và "mở hơn" bằng tai trong khi chênh lệch thực tế giữa hai bậc đó chỉ 1 nửa cung (Bb3=8 vs C4=10, thực ra chênh 2) — không sai nhưng hơi vụn, có thể gộp còn 4 bậc cho dễ cảm nhận. Không bắt buộc.

## Chuyển fact-checker
- Tên gọi quãng "trưởng/thứ/đúng" gắn với từng nốt (quãng 2 trưởng cho E4, quãng 3 thứ cho F4, quãng 4 đúng cho G4, quãng 5 đúng cho A4, quãng 6 thứ cho Bb3, quãng 7 thứ cho C4) được copy đúng số liệu từ `facts/dkurd.md` mục 5 — không phát hiện sai lệch số nửa cung. Nhờ fact-checker xác nhận lại tên gọi "trưởng/thứ/đúng" này đã đúng chuẩn nhạc lý quốc tế hay chưa (không phải việc của editor phán).

## KẾT LUẬN: SỬA (0 blocker, 1 major)
