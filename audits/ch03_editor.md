# Editor — ch03 (vòng soát 2)

## BLOCKER
(không có)

## MAJOR
- **Nhắc tên khái niệm bị cấm đụng: "nửa cung".** Spec ch03 mục Cấm đụng ghi rõ: "quãng tính bằng nửa cung... cấm NHẮC/GIẢNG các khái niệm này trong lời văn." Lớp 1, đoạn 3 (đoạn giải thích D4/quãng tám bằng ẩn dụ ống chuông gió) có câu: "Không cần nhớ số nửa cung, không cần lý thuyết cao siêu — cứ nhớ: quãng tám là hai nốt cùng tên...". Dù ý câu là trấn an ("không cần nhớ"), câu vẫn **gọi tên** "nửa cung" — đúng chữ bị cấm NHẮC, không chỉ cấm GIẢNG. Người đọc mới ở chương 3 chưa từng thấy khái niệm nửa cung, việc chương buông ra một thuật ngữ kỹ thuật rồi bảo "khỏi cần nhớ" vẫn gieo một khái niệm nợ vào đầu, không khác gì nhắc rồi né. → Sửa câu thành không gọi tên kỹ thuật, ví dụ: "Không cần nhớ con số kỹ thuật nào, không cần lý thuyết cao siêu — cứ nhớ: quãng tám là hai nốt cùng tên, một ở tầng thấp một ở tầng cao, gõ nốt nào tai cũng nhận ra chung một gốc."

## MINOR
- **Lớp 1 đang sát trần trên (~1459 từ theo đếm tay).** Nằm trong khoảng 1200–1500 quy định nên chưa phải MAJOR, nhưng biên độ đếm tay dao động vài chục từ có thể đẩy qua 1500. → Đếm lại bằng công cụ chính xác trước khi khoá bản; nếu vượt 1500, đoạn dư nhiều từ nhất là đoạn giải thích "nhịp" trong Bài tập 1 (đoạn 7, ẩn dụ nhịp bước chân) — có thể rút gọn khoảng 30–40 từ ở đó mà không mất ý.
- **Đoạn giải thích "nhịp là gì" (Lớp 1, đoạn Bài tập 1) hơi lấn phạm vi spec.** Spec ch03 chỉ liệt kê 2 khái niệm chương này giới thiệu là chủ âm và quãng tám; "nhịp" không nằm trong danh sách "Được phép dùng" lẫn "Khái niệm chương này giới thiệu", nhưng chương lại dựng hẳn một ẩn dụ riêng (bước chân trái–phải, đếm "một"–"hai") để định nghĩa nó, tốn khoảng 60–70 từ. Bản thân "nhịp 4/4" đã từng xuất hiện ở bài tập chương 1 mà không cần định nghĩa hình thức. Không sai nhạc lý, không thuộc mục Cấm đụng của ch03, nên không nâng MAJOR — nhưng đây là chỗ hợp lý nhất để cắt bớt nếu cần hạ tổng số từ Lớp 1 xuống dưới trần.
- **"tone field" không có trong mục "Được phép dùng" của spec ch03** (dù đã dạy ở chương 2 và không nằm trong mục Cấm đụng của ch03) — dùng ở đoạn 3 và đoạn 5 ("một tone field khác trên trống", "cái tone field lồi lên"). Nhiều khả năng đây là thiếu sót liệt kê của spec (khái niệm carry-over từ chương trước thường không được liệt kê lại), không phải lỗi thật của bản thảo. Không chặn, chỉ ghi chú để người viết spec cân nhắc bổ sung "tone field" vào "Được phép dùng" của các chương sau cho rõ ràng.

## Chuyển fact-checker
- Xác nhận tên phách "móc kép" (16 cột cho 4/4) có đúng thuật ngữ khi các tiếng gõ trong Bài tập 1 và Bài tập 2 chỉ rơi vào các cột cách nhau 4 ô (tức nhịp phách đơn/quarter, không phải nhịp 16) — lưới 16 cột là đúng quy ước G16 của `facts/tab-notation.md`, nhưng nhãn "móc kép" mô tả mật độ nốt thực tế hay chỉ mô tả độ phân giải lưới, cần người có thẩm quyền xác nhận cách dùng nhất quán với các chương khác.
- Xác nhận việc Bài tập 1 chỉ có 3 tiếng gõ (Ding cột 1, D4 cột 5, Ding cột 9) trong khi nhịp 4/4 có 4 phách — phách thứ 4 (cột 13–16) để trống hoàn toàn, không có `▬` giữ nốt Ding thứ hai. Có khớp đúng ý "mỗi nốt ngân trọn 1 nhịp" của spec bài tập 1 không, hay thiếu một chỉ dẫn giữ/tắt tiếng ở phách cuối.
- Xác nhận lại (đã đối chiếu bằng mắt, khớp) Bài tập 2: Ding tại cột 1 và 3, D4 tại cột 5 và 7, Ding giữ (▬) từ cột 9 tới 16 — đúng ý "Ding hai lần — D4 hai lần — Ding một lần dài (giữ)" của spec.

## KẾT LUẬN: SỬA (0 blocker, 1 major)

## Ghi chú so với vòng soát 1
Hai MAJOR của vòng 1 đã được xử lý:
- Lớp 1 nay đủ khoảng 1200–1500 từ (ước tính ~1459 từ, xem MINOR ở trên để double-check).
- Cả hai khối `tab` đã có dòng tiêu đề "Ô 1 · 4/4 · móc kép" đúng định dạng, và đều có câu tường minh về tốc độ ("tốc độ chậm, không vội" / "tốc độ chậm tới vừa, không vội").
Hai MINOR của vòng 1 cũng đã được xử lý: hàng "Tay" có chú thích ngoặc giải thích P chỉ là giá trị mặc định; Hack #2 đã đổi thành mẹo sờ tay tìm D4 độc lập với bài tập.
