# Editor — ch02

## BLOCKER
(không có)

## MAJOR
- Mục tiêu học của spec ghi rõ 4 kỹ năng: "phân biệt được gõ bằng đầu ngón và mô ngón cái, **gõ đúng vị trí trên một tone field**, tạo được ghost note và tắt tiếng chủ động." Ba kỹ năng đầu/cuối đều có đoạn văn riêng dạy tường minh (đầu ngón vs mô ngón cái ở đoạn "Kiểu gõ đầu tiên là bằng..."; ghost note và tắt tiếng ở hai đoạn cuối), nhưng "gõ đúng vị trí trên một tone field" không có đoạn nào nhắc tới — không có câu nào nói về việc nhắm đúng tâm lõm Ding, hay chuyện gì xảy ra khi gõ lệch tâm. Kỹ năng này chỉ được ngầm định qua việc lặp bài tập, không được đặt tên/dạy như một khái niệm riêng giống ba cái còn lại.
  → Sửa: chèn 2–3 câu (gợi ý: ngay sau đoạn "Cây handpan của bạn cũng vậy...", trước khi vào phần đầu ngón/mô ngón cái) mô tả việc nhắm đúng tâm Ding — ví dụ "gõ lệch ra khỏi tâm lõm một chút, tiếng sẽ đục hơn, ngân kém tròn hơn, nên trước khi đổi kiểu tay, cứ nhắm đúng cái tâm đó đã". Biến "đúng vị trí" thành một cảm nhận tai nghe được, đúng tinh thần Lớp 1 của cả chương.

## MINOR
- Câu mở đầu hướng dẫn Bài tập 1: "Mỗi ô dưới là một **kiểu tay** khác nhau nhưng cùng một cách gõ đều bốn lần..." dùng từ "tay" để chỉ kiểu chạm (đầu ngón/mô ngón cái), nhưng câu ngay sau lại nói về hàng "Tay" (ký hiệu P/T, nghĩa là tay trái/phải) — hai nghĩa khác nhau của cùng một chữ đặt sát nhau, dễ khiến người đọc khựng lại một nhịp.
  → Sửa: đổi "Mỗi ô dưới là một kiểu tay khác nhau" thành "Mỗi ô dưới là một **kiểu chạm** khác nhau" để tránh trùng chữ với hàng "Tay" ngay bên dưới.
- Tiêu đề ô trong Bài tập 1 ("Ô 1 · 4/4 · đầu ngón", "Ô 2 · 4/4 · mô ngón cái") không theo đúng khuôn `Ô N · <nhịp> · <tên phách>` mà `facts/tab-notation.md` mục 4 quy định (tên phách kiểu "móc đơn", "tự do"...). Bài tập 3 trong chính chương này lại dùng đúng khuôn ("tự do"), nên đây là chỗ lệch chuẩn nội bộ, không phải lỗi cố ý.
  → Sửa: đổi thành "Ô 1 · 4/4 · móc đơn (đầu ngón)" và "Ô 2 · 4/4 · móc đơn (mô ngón cái)" — vừa giữ đúng khuôn tên phách, vừa giữ được thông tin kỹ thuật cho người đọc.
- Hack ở Lớp 3 ("Gõ nhẹ hơn bạn nghĩ là đủ") gần như trùng nguyên văn với hàng "Lực gõ" trong bảng cheat sheet ngay phía trên nó — đúng theo spec nên không chặn chương, nhưng hack không khai thác hai khái niệm mới nổi bật nhất của chương (ghost note, tắt tiếng). Ghi vào punchlist để cân nhắc thêm một hack thứ hai ở lần rà soát cuối sách, không bắt sửa ngay.

## Chuyển fact-checker
- Các khẳng định về màu tiếng (timbre): "đầu ngón: gọn, rõ, hơi 'tách', tinh, sáng" và "mô ngón cái: dày, ấm hơn, ngân có vẻ no hơn" — đây là mô tả vật lý âm thanh không có trong `facts/dkurd.md` hay mô tả chi tiết đến mức này trong `facts/glossary.md`. Nhờ xác nhận các mô tả này đúng với cách handpan thực tế phản ứng với hai kiểu chạm.
- Bài tập 3 dùng mẫu `● ▬ ▬ ✕` (gõ — giữ 2 cột — tắt) trong ô 16 cột chia 2 lần lặp/ô. Spec bài tập 3 yêu cầu "để ngân 1 nhịp" trước khi tắt — nhờ kiểm xem độ dài 2 cột giữ (`▬ ▬`) có tương ứng đúng "1 nhịp" theo quy ước cột/phách của `facts/tab-notation.md` hay không.

## KẾT LUẬN: SỬA (0 blocker, 1 major)
