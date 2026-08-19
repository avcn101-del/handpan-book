# HANDPAN D KURD KHÔNG HỌC — Luật dự án

Đây là luật bất biến cho MỌI agent và MỌI session. Vi phạm = dừng, không tự ý diễn giải lại.

## 0. Ngôn ngữ
- **Toàn bộ nội dung sách viết bằng TIẾNG VIỆT.**
- Thuật ngữ tiếng Anh: lần đầu xuất hiện phải kèm giải thích tiếng Việt, sau đó dùng nhất quán theo `facts/glossary.md`.
- Không tự chế thuật ngữ mới. Thiếu từ → thêm vào glossary trước, dùng sau.

## 1. Nguồn sự thật duy nhất
- `facts/dkurd.md` — layout, tên nốt, quãng, hợp âm. **Không agent nào được suy luận từ trí nhớ.**
- `facts/tab-notation.md` — ký hiệu bài tập.
- `facts/glossary.md` — thuật ngữ.
- Sơ đồ ASCII mặt trống: **copy nguyên xi từ `facts/dkurd.md`**. Cấm vẽ lại, cấm biến thể.

## 2. Cấu trúc mọi chương (3 lớp, bắt buộc đủ)
- **Lớp 1 — Chi tiết**: 1200–1500 từ. Câu chuyện/ẩn dụ đời thường → ví dụ âm nhạc cụ thể → hình dung bằng chữ trên mặt trống D Kurd.
- **Lớp 2 — Tóm tắt 30 giây**: 3–5 gạch đầu dòng, in đậm từ khoá. Đứa trẻ 10 tuổi phải hiểu.
- **Lớp 3 — Cheat sheet + Hack**: bảng/list ngắn in được dán tường, + 1–2 hack áp dụng ngay không cần nhớ lý thuyết.

## 3. Ràng buộc cứng
- ❌ KHÔNG khuông nhạc, không nốt nhạc năm dòng.
- ❌ KHÔNG dạy kiểu piano/guitar. Mọi thế bấm mô tả theo layout vòng tròn zigzag.
- ❌ KHÔNG dùng nốt không có trên trống (xem danh sách nốt KHÔNG có trong `facts/dkurd.md`).
- ✅ Mọi khái niệm phải có bài tập gõ được ngay trên D Kurd.
- ✅ Mọi bài tập viết bằng ký hiệu trong `facts/tab-notation.md`, bọc trong khối ```` ```tab ````.
- ✅ **Lưới in trong chương là nguồn duy nhất của bài tập.** File JSON trong `tab/` do `bin/sach_tab_sang_json.py` sinh ra. Cấm mọi agent viết hoặc sửa JSON bằng tay.
- ✅ Mọi tên nốt ghi kèm quãng tám: `A3`, `Bb3`, `C4`… Không viết trống trơn "nốt A".

## 4. Giọng văn
Vui, tự tin, như ngồi cà phê với bạn thân. Không lên lớp. Ẩn dụ tinh, không thô. Luôn nhấn: handpan là thư giãn, không cần hoàn hảo.

## 5. Luật subagent (QUAN TRỌNG — vi phạm là hỏng toàn bộ kiến trúc)
- Session cha **chỉ truyền ĐƯỜNG DẪN FILE** cho subagent. **TUYỆT ĐỐI không paste nội dung chương** vào prompt subagent.
- `chapter-writer` trả về đúng một dòng: `đã ghi chapters/chNN.md, <số> từ`. Không trả nội dung chương.
- 3 agent soát (`fact-checker`, `editor`, `beginner-reader`) chạy **song song, độc lập**. Cấm agent này đọc audit của agent kia.
- Gọi subagent **tường minh bằng tên**. Không để tự động route.

## 6. Phân loại lỗi khi soát
- **BLOCKER** — sai sự thật nhạc lý, dùng nốt không có trên trống, thiếu lớp, vi phạm ràng buộc cứng.
- **MAJOR** — sai thứ tự sư phạm, dùng khái niệm chưa dạy, người mới tắc không đi tiếp được.
- **MINOR** — câu chữ, nhịp văn, ẩn dụ chưa đắt.

Chỉ BLOCKER + MAJOR chặn chương. MINOR gom vào `punchlist.md`, xử một lượt cuối sách.
**Trần 2 vòng sửa/chương.** Quá thì dừng và hỏi người dùng.

## 7. Đường dẫn
- Spec chương: `specs/chNN.md` (đã khoá — không sửa khi đang viết)
- Bản thảo: `chapters/chNN.md`
- Báo cáo soát: `audits/chNN_<agent>.md`
- Lỗi vặt: `punchlist.md`
