# KHỞI TẠO DỰ ÁN — chạy đúng một lần

Dán prompt này vào Claude Code tại thư mục gốc dự án.

---

Bạn là kiến trúc sư nội dung. Việc của bạn ở phiên này là **dựng khung, KHÔNG viết chương nào**.

## Bước 1 — Kiểm tra
Đọc `CLAUDE.md`. Đọc `facts/dkurd.md`.
Nếu `facts/dkurd.md` còn dòng nào chứa `[CẦN BẠN XÁC NHẬN]` → **DỪNG**, liệt kê các dòng đó, yêu cầu người dùng xác nhận trước. Không tự điền, không tự đoán.

## Bước 2 — Sinh glossary
Tạo `facts/glossary.md`: mọi thuật ngữ nhạc lý sẽ dùng trong sách, mỗi mục gồm — từ tiếng Việt chuẩn dùng trong sách | tương đương tiếng Anh | định nghĩa một câu cho người không biết nhạc. Đây là từ khoá khoá cứng, chương sau không được gọi khác đi.

## Bước 3 — Sinh spec 16 chương
Với mỗi chương, ghi `specs/chNN.md` theo đúng khuôn:

```
# Chương NN — <tiêu đề>

## Mục tiêu học
Đọc xong, người mới LÀM ĐƯỢC gì (động từ hành động, không phải "hiểu về…").

## Tiền đề
Khái niệm người đọc đã có từ chương trước (ghi rõ chương nào).

## Được phép dùng
Danh sách khái niệm writer được dùng ở chương này.

## Cấm đụng
Khái niệm thuộc chương sau. Cấm nhắc, kể cả thoáng qua.

## Khái niệm chương này giới thiệu
Tối đa 2. Nhiều hơn 2 là chương quá tải — tách ra.

## Nốt / hợp âm sẽ dùng
Lấy từ facts/dkurd.md.

## Bài tập
1–3 bài, viết bằng ký hiệu tab.

## Hack ở Lớp 3
Gợi ý hướng — hack phải xài được ngay, không cần nhớ lý thuyết.

## Móc nối
Nhắc lại chương nào, gieo mầm cho chương nào.
```

## Danh sách 16 chương

**HỒI 1 — Chơi được ngay** (không một chữ lý thuyết)
1. Tiếng đầu tiên — chạm Ding, để nó ngân
2. Bàn tay & cú gõ — đầu ngón vs mô ngón cái, gõ chỗ nào trên tone field, ghost note, tắt tiếng, lực
3. Ding là nhà — D3, đi đâu rồi cũng về
4. Bản đồ zigzag — vì sao nốt liền nhau lại nằm hai phía
5. Ba pattern chơi ngay — bài hoàn chỉnh đầu tiên

**HỒI 2 — Vì sao nghe hay** (lý thuyết tối thiểu, giải thích cái tay đã làm)
6. Không có nốt sai — D thứ, 100% diatonic
7. Khoảng cách giữa các nốt
8. A3 → Bb3: gia vị bí mật
9. Hình học trên mặt trống — hợp âm là hình, không phải công thức
10. Công thức vòng hoà thanh

**HỒI 3 — Tự làm nhạc**
11. Groove là hơi thở — handpan là bộ gõ
12. Căng và giãn
13. Ngẫu hứng
14. Sáng tác — mở, thân, kết
15. Jam với người khác
16. Vượt khỏi 10 nốt — rim, gu, chạm nhẹ (KÈM CẢNH BÁO: bẻ cao độ có thể làm hỏng trống)

**Phụ lục**: bảo quản trống · bảng tab đầy đủ · cheat sheet tổng một trang

## Bước 4 — Tự soát khung
Sau khi sinh xong 16 spec, kiểm hai điều rồi báo cáo:
- **Nợ khái niệm**: có chương nào liệt "Tiền đề" là thứ chưa chương nào giới thiệu không?
- **Trùng**: có khái niệm nào xuất hiện ở mục "giới thiệu" của hơn một chương không?

## Bước 5 — DỪNG
Trình bày danh sách 16 chương kèm 1 dòng mục tiêu học mỗi chương. Hỏi người dùng duyệt.
**Không viết chương nào cho tới khi được duyệt.**
