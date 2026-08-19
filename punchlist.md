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
