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

## Chương 4

- **Hack #2 ở Lớp 3 gần như lặp lại Hack #1** — cả hai đều quy về "lẻ phải, chẵn trái", chỉ đổi cách diễn đạt theo tình huống, không thêm giá trị mới. (Nguồn: audits/ch04_editor.md)
- **Câu dẫn "Mỗi ô gõ đúng bốn nốt liên tiếp" trước Bài tập 1 không khớp Ô 3** (Ô 3 chỉ có một nốt C5) — người mới có thể khựng lại tưởng thiếu nốt. (Nguồn: audits/ch04_editor.md)
- **Từ chưa được giải thích chính thức lần đầu xuất hiện**: "quãng", "lóng ngóng", "bẻ nhỏ", "chạy", "ô", "ra đòn", "tăm tắp", "bật" (động từ), "tay thuận", "quãng giữa trống" — người mới đoán được nghĩa từ ngữ cảnh nhưng chưa có chú giải chính thức theo CLAUDE.md mục 0. (Nguồn: audits/ch04_reader.md, audits/ch04_reader_v2.md)
- **Câu "Đừng nhìn tay khi gõ nếu có thể" (Lớp 1) gây hoang mang** — người mới chưa chơi lần nào không biết có nên nhìn tay lần đầu hay không, chương không làm rõ mốc thời điểm áp dụng. (Nguồn: audits/ch04_reader_v2.md)
- **Vẫn tồn đọng sau vòng sửa 1**: Hack #2 ở Lớp 3 vẫn trùng lặp Hack #1; câu dẫn "Mỗi ô gõ đúng bốn nốt liên tiếp" trước Bài tập 1 vẫn mâu thuẫn với Ô 3 (chỉ 1 nốt) dù đã thêm câu giải thích phía sau. (Nguồn: audits/ch04_editor_v2.md)
