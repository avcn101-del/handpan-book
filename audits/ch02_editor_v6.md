# Editor — ch02

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
- Bài tập 2 (dòng 76–83) thiếu dòng tiêu đề "**Ô 1 · 4/4 · <tên phách>**" ngay trước khối ```tab```, trong khi Bài tập 1 và Bài tập 3 đều có (vd "**Ô 1 · 4/4 · đen (đầu ngón)**", "**Ô 1 · 4/4 · tự do**"). Vi phạm luật "Ghi tiêu đề mỗi ô" trong `facts/tab-notation.md` mục 4. → Thêm dòng "**Ô 1 · 4/4 · đen**" (hoặc tên phách phù hợp) ngay trên khối ```tab id=sach_ch02_bai2...```.
- Thuật ngữ **ghost note** xuất hiện lần đầu ở Lớp 1 (dòng 19: "Trò đầu tiên gọi là **ghost note**.") không có chú giải tiếng Việt ngay tại chỗ — phải đọc hết cả đoạn ẩn dụ mới suy ra nghĩa. Lớp 2 (dòng 29) lại làm đúng chuẩn: "Ghost note (tiếng Anh nghĩa đen là 'nốt ma'...)". → Sửa câu mở đầu Lớp 1 thành dạng có ngoặc đơn ngay: "Trò đầu tiên gọi là **ghost note** (một cú gõ cực nhẹ, gần như chỉ nghe hơi)." rồi mới vào ẩn dụ, để đúng luật CLAUDE.md mục 0 (thuật ngữ Anh lần đầu phải kèm giải thích Việt ngay tại chỗ).
- Bài tập 1, 2, 3 đều là mẫu gõ đều nhịp (4 lần cách đều) nhưng không có hàng thước đo nhịp kiểu "móc đơn"/"đen" như ch01 Bài tập 2 đã dùng để giúp người mới đếm cột. Không bắt buộc theo `tab-notation.md`, nhưng thiếu nó khiến người đọc khó ước lượng khoảng cách các cột hơn ch01. → Cân nhắc thêm một hàng thước đo (vd "đen | 1 . . . 2 . . . 3 . . . 4 . . .") phía trên hàng Ding ở Bài tập 1 và 2 để nhất quán với ch01.
- Câu "Kiểu gõ đầu tiên là bằng đầu ngón tay... Kiểu thứ hai là bằng mô ngón cái" ở đoạn 4 dùng cụm "hai kiểu tay khác nhau" ở đoạn 2 trước đó — cụm "kiểu tay" hơi dễ gây liên tưởng nhầm sang khái niệm tay phải/tay trái (P/T) vốn bị cấm đụng ở chương này, dù ngữ cảnh sau đó làm rõ ngay là kiểu chạm (đầu ngón/mô ngón cái). Không đến mức MAJOR vì đoạn kế tiếp giải toả nhầm lẫn ngay lập tức, nhưng nên đổi "hai kiểu tay" thành "hai kiểu chạm" ở đoạn 2 để tránh mọi khả năng hiểu lầm.

## Chuyển fact-checker
- Đoạn 3 (Lớp 1, dòng 9) khẳng định: gõ lệch khỏi tâm lõm Ding về phía mép thì "tiếng sẽ đục hơn, ngân cụt hơn". Đây là phát biểu vật lý/âm học về nhạc cụ, không có trong `facts/dkurd.md` — nhờ fact-checker xác nhận tính đúng đắn.
- Đoạn 4 (Lớp 1, dòng 11) khẳng định gõ bằng mô ngón cái cho "tiếng ra dày hơn, ấm hơn, ngân có vẻ no hơn" so với đầu ngón. Cũng là phát biểu kỹ thuật/âm học ngoài phạm vi facts hiện có — nhờ xác nhận.
- Bài tập 3: xác nhận lại cách quy đổi "để ngân 1 nhịp rồi tắt" (spec) sang lưới 4 cột = 1 phách trong ts=4/4 (gõ 1 cột + giữ 2 cột + tắt 1 cột = 4 cột) có đúng ý đồ sư phạm và đúng số học của `tab-notation.md` không (không phải việc của editor phán đúng/sai nhạc lý, nhưng nhờ rà một lượt).

## KẾT LUẬN: ĐẠT (0 blocker, 0 major)
