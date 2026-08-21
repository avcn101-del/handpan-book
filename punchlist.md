# Punchlist — lỗi vặt (MINOR) gom lại, xử một lượt cuối sách

Theo CLAUDE.md mục 6: chỉ BLOCKER + MAJOR chặn chương. MINOR gom ở đây, không sửa ngay để tránh vòng lặp vô tận.

## Chương 1

- **Lặp ẩn dụ mở bài**: hai ẩn dụ "giọt nước trên mặt hồ" (đầu chương) và "chuông gió/chuông chùa" (đoạn giữa) cùng làm một việc — "một tiếng rồi im lặng nghe" — hơi lặp ý, kéo dài Lớp 1 không cần thiết. Gợi ý khi rút gọn: giữ ẩn dụ giọt nước ở đầu, bỏ hoặc rút đoạn chuông chùa còn 1–2 câu. (Nguồn: audits/ch01_editor.md, vòng ĐẠT)

## Chương 2

- **Thiếu dòng tiêu đề "Ô N · ..." trước khối tab của Bài tập 2** — Bài tập 1 và 3 có dòng tiêu đề Ô, Bài tập 2 thì không, lệch khuôn nội bộ chương. (Nguồn: audits/ch02_editor_v6.md)
- **"Ghost note" lần đầu xuất hiện ở Lớp 1 chưa có chú giải tiếng Việt ngay tại chỗ** — Lớp 2 đã chú giải đúng, Lớp 1 thì chưa, hơi ngược thứ tự "lần đầu xuất hiện phải kèm giải thích" của CLAUDE.md mục 0. (Nguồn: audits/ch02_editor_v6.md)
- **Thiếu hàng "thước đo nhịp"** so với cách trình bày lưới tab ở chương 1 — không sai nhưng thiếu nhất quán trực quan giữa hai chương. (Nguồn: audits/ch02_editor_v6.md)
- **Cụm "hai kiểu tay"** (đoạn 2) dễ gây liên tưởng nhầm sang hàng "Tay"/khái niệm tay trái-phải dù không nhắc trực tiếp. (Nguồn: audits/ch02_editor_v6.md)
- **Nhãn tên phách không nhất quán giữa hai chương**: ch02 dùng "đen" cho lưới gõ đều mỗi 4 cột (ts=4/4), trong khi ch01 dùng "móc đơn" cho cấu trúc tương tự — `facts/tab-notation.md` chưa có bảng ánh xạ tên phách ↔ số cột tường minh nên chưa rõ bên nào đúng. Cân nhắc bổ sung bảng ánh xạ vào facts hoặc rà lại nhãn ở ch01. (Nguồn: audits/ch02_facts_v3.md)
- **Vài từ/cụm chưa thật mượt với người mới** (không chặn tiến độ, chỉ hơi khựng): "nốt" (dòng đầu) dùng mà không nhắc lại định nghĩa từ ch01; "hòn đảo âm" ở đoạn Móc nối xuất hiện hơi đột ngột; từ "ngân" trong Lớp 2 ("để ngân một chút") hơi trừu tượng về thời lượng. (Nguồn: audits/ch02_reader_v2.md, ch02_reader_v4.md)
- **Giới hạn cố hữu của sách text-only**: nhiều lượt beginner-reader báo không chắc tốc độ/tempo gõ thực tế (nhịp 4/4 kéo dài bao lâu) — đây là hạn chế chung của định dạng tab chữ không âm thanh, không phải lỗi riêng của chương này, ghi nhận để cân nhắc ở tầm toàn sách (ví dụ phụ lục giải thích tempo chung), không sửa riêng lẻ từng chương.

## Chương 3

- **Đoạn 3 Lớp 1 hơi dài (~270 từ), gộp giải thích D3/D4 và ẩn dụ chuông gió trong một khối** — có thể tách làm hai đoạn để dễ đọc hơn. (Nguồn: audits/ch03_editor.md, vòng ĐẠT)
- **Chồng nhiều tầng ẩn dụ cho cùng một ý** (mẹ gọi/em gọi → chuông gió → rời nhà rồi về) — không sai nhưng hơi nhiều, có thể gọn lại còn ẩn dụ "mẹ gọi — em gọi" xuyên suốt. (Nguồn: audits/ch03_editor.md)
- **Câu dặn "Hàng Tay cứ bỏ qua" hơi dài dòng ở Bài tập 1** so với câu rút gọn tham chiếu ngược ở Bài tập 2. (Nguồn: audits/ch03_editor.md)
- **Số đo "một gang tay" ở Hack #2 chưa có nguồn xác nhận trong `facts/dkurd.md`** (file không ghi kích thước trống/khoảng cách tone field) — cân nhắc xác nhận độ hợp lý với cỡ D Kurd thông thường, hoặc đổi thành mô tả tương đối không đo lường ("một đoạn ngắn, không cần với xa"). (Nguồn: audits/ch03_editor.md — chuyển fact-checker, KHÔNG XÁC MINH ĐƯỢC)
- **Một số điểm beginner-reader còn tắc ở vòng cuối đều là kiến thức giả định từ chương trước** (liên hệ D3↔Ding, vị trí Ding, "ngân", "tone field", ký hiệu "P") — không phải lỗi riêng của ch03 vì reader chỉ đọc một chương độc lập; ghi nhận để `continuity` kiểm tra ở checkpoint chương 5 xem các chương trước có thực sự dạy đủ những khái niệm này chưa. (Nguồn: audits/ch03_reader.md, vòng 3)

## Chương 4

- **Hack #2 ở Lớp 3 gần như lặp lại Hack #1** — cả hai đều quy về "lẻ phải, chẵn trái", chỉ đổi cách diễn đạt theo tình huống, không thêm giá trị mới. (Nguồn: audits/ch04_editor.md)
- **Câu dẫn "Mỗi ô gõ đúng bốn nốt liên tiếp" trước Bài tập 1 không khớp Ô 3** (Ô 3 chỉ có một nốt C5) — người mới có thể khựng lại tưởng thiếu nốt. (Nguồn: audits/ch04_editor.md)
- **Từ chưa được giải thích chính thức lần đầu xuất hiện**: "quãng", "lóng ngóng", "bẻ nhỏ", "chạy", "ô", "ra đòn", "tăm tắp", "bật" (động từ), "tay thuận", "quãng giữa trống" — người mới đoán được nghĩa từ ngữ cảnh nhưng chưa có chú giải chính thức theo CLAUDE.md mục 0. (Nguồn: audits/ch04_reader.md, audits/ch04_reader_v2.md)
- **Câu "Đừng nhìn tay khi gõ nếu có thể" (Lớp 1) gây hoang mang** — người mới chưa chơi lần nào không biết có nên nhìn tay lần đầu hay không, chương không làm rõ mốc thời điểm áp dụng. (Nguồn: audits/ch04_reader_v2.md)
- **Vẫn tồn đọng sau vòng sửa 1**: Hack #2 ở Lớp 3 vẫn trùng lặp Hack #1; câu dẫn "Mỗi ô gõ đúng bốn nốt liên tiếp" trước Bài tập 1 vẫn mâu thuẫn với Ô 3 (chỉ 1 nốt) dù đã thêm câu giải thích phía sau. (Nguồn: audits/ch04_editor_v2.md, audits/ch04_editor_v3.md — đề nghị thay Hack #2 bằng mẹo "bẻ nhỏ bài tập" đã có sẵn ở Lớp 1)
- **Câu chú thích dưới Ô 3 Bài tập 2** nói cheat sheet ghi Ding là "tuỳ thuận", nhưng bảng cheat sheet thực tế ghi dấu "—" cho Ding (chữ "tuỳ thuận" chỉ gắn với C5) — cần sửa câu văn hoặc sửa bảng cho khớp. (Nguồn: audits/ch04_editor_v3.md)
- **Nên chạy script đếm từ tự động** để xác nhận chắc chắn Lớp 1 không vượt trần 1500 từ (ước tính tay hiện tại là ~1450–1500, sát trần). (Nguồn: audits/ch04_editor_v3.md)
- **Từ "phản xạ" (Lớp 1) chưa giải thích** — người mới chưa chơi lần nào không hiểu "phản xạ" nghĩa là gì trong ngữ cảnh tập luyện. (Nguồn: audits/ch04_reader_v3.md)
- **Câu cuối Lớp 2** ("...là bài luyện thuộc bản đồ nhanh nhất") hơi mơ hồ với người mới — không rõ "nhanh nhất" so với cái gì. (Nguồn: audits/ch04_reader_v3.md)

## Chương 5

- **Hack #1 (Lớp 3) sau khi vá ngoại lệ hơi cồng kềnh**: câu đầu nói chung "lặp mỗi pattern ít nhất 4 lần", câu sau phải đính chính chỉ áp dụng Pattern 1 (Pattern 2 = 2 lần, Pattern 3 = 1 lần) — người đọc phải nhớ ngoại lệ mới dùng đúng, hơi trái tinh thần "hack không cần nhớ lý thuyết". Cân nhắc viết lại gọn hơn khi rà toàn sách, ví dụ tách hẳn thành 2 dòng riêng theo từng pattern thay vì một câu + một ngoại lệ. (Nguồn: audits/ch05_editor.md, vòng cuối)
- **Bảng Lớp 3 hàng Pattern 3 thiếu bước gõ Ding đầu**; câu "đếm thầm bốn nhịp một" hơi tối nghĩa. (Nguồn: audits/ch05_editor.md, vòng cuối)
- **Tên phách "đen" cho lưới 4/4-16 cột** có thể chưa khớp quy ước đặt tên phách trong `facts/tab-notation.md` (tài liệu hiện dùng "móc đơn" cho lưới 6/8-12 cột) — cùng vấn đề nhất quán tên phách đã ghi nhận ở chương 2, nên xử một lượt cho toàn sách thay vì sửa riêng lẻ. (Nguồn: audits/ch05_editor.md, nhiều vòng)
- **Nhiều thuật ngữ chương 1-4 (Ding, ngân, 9 tone field, zigzag, cao độ, khớp nhịp) không được nhắc lại/giải thích trong ch05** — đây là hệ quả của việc spec ch05 cho phép dùng thẳng "mọi khái niệm chương 1–4" mà không cần dạy lại; beginner-reader (chỉ đọc riêng ch05, không được đọc ch1-4) liên tục vướng vì thiếu ngữ cảnh. Không phải lỗi của riêng ch05, nhưng ghi nhận để cân nhắc: liệu sách có cần một trang tra cứu nhanh (mini-glossary) ở đầu mỗi chương từ ch05 trở đi cho người đọc lẻ từng chương. (Nguồn: audits/ch05_reader.md, nhiều vòng)
- **Giới hạn cố hữu**: người mới không biết vị trí thực tế của A3/D4/E4 trên trống thật chỉ từ sơ đồ ASCII và số ô ①④⑤ — cùng loại giới hạn text-only đã ghi nhận ở chương 2, không sửa riêng ch05.

## Chương 6

- **Ẩn dụ "phím trắng phím đen" (piano) ở Lớp 1** dùng làm phép so sánh tương phản — không dạy kỹ thuật piano nên không phải BLOCKER, nhưng có nguy cơ kéo người mới về mô hình bàn phím thay vì mô hình vòng tròn zigzag. Gợi ý thay bằng hình ảnh trung tính hơn, không nêu tên nhạc cụ cụ thể. (Nguồn: audits/ch06_editor.md, vòng 1)
- **Ký hiệu "Bb" chưa từng được giải thích ý nghĩa dấu giáng** xuyên suốt từ chương 1 tới nay — người mới đọc lẻ chương không biết "b" trong "Bb" nghĩa là gì. Không phải lỗi riêng ch06 (kế thừa từ ch01/ch04), cân nhắc thêm chú giải ngắn ở lần xuất hiện đầu tiên trong sách. (Nguồn: audits/ch06_reader.md, nhiều vòng)
- **Ẩn dụ "hộp gia vị" lặp lại rất nhiều lần** (khoảng 12–15 lần xuyên cả 3 lớp) — hiệu quả ở lần đầu nhưng về cuối văn hơi mòn do lặp nguyên cụm từ. Gợi ý đa dạng hoá cách diễn đạt ở 2–3 chỗ cuối. (Nguồn: audits/ch06_editor.md, vòng 2–3)
- **Bảng cheat sheet Lớp 3 tách "D thứ tự nhiên" và "Diatonic" thành hai dòng riêng** dù spec coi đây là một khái niệm gộp — có thể gộp lại một dòng cho gọn. (Nguồn: audits/ch06_editor.md, vòng 2)
- **Bài tập 1 và 2 vô tình bỏ sót nốt E4** trong lưới tab, dù đoạn văn có nhắc riêng E4 là một trong bốn nốt "chỉ có một chai duy nhất" — không bắt buộc sửa (spec chỉ yêu cầu 8/10 nốt) nhưng nếu đổi 1 nốt trong bài tập thì minh hoạ trọn vẹn hơn. (Nguồn: audits/ch06_editor.md, vòng 2)
- **Đoạn mô tả "nhìn sơ đồ" ở Lớp 1 còn chung chung**, chưa dắt tay người đọc đi một đường cụ thể trên mặt trống; câu liệt kê 7 bậc hơi dồn trong một đoạn. (Nguồn: audits/ch06_editor.md, vòng 3)
- **"Ding = D3" chưa được nối rõ ngay tại Lớp 1** — người đọc thử phải đợi đến Lớp 2 mới chắc chắn Ding và D3 là cùng một nốt. (Nguồn: audits/ch06_reader.md, vòng 3)
- **Giới hạn cố hữu**: beginner-reader đọc riêng ch06 (không có ngữ cảnh ch01) tiếp tục báo tắc ở ký hiệu tab (●, ·, P, T) — ký hiệu này đã được giải thích đầy đủ ở chương 1 (dòng 79), không phải lỗi riêng của ch06. Cùng loại giới hạn text-only/đọc-lẻ-chương đã ghi nhận ở chương 2 và 5.

## Chương 7

- **Nốt Bb3 nằm trong "Nốt sẽ dùng" của spec nhưng bản thảo cuối không dùng ở đâu** — có vẻ là chủ đích tránh đụng cặp A3–Bb3 (dành riêng cho chương 8 theo đúng luật "Cấm đụng" của spec), không phải thiếu sót. Ghi chú lại để người soát sau không nhầm là bỏ sót. (Nguồn: audits/ch07_editor.md, vòng ĐẠT)
- **Hack #1 (Lớp 3) hơi giống tóm tắt lại bảng cheat sheet** hơn là một mẹo hành động độc lập, so với Hack #2 (hỏi tai trước, hỏi tên sau) sắc hơn. Có thể tinh gọn số liệu khi rà toàn sách. (Nguồn: audits/ch07_editor.md, vòng ĐẠT)
- **Một đoạn văn Lớp 1 hơi dài**, nên tách nhỏ để dễ đọc hơn. (Nguồn: audits/ch07_editor.md, vòng ĐẠT)
- **Bài học quan trọng cho các chương sau (đã sửa ở ch07, nên rà lại các chương dùng bảng quãng tương tự)**: `facts/dkurd.md` mục 5 ("Bảng quãng tính từ D") liệt kê số nửa cung theo **bậc** (không tính quãng tám). Trên D Kurd, chỉ A và C có bản sao ở quãng tám gần Ding (A3, C4) nên số nửa cung khớp thẳng bảng mục 5; nhưng E, F, G chỉ tồn tại ở quãng tám xa Ding (E4, F4, G4) nên khoảng cách thật từ D3 lớn hơn nhiều (14/15/17 nửa cung, không phải 2/3/5). `specs/ch07.md` từng mắc lỗi này (đã sửa cùng đợt viết chương). Nếu chương nào khác dùng bảng mục 5 để minh hoạ "quãng nhỏ tính từ Ding" bằng E4/F4/G4/A4, cần rà lại theo đúng cảnh báo ở mục 4 facts/dkurd.md ("phải kiểm theo 9 nốt tuyệt đối, không kiểm theo bậc"). (Nguồn: audits/ch07_facts.md vòng 3, đã trao đổi và xác nhận với người dùng)
- **Giới hạn cố hữu, lặp lại nhiều chương**: beginner-reader liên tục vướng ở các khái niệm tiền đề từ chương 6 (D thứ tự nhiên, bậc, Ding, zigzag) và quy ước đọc lưới tab (P/T, chiều cột = thời gian) đã chốt ở `facts/tab-notation.md` — đúng như spec ch07 cho phép giả định (tiền đề: chương 6), không phải lỗi riêng ch07. Ghi nhận cùng nhóm với ghi chú tương tự ở ch03/ch05 để `continuity` xem xét ở checkpoint sau. (Nguồn: audits/ch07_reader.md, nhiều vòng)
