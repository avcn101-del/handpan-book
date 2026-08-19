# Editor — ch01

## BLOCKER
(không có)

## MAJOR

- **Lớp 2, gạch đầu dòng thứ 4 gọi tên hai khái niệm bị "Cấm đụng" trong spec** (`chapters/ch01.md` dòng 61): "Không cần nhớ tên hợp âm hay quãng gì hết — hôm nay chỉ cần nhớ đúng một cái tên: Ding." Spec ch01 cấm đụng rõ ràng: "hợp âm, quãng". Dù câu này phủ định ("không cần nhớ"), nó vẫn nêu tên hai thuật ngữ kỹ thuật mà người đọc chưa hề được giới thiệu — gieo nợ khái niệm sớm không cần thiết, và một đứa trẻ 10 tuổi đọc Lớp 2 sẽ hỏi "hợp âm là gì, quãng là gì" ngay giữa chương chỉ nói về một nốt.
  → Sửa cụ thể: đổi thành câu không gọi tên khái niệm cấm, ví dụ: "Không cần nhớ lý thuyết gì cả — hôm nay chỉ cần nhớ đúng một cái tên: Ding."

- **Hàng "Tay" trong toàn bộ 9 khối tab (bài tập 1 và 2) luôn ghi cố định `P`, mâu thuẫn với nội dung chính chương và đụng khái niệm bị cấm.** Spec ch01 cấm đụng "tay phải/trái (P/T)". Chương có phòng bị bằng câu "Hàng 'Tay' bên dưới cũng bỏ qua luôn — chuyện tay nào gõ để dành cho chương 2" (dòng 79), nhưng không giải thích vì sao ký hiệu luôn là `P` mà không đổi — trong khi Lớp 1 nói rõ "dùng đầu ngón tay, hoặc phần thịt ở gốc ngón cái — cứ thử cả hai xem cái nào thấy thoải mái hơn" (ngụ ý tay nào cũng được) và Lớp 3 cheat sheet ghi thẳng "tay nào cũng được". Một người đọc để ý sẽ thấy mâu thuẫn: nếu tay nào cũng được, sao tab luôn ghi `P` chứ không bao giờ `T`? Đây là dùng ký hiệu P/T (đã có nghĩa "tay phải/tay trái" theo `facts/tab-notation.md`) mà không giải thích, sớm hơn spec cho phép.
  → Sửa cụ thể: thêm một câu ngay sau dòng 79 làm rõ, ví dụ: "Ký hiệu 'P' ở hàng Tay chỉ là mặc định kỹ thuật của lưới bài tập — không có nghĩa là bạn phải dùng tay phải. Ở chương này, gõ tay nào cũng được, không cần để ý hàng này." Nếu muốn triệt để hơn, đề xuất lên kiến trúc dữ liệu: xin ngoại lệ cho ch01/ch02 (trước khi khái niệm P/T được dạy) để hàng Tay dùng một ký hiệu trung lập thay vì chữ P/T có nghĩa sẵn — nhưng việc đổi `facts/tab-notation.md` nằm ngoài quyền của editor, chỉ nêu ở đây để người phụ trách kiến trúc quyết định.

## MINOR

- Sơ đồ mặt trống (dòng 27–40) là bản copy bắt buộc từ `facts/dkurd.md` nên hiển thị đủ 9 tên nốt khác D3 (C5, A4, G4, F4, E4, D4, C4, Bb3, A3) — về mặt kỹ thuật đụng vào danh sách "Tên nốt khác D3" bị cấm ở ch01. Chương đã xử lý khá tốt bằng câu "Bạn không cần đọc chữ trong mấy ô còn lại đâu... để dành cho các chương sau" (dòng 42), nên không nâng lên MAJOR. Vẫn nên cân nhắc làm câu này nổi bật hơn (in nghiêng hoặc để riêng một dòng) để mắt người đọc thực sự lướt qua các nhãn kia mà không dừng lại đọc.

- Tiêu đề bài tập 2 không theo đúng khuôn tiêu đề "Ô N · <nhịp> · <tên phách>" như bài tập 1 (dòng 81–134 đều có dòng `**Ô N · tự do**` riêng trước mỗi khối tab), trong khi bài tập 2 gộp cụm "(Ô 1 · 4/4 · móc đơn)" vào ngay tiêu đề lớn "### Bài tập 2 ..." (dòng 137) mà không có dòng tiêu đề ô riêng. Không sai nhịp/cột, chỉ lệch định dạng trình bày so với chính bài tập 1 trong cùng chương.
  → Sửa cụ thể: thêm dòng `**Ô 1 · 4/4 · móc đơn**` ngay trước khối ```` ```tab id=sach_ch01_bai2... ```` để nhất quán với bài tập 1.

- Đoạn "Đó chính xác là lý do handpan được nhiều người tìm tới không phải vì muốn 'học nhạc'..." (dòng 50) hơi nghiêng về khẳng định chung chung/đúc kết thay vì giọng "ngồi cà phê với bạn thân". Không sai, chỉ hơi rời giọng một chút so với phần còn lại của chương.
  → Sửa cụ thể (tuỳ chọn): đổi thành câu cá nhân hơn, ví dụ "Nhiều người tới với handpan không phải để 'học nhạc' đâu — họ chỉ đang tìm một khoảng lặng như vậy trong ngày thôi."

## Chuyển fact-checker

- Dòng 44: "Bạn để ý sẽ thấy Ding nằm hơi lệch về phía người chơi một chút so với tâm hình học của sơ đồ — điều đó khớp với cảm giác thật khi bạn ngồi ôm trống trong lòng: Ding luôn ở gần bạn nhất..." — đây là một khẳng định vật lý về vị trí Ding trên trống thật (không chỉ là cách trình bày ASCII). Cần xác nhận đây có đúng với trống D Kurd thật hay chỉ là suy diễn từ cách vẽ sơ đồ text (số hàng phía trên Ding nhiều hơn số hàng phía dưới). Nếu không đúng với thực tế vật lý, cần bỏ câu này để tránh dạy sai cảm giác định vị ban đầu — rất quan trọng vì đây là chương đầu tiên dạy "đặt tay đúng chỗ".

## KẾT LUẬN: SỬA (0 blocker, 2 major)
