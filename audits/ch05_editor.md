# Editor — ch05

## BLOCKER
(không có)

## MAJOR

- **Nợ khái niệm ở phần Móc nối — tiết lộ trước đáp án của chương 6, dùng thuật ngữ tự chế "họ âm".**
  Đoạn cuối "Móc nối" viết: *"Chương 6 sẽ giải thích vì sao không nốt nào trong ba pattern hôm nay là 'sai'; bí mật nằm ở chỗ cả 10 nốt trên trống đều thuộc về cùng một họ âm, điều bạn đã thấy hiện tượng nhưng chưa biết lý do."*
  Hai vấn đề cộng dồn:
  1. Spec ch05 chỉ cho phép **"Gieo mầm chương 6"** (gợi mở, không giải thích cơ chế). Câu này lại nói thẳng cơ chế — "cùng một họ âm" — tức là giải luôn đáp án mà chương 6 (thang âm D thứ tự nhiên / diatonic) có nhiệm vụ dạy. Đối chiếu `specs/ch06.md` chưa đọc trực tiếp trong lượt soát này nhưng theo `facts/glossary.md` dòng 12, khái niệm "cả 10 nốt trên trống đều thuộc về" một thang âm chính là định nghĩa của **"D thứ tự nhiên"** — thuật ngữ chính thức bị liệt vào "Cấm đụng" của ch05.
  2. "Họ âm" không phải từ có trong `facts/glossary.md`. Theo CLAUDE.md mục 0: *"Không tự chế thuật ngữ mới. Thiếu từ → thêm vào glossary trước, dùng sau."* Đây là thuật ngữ ăn theo ý nghĩa của "D thứ tự nhiên"/"diatonic" nhưng viết trại đi để né luật — vẫn tính là nợ khái niệm vì người đọc tiếp nhận đúng nội dung lý thuyết trước khi được dạy.
  → **Sửa cụ thể**: bỏ vế giải thích cơ chế, chỉ giữ câu hỏi treo. Ví dụ thay bằng: *"Chương 6 sẽ giải thích vì sao không nốt nào trong ba pattern hôm nay là 'sai' — hôm nay bạn chỉ cần biết hiện tượng này luôn đúng, chưa cần biết lý do."* (Đúng những gì đoạn cuối Lớp 1, dòng 40, đã làm tốt — nên đồng bộ Móc nối theo đúng mức độ giữ bí mật đó, đừng giải thích thêm ở Móc nối.)

## MINOR

- Đoạn Lớp 1 dùng ẩn dụ "mẹ ru con / à ơi" xuyên suốt cả ba pattern (dòng 5, 11, 13, 34) — hợp lý làm mạch xuyên suốt, nhưng tới đoạn Pattern 3 lặp lại ẩn dụ này thêm một tầng ẩn dụ khác ("đi ra khỏi nhà... khép cửa... về nhà") chồng lên ẩn dụ ru con, hơi rối tầng hình ảnh. Gợi ý: bỏ bớt một trong hai lớp ẩn dụ ở đoạn Pattern 3, giữ ẩn dụ "về nhà" (khớp với "chủ âm = nhà" đã học từ chương 3) là đủ, không cần nhắc "à ơi" nữa ở đoạn này.
- Nhãn phách `4/4 · đen` lặp lại giống nhau ở cả 3 bài tập dù cấu trúc gõ khác nhau (bài 1: đều đặn từng ô; bài 3: có khoảng nghỉ dài rồi giữ). Không sai nhưng hơi lười — nên xem lại có nên đổi tên phách cho từng bài để người đọc dễ hình dung mật độ gõ khác nhau hay không (MINOR, không bắt buộc sửa).

## Chuyển fact-checker

- Hàng `Tay` ở Bài tập 2: Ding luôn gán `P` (tay phải) ở mọi lần gõ (cột 1, 5, 9, 13), trong khi 4 nốt giai điệu luân phiên `P–T–P–T`. Cần xác nhận quy ước "Ding luôn đánh bằng một tay cố định trong khi tay kia chơi giai điệu" có đúng kỹ thuật/thực tế chơi handpan hay không, hay Ding cũng nên đổi tay theo nhịp thở tự nhiên như lời văn ở đoạn Pattern 1 gợi ý ("có nhịp thở riêng").
- Nhãn `4/4 · đen` (tên phách "đen"/quarter note) cho lưới 16 cột — đối chiếu `facts/tab-notation.md` mục 4 xem tên phách này có đúng quy ước đặt tên (ví dụ ví dụ mẫu trong tab-notation.md dùng "móc đơn" cho 6/8/12 cột) hay cần đổi tên phách khác cho nhất quán.
- Ánh xạ số ô ①④⑤ ↔ A3/D4/E4 trong đoạn mô tả vị trí (dòng 32) và trong bảng Lớp 3 khớp với `facts/dkurd.md` mục 1 — đã đối chiếu bằng mắt thấy khớp, nhưng đề nghị fact-checker xác nhận lại chính thức vì đây là nội dung định vị không gian quan trọng cho người mới.

## KẾT LUẬN: SỬA (0 blocker, 1 major)
