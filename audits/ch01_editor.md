# Editor — ch01

## BLOCKER
- Cả hai bài tập tab (Lớp 3, `sach_ch01_bai1` và `sach_ch01_bai2`) **thiếu hàng "Tay"**. `facts/tab-notation.md` mục 2 quy định cứng: "Hàng `Ding` và hàng `Tay` luôn có." Đây là ràng buộc cứng của dự án (CLAUDE.md mục 3: "Mọi bài tập viết bằng ký hiệu trong facts/tab-notation.md"), không phải tuỳ chọn.
  → Sửa: thêm một hàng `Tay | P  ·  ·  ·  ...` với toàn bộ ký hiệu `P` (mặc định tay phải, đúng mặc định `hand="R"` mô tả ở mục 5 file tab-notation) cho cả 8 ô của bài 1 và ô của bài 2. Không cần giải thích P/T là gì trong lời văn hay ở Lớp 1/2/3 — hàng này chỉ là dữ liệu kỹ thuật để script sinh JSON đọc được, không vi phạm "Cấm đụng: tay phải/trái" của spec ch01 vì không có câu chữ nào dạy khái niệm đó.

## MAJOR
- Đây là bài tập tab **đầu tiên trong toàn bộ sách**, nhưng chương không giải thích một chữ nào về cách đọc lưới: `●` nghĩa là gì, `·` nghĩa là gì, cột chạy theo thời gian ra sao, dòng "D · Ding" là gì. Không tìm thấy file mở đầu/lời tựa nào (`chapters/ch00.md`, `README.md` đều không tồn tại) giải thích trước việc này. Người mới nhìn khối ```` ```tab ```` lần đầu sẽ không tự suy ra được `●` = gõ.
  → Sửa: thêm 1–2 câu ngay trước khối tab đầu tiên (bài tập 1), ví dụ: "Mỗi ô vuông trong bảng dưới đây là một khoảnh khắc thời gian, đọc từ trái qua phải. Ô có dấu **●** là lúc bạn gõ, ô có dấu **·** là lúc im lặng." Nếu sách có file lời tựa/hướng dẫn đọc tab riêng (nằm ngoài `chapters/`), ghi rõ trong báo cáo để tôi (hoặc người dùng) xác nhận — nếu có thật thì hạ bậc lỗi này xuống MINOR.
- Nhãn hàng "móc đơn" trong bài tập 2 (dòng đếm phách) là thuật ngữ nhịp điệu chưa từng xuất hiện hay được giải thích ở đâu trong chương, và không nằm trong "Được phép dùng" của spec (chỉ có Ding, ngân, chủ âm). Với người mới tuyệt đối, nhãn này chỉ nên là trang trí không cần hiểu, nhưng nếu không có câu dẫn kiểu "không cần biết móc đơn là gì, đây chỉ là thước đo thời gian" thì dễ gây khớp tâm lý ("mình phải biết cái này trước đã").
  → Sửa: thêm một câu ngắn trấn an ngay trước bài tập 2, ví dụ: "Dòng 'móc đơn' chỉ là cây thước đo nhịp cho vui mắt, không cần hiểu nó là gì — bạn chỉ cần nhìn hàng Ding thôi."

## MINOR
- Bài tập 1 gồm 8 khối tab liên tiếp (đúng giới hạn tối đa 8 ô của `facts/tab-notation.md`) nhưng không khối nào có tiêu đề riêng "Ô N · nhịp · tên phách" như mục 2 của file đó yêu cầu ("Ghi tiêu đề mỗi ô"). Có thể chấp nhận được vì cả 8 ô giống hệt nhau, nhưng nên xác nhận với fact-checker về format.
- Đoạn mở đầu (dòng 5–11, ẩn dụ giọt nước + lý do vào bài) dài khoảng 280 từ trước khi tên "Ding" xuất hiện lần đầu. Không sai, nhưng với sách vỡ lòng, có thể rút một đoạn để người đọc chạm vào "Ding" sớm hơn.
- Cụm trấn an "không cần hoàn hảo / không cần đúng tuyệt đối" lặp lại gần giống nhau ở dòng 46, 48, 52 — ý hay nhưng hơi lặp từ, có thể đổi cách diễn đạt ở một trong ba chỗ.

## Chuyển fact-checker
- Câu "Ding là... nốt trầm, đầy đặn nhất trên cả cây đàn" (dòng 15) — khớp với D3=MIDI50 là nốt thấp nhất trong `facts/dkurd.md`, nhưng nhờ xác nhận từ "đầy đặn nhất" có phải diễn đạt chấp nhận được hay cần chỉnh.
- Câu "Ding nằm hơi lệch về phía người chơi một chút so với tâm hình học của sơ đồ" và "Ding luôn ở gần bạn nhất" (dòng 44) — mô tả này khớp với cách sơ đồ ASCII được bố trí (3 hàng tone field phía trên Ding, 2 hàng phía dưới trước khi tới nhãn NGƯỜI CHƠI), nhưng đây là suy luận về cảm giác vật lý khi ôm trống thật, không có trong `facts/dkurd.md`. Nhờ xác nhận đúng với trống thật hay chỉ là suy diễn từ sơ đồ.
- Xác nhận kỹ thuật: liệu `bin/sach_tab_sang_json.py` có tự mặc định `hand="R"` khi hàng "Tay" bị thiếu hoàn toàn trong khối tab, hay sẽ báo lỗi/dừng script. Việc này quyết định mức độ nghiêm trọng của lỗi BLOCKER "thiếu hàng Tay" nêu trên.

## KẾT LUẬN: SỬA (1 blocker, 2 major)
