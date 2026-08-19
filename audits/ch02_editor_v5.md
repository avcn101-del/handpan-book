# Editor — ch02

## BLOCKER
(không có)

## MAJOR

- **Lớp 1 có dấu hiệu vượt trần 1200–1500 từ.** Đếm tay theo từng đoạn (11 đoạn văn, dòng 5–25), hai đoạn kiểm chứng kỹ (đoạn "gõ cửa" mở bài ≈134 từ, đoạn "ghost note" ≈195 từ, đoạn "tắt tiếng" ≈180 từ) rồi ngoại suy cho các đoạn còn lại cho ra tổng ước tính **~1500–1700 từ**, tức chạm hoặc vượt trần. Đây là ước tính thủ công, cần chạy công cụ đếm từ chính xác để xác nhận, nhưng bất kể con số chính xác là bao nhiêu, có ít nhất hai chỗ trùng ý rõ ràng có thể cắt ngay để giảm dung lượng:
  - Đoạn dòng 9 ("...gõ vài chục lần, tay sẽ tự nhớ đường, tự tìm đúng chỗ mà không cần nhìn xuống mỗi lần gõ.") và đoạn kết dòng 25 ("Gõ vài chục lần, tay bạn sẽ tự tìm ra được lực vừa đủ, và cũng tự tìm ra luôn cái tâm lõm đó nằm chính xác ở đâu dưới đầu ngón mình.") nói cùng một ý — "gõ nhiều lần thì tay tự tìm ra đúng tâm". → Sửa: bỏ vế "cũng tự tìm ra luôn cái tâm lõm đó nằm chính xác ở đâu" khỏi đoạn kết (dòng 25), chỉ giữ vế nói về lực gõ, tiết kiệm ~20 từ và tránh lặp.
  - Đoạn tổng kết dòng 23 ("Bạn để ý mà xem — cả bốn thứ hôm nay học...") và đoạn kết dòng 25 cùng làm nhiệm vụ "chốt lại buổi học" — có thể gộp thành một đoạn duy nhất thay vì hai đoạn riêng, cắt được khoảng 100–150 từ mà không mất ý nào.
  - Đoạn dòng 9 có câu giải thích vật lý tấm kim loại ("Đây không phải chuyện cảm tính, mà là vật lý của tấm kim loại: đúng tâm thì cả vùng rung đều nhau, lệch tâm thì rung lệch...") — câu này vừa làm dài đoạn vừa là một khẳng định kỹ thuật chưa có nguồn (xem mục Chuyển fact-checker). Cắt câu này, giữ lại phần "gõ trúng tâm thì tiếng tròn hơn" là đủ ý cho người mới.
  → Khuyến nghị: chạy `wc -w` (hoặc tương đương) lên riêng phần Lớp 1, và áp ba chỗ cắt trên trước khi tính lại.

- **Bài tập 2 (ghost note) lệch mô tả so với spec đã khoá.** Spec ghi rõ: "Gõ Ding mạnh rồi chêm một ghost note thật nhẹ ngay sau" (`specs/ch02.md` dòng 26). Bản thảo đổi thành "gõ rõ" và chủ động phủ định chữ "mạnh": Lớp 1 dòng 19 viết "gõ Ding một tiếng bình thường (**không cần mạnh**, chỉ cần rõ)"; tiêu đề Bài tập 2 (dòng 78) ghi "Gõ rõ, chêm ghost note"; Lớp 2 (dòng 31) và bảng Lớp 3 (dòng 43) đều lặp lại "gõ rõ" thay vì "mạnh". Việc đổi này diễn ra thống nhất ở cả 3 lớp nên không phải lỗi đánh máy đơn lẻ, mà là một lựa chọn có chủ đích (có thể để không mâu thuẫn với bài học "lực gõ" vừa dạy ngay phía trên) — nhưng nó làm giảm độ tương phản mạnh/nhẹ mà spec muốn ghost note phải có, và tự ý sửa nội dung bài tập trong spec đã khoá.
  → Sửa cụ thể: giữ đúng tinh thần "mạnh" của spec nhưng nối nó với bài học lực gõ vừa dạy, ví dụ đổi câu ở dòng 19 thành: "gõ Ding một tiếng rõ ràng, dứt khoát — lực bình thường bạn vẫn dùng từ đầu chương, không cần cố tình mạnh hơn nữa — rồi ngay sau đó gõ thêm một tiếng cực nhẹ..." và đồng bộ lại cách diễn đạt này ở Lớp 2 (dòng 31) và bảng Lớp 3 (dòng 43) để 3 lớp không tự mâu thuẫn nhau về từ ngữ, đồng thời không đọc như một sự phủ định trực tiếp chữ "mạnh" trong spec.

## MINOR

- Hàng `Tay` trong cả ba bài tập chỉ điền toàn `P`, không có `T` nào — không sai (chương chưa dạy P/T), nhưng nếu người đọc tinh ý sẽ thấy hàng này luôn giống hệt nhau qua mọi bài tập của cả ch01 lẫn ch02. Cách xử lý ("Hàng Tay... bạn chưa cần để ý") đã đúng với tiền lệ ch01 (`chapters/ch01.md` dòng 81), nên không chặn chương này, nhưng ghi lại để nhắc: `specs/ch02.md` mục "Ngoại lệ bắt buộc" chỉ nói về sơ đồ mặt trống, không có dòng nào cho phép hàng Tay hiển thị giá trị P/T thật trong lưới bài tập. Nếu có dịp sửa spec ở vòng sau, nên bổ sung một câu ngoại lệ tương tự cho hàng Tay để tránh mỗi người viết chương tự xử lý một kiểu.
- Đoạn dòng 15 (lực gõ) và Hack #1 Lớp 3 lặp gần y nguyên câu chữ của Hack trong spec ("Gõ nhẹ hơn bạn nghĩ là đủ — mặt trống nhạy, phần lớn người mới gõ mạnh quá mức cần thiết") — đúng tinh thần "hack xài ngay", không phải lỗi, chỉ nêu để so sánh với chỗ Bài tập 2 phía trên đã tự ý đổi chữ "mạnh": cùng một chủ đề lực gõ nhưng xử lý không nhất quán (giữ nguyên spec ở chỗ này, đổi spec ở chỗ kia).
- Bài tập 3: câu giải thích "mỗi nhịp đếm chiếm đúng 4 cột — nên cú gõ, hai cột giữ, và cú tắt cộng lại vừa tròn một nhịp, đúng như chỉ dẫn 'ngân một nhịp rồi tắt'" diễn giải "ngân 1 nhịp" là tính từ lúc gõ (gõ+giữ+tắt = 1 nhịp), không phải "ngân trọn 1 nhịp sau khi gõ". Đây là cách hiểu hợp lý về mặt sư phạm nhưng khác cách đọc chữ nghĩa của spec ("để ngân 1 nhịp, rồi tắt tiếng" gợi ý ngân trước, tắt sau, tổng thời lượng có thể dài hơn 1 nhịp). Không phải lỗi nhạc lý nên không đẩy sang fact-checker, nhưng nêu để người viết cân nhắc làm rõ hơn một câu, ví dụ: "cứ gõ xong là coi như nhịp đó bắt đầu, đến cuối nhịp thì tắt" để tránh người đọc kỹ tính thấy vênh với chữ "ngân 1 nhịp rồi tắt".

## Chuyển fact-checker

- Dòng 9: câu "Đây không phải chuyện cảm tính, mà là vật lý của tấm kim loại: đúng tâm thì cả vùng rung đều nhau, lệch tâm thì rung lệch, tiếng ra không tròn" — khẳng định về cơ chế rung của tấm kim loại handpan. Không có trong `facts/dkurd.md` (chỉ chứa layout/tên nốt/quãng/hợp âm). Cần xác nhận đây có phải mô tả đúng, hay nên hạ xuống thành nhận xét chung chung không đòi hỏi giải thích vật lý.
- Dòng 11: câu "diện tích tiếp xúc rộng hơn hẳn đầu ngón, tiếng ra dày hơn, ấm hơn, ngân có vẻ no hơn một chút" khi gõ bằng mô ngón cái — khẳng định kỹ thuật về quan hệ diện tích tiếp xúc và màu âm. Nhờ xác nhận có đúng bản chất kỹ thuật chơi handpan hay chỉ là suy diễn hợp lý nhưng chưa kiểm chứng.

## KẾT LUẬN: SỬA (0 blocker, 2 major)
