# Editor — ch02 (v3)

## BLOCKER
(không có)

## MAJOR

- **Móc nối lộ số cụ thể "chín tone field" — lấn sang nội dung chương 4, vi phạm giới hạn của "Được phép dùng".**
  Spec ghi rõ: "tone field (khái niệm chung — 'hòn đảo âm' quanh Ding, **chưa cần tên hay số cụ thể**)". Câu cuối Móc nối lại viết: *"...rồi tới chương 4 khi bạn nhìn thấy bản đồ đầy đủ của cả **chín** tone field quanh Ding."* Đây chính là thông tin spec chương 4 mới được hé ("bản đồ đầy đủ"), ch02 không được phép nêu con số 9 trước.
  → Sửa: bỏ chữ "chín", ví dụ đổi thành *"...rồi tới chương 4 khi bạn nhìn thấy bản đồ đầy đủ của tất cả các tone field quanh Ding."* Không nêu số lượng.

## MINOR

- **Lớp 1 chạm sát trần 1500 từ.** Đếm tay theo đoạn văn ra khoảng **~1490–1500 từ** (11 đoạn, đoạn dài nhất là đoạn ghost note ~195 từ và đoạn tắt tiếng ~180 từ). Rất sát giới hạn trên của CLAUDE.md (1200–1500). Đề nghị chạy lại đếm bằng công cụ chính xác (script/wc) trước khi chốt; nếu vượt 1500 thì cắt trước ở đoạn 3 (giải thích vật lý tâm/mép lõm) và đoạn 10 (đoạn "nền móng/căn phòng"), vì hai đoạn này giải thích hơi dài dòng so với phần còn lại.

- **Đoạn 3 (giải thích vật lý "đúng tâm thì cả vùng rung đều nhau...") hơi ngả sang giọng giảng giải, khác tông "cà phê với bạn thân" của các đoạn khác.** Không sai fact (chuyển fact-checker xem mục dưới), nhưng câu "Đây không phải chuyện cảm tính, mà là vật lý của tấm kim loại" hơi giáo khoa. → Sửa: có thể giữ ý nhưng bỏ khung "giải thích khoa học", ví dụ: *"Gõ lệch tâm một chút thì tiếng đục hơn, ngân cụt hơn — cứ tin tai mình, không cần biết vì sao."* Vừa ngắn vừa đúng giọng sách hơn, đồng thời giúp giảm từ ở Lớp 1 (xem mục trên).

- **Bài tập 2 lệch nhẹ so với chữ trong spec.** Spec ghi "Gõ Ding **mạnh** rồi chêm một ghost note thật nhẹ ngay sau". Chương lại định nghĩa `●` là "tiếng gõ **bình thường**" và Lớp 1 cũng viết "gõ Ding một tiếng bình thường (không cần mạnh, chỉ cần rõ)". Về sư phạm thì hợp lý (không muốn mâu thuẫn với bài học "gõ nhẹ" ở đoạn lực gõ), nhưng nếu người soát spec đối chiếu chữ nghĩa sẽ thấy lệch. → Nếu chủ đích là "bình thường" thay vì "mạnh" thì nên note lại trong changelog hoặc xin cập nhật spec, không chỉ âm thầm đổi chữ.

- **Tiêu đề "Ô 1 · 4/4 · đen (đầu ngón)"** thêm phần mô tả trong ngoặc "(đầu ngón)" ngoài khuôn `Ô N · <nhịp> · <tên phách>` mà `facts/tab-notation.md` mô tả. Không phá script (script chỉ đọc dòng mở khối ` ```tab id=... ` ), nhưng nếu muốn đúng khuôn 100% thì nên tách phần "(đầu ngón)" ra thành một câu dẫn riêng thay vì nhét vào tiêu đề ô.

## Chuyển fact-checker

- Đoạn 3 Lớp 1 khẳng định: gõ đúng tâm lõm Ding thì "cả vùng rung đều nhau", lệch tâm thì "rung lệch, tiếng ra không tròn", tiếng "đục hơn, ngân cụt hơn". Đây là một khẳng định về vật lý/âm học của tone field — cần fact-checker xác nhận có đúng với cách một tone field lõm hoạt động không, hay diễn đạt hơi quá mức chắc chắn.
- Tên phách "đen" gán cho lưới Bài tập 1 (Ô 1, Ô 2 · 4/4 · đen) — bốn tiếng cách đều mỗi ô cách nhau 4 cột trên tổng 16 cột. Chương 1 dùng tên phách "móc đơn" cho một lưới có cấu trúc tương tự (4 tiếng cách đều, 4 cột/tiếng, ts=4/4, tổng 16 cột — xem Bài tập 2 chương 1). Nhờ fact-checker đối chiếu xem "đen" ở ch02 và "móc đơn" ở ch01 có nhất quán về cách đặt tên phách theo khoảng cách cột hay không, tránh hai chương gọi cùng một kiểu nhịp bằng hai tên khác nhau.

## KẾT LUẬN: SỬA (0 blocker, 1 major)
