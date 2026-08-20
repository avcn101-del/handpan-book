# Editor — ch05

## BLOCKER
(không có)

## MAJOR
- **Hack dùng ngay #1 tự mâu thuẫn, không dùng ngay được nếu không nhớ ngoại lệ.** Câu đầu nói chung chung: "Lặp mỗi pattern ít nhất 4 lần trước khi chuyển sang pattern kế tiếp — không cần nhớ lý thuyết gì, cứ đếm số lần lặp trong đầu là đủ". Ngay câu sau lại phải đính chính: "Riêng cách lặp này chỉ áp dụng cho Pattern 1 ... Pattern 2 luôn chơi đúng 2 lần, Pattern 3 chỉ chơi 1 lần". Vậy hack thật ra có 3 luật khác nhau cho 3 pattern (4 lần / 2 lần / 1 lần) — người đọc phải nhớ hết cả ba mới áp dụng đúng, trái với mục đích "không cần nhớ lý thuyết" của Lớp 3. Bảng cheat sheet ngay phía trên (cột "Cách chơi ngắn gọn") đã ghi đúng số lần cho từng pattern rồi, nên hack #1 lặp lại thông tin đó theo kiểu gây hiểu lầm trước, sửa sai sau.
  → Sửa: tách rõ hack #1 chỉ nói về lúc **tự luyện riêng Pattern 1** (trước khi ghép bài), không dùng câu mở đầu tổng quát "lặp mỗi pattern". Ví dụ: *"Khi tự tập riêng Pattern 1 (cái nền), cứ lặp ít nhất 4 lần cho tay quen — không cần đếm nhịp phức tạp, chỉ cần đếm số vòng lặp. Lúc ghép thành bài, nhớ đúng bảng trên: Pattern 2 chơi 2 lần, Pattern 3 chơi 1 lần để kết."* Bỏ câu đính chính rời phía dưới, gộp thẳng vào hack.

## MINOR
- Bảng Lớp 3, hàng "3 — Kết", cột "Cách chơi ngắn gọn" viết "Gõ D4 rồi tắt tiếng ngay, quay về Ding và để ngân dài tới hết" — bỏ sót bước gõ Ding đầu tiên (cột "Nốt dùng" bên cạnh có ghi nhưng cột mô tả cách chơi thì không), dễ khiến người đọc tưởng pattern 3 bắt đầu bằng D4. → Sửa thành: "Gõ Ding, rồi D4, tắt tiếng ngay, quay về Ding và để ngân dài tới hết."
- Lớp 1, đoạn Pattern 1: "đếm thầm trong đầu bốn nhịp một" hơi tối nghĩa. → Sửa rõ hơn: "đếm thầm trong đầu 1-2-3-4".

## Chuyển fact-checker
- Tiêu đề ô nhạc dùng "**Ô 1 · 4/4 · đen**" cho lưới 16 cột (ts=4/4). Mẫu chuẩn trong `facts/tab-notation.md` dùng "móc đơn" cho lưới 6/8 (12 cột, chia theo nốt móc đơn). Với 4/4 chia 16 cột (chia theo nốt móc kép/16th), tên phách "đen" (nốt đen = 1 phách, không phải đơn vị chia cột) có vẻ không khớp quy ước. Cần xác nhận tên phách đúng cho lưới 4/4-16 cột là gì trước khi chuẩn hoá toàn sách.
- Gán tay P/T cụ thể trong Bài tập 2 (A3=P, D4=T, E4=P, D4=T) và Bài tập 3 (D4=T tại cột tắt tiếng, Ding luôn P) — nhờ đối chiếu `facts/dkurd.md` để xác nhận đúng quy tắc zigzag "lẻ phải, chẵn trái" áp dụng nhất quán, và Ding có mặc định luôn là tay phải hay tuỳ ngữ cảnh.

## KẾT LUẬN: SỬA (0 blocker, 1 major)
