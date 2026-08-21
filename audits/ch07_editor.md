# Editor — ch07

## BLOCKER
(không có)

## MAJOR

- **Xung đột thuật ngữ "bậc"**: Chương 6 đã dạy chắc "bậc" = số thứ tự nốt trong thang D thứ (D=bậc 1, E=bậc 2… chỉ có 7 giá trị, xem `facts/glossary.md`). Chương 7, ở Lớp 1 đoạn "cầu thang" (dòng 9) và đoạn hai mốc (dòng 11), lại dùng chính từ "bậc" (và cụm "bậc thang nhỏ") để đếm **nửa cung** — một đơn vị hoàn toàn khác, không giới hạn 7 giá trị. Ví dụ nguy hiểm nhất: D3→A3 là "bậc 5" theo nghĩa chương 6 (D-E-F-G-A) nhưng chương 7 gọi đúng cặp đó là "bảy bậc thang nhỏ". Hai con số 5 và 7 cho cùng một cặp nốt, cùng dùng từ "bậc", rất dễ khiến người mới nhầm hai khái niệm làm một.
  → Sửa: đổi từ dùng cho đơn vị cầu thang-nửa-cung sang một từ khác không trùng với glossary, ví dụ "nấc" thay vì "bậc": "mỗi nấc cao vừa đủ một bước chân bé xíu… nốt kế tiếp là nấc ngay phía trên. Bước lên đúng một nấc — đó là một nửa cung" và "bảy nấc thang nhỏ" / "mười nấc thang nhỏ" thay cho "bậc thang nhỏ". Giữ nguyên "bậc" chỉ khi nói đúng nghĩa chương 6 (bậc 1, bậc 2…) như đoạn dòng 7 đang làm đúng.

- **Nợ khái niệm ngoài spec — "quãng 5 đúng" / "quãng 7 thứ"** (dòng 11): Spec chỉ cho phép giới thiệu "Quãng" và "Nửa cung/Cung" (mục "Khái niệm chương này giới thiệu"), và "Được phép dùng" không có tên loại quãng (đúng/thứ/trưởng…). Câu "Nhân tiện, nếu có ai nói với bạn đây là 'quãng 5 đúng'... 'quãng 7 thứ'..." cấy vào đầu người đọc một tầng thuật ngữ chưa được sư phạm hoá (chất lượng quãng), vốn là nguyên liệu thường dùng để dựng hợp âm — đúng phần bị cấm đụng của chương 9. Bản thân câu văn cũng tự thừa nhận "bạn chưa cần nhớ", tức là không phục vụ mục tiêu học nào của chương này.
  → Sửa: cắt hẳn câu "Nhân tiện, nếu có ai nói với bạn đây là 'quãng 5 đúng'... đứng trước nó." Giữ lại đúng hai con số 7 và 10, không gắn tên loại quãng.

## MINOR

- **Hack #2 (Lớp 3)** hơi trùng lặp với nội dung đã nói ở Lớp 1 ("tai trả lời trước, lý thuyết trả lời sau") hơn là một mẹo hành động mới — cân nhắc gộp chung với Hack #1 hoặc thêm một hành động cụ thể hơn (ví dụ: mỗi lần nghe một bài hát bất kỳ, thử đoán "dính" hay "mở" ở đoạn chuyển câu).
- Đoạn mở bài (ẩn dụ khoảng cách nói chuyện) hơi dài so với phần còn lại — có thể rút bớt 1-2 câu để nhường chỗ, không bắt buộc.

## Chuyển fact-checker

- Xác nhận D3→A3 = 7 nửa cung và D3→C4 = 10 nửa cung (chương tự nêu và khớp với cảnh báo trong spec, nhưng vẫn cần xác nhận theo `facts/dkurd.md`).
- Xác nhận tên gọi "quãng 5 đúng" (D3–A3) và "quãng 7 thứ" (D3–C4) có đúng nhạc lý không, phòng khi biên tập viên chỉ đề nghị cắt chứ chưa xác minh đúng/sai để tránh sai sót lan sang bản sửa.
- Xác nhận A3 (ô ①) và C4 (ô ③) đúng là hai tone field gần Ding nhất mà tay chạm tới đầu tiên khi rời tâm trống (câu ở Lớp 1, đoạn mô tả sơ đồ) — đây là khẳng định về vị trí vật lý, cần đối chiếu `facts/dkurd.md`.
- Xác nhận chuỗi tay P-P-T-P-T cho D3(Ding)-E4-F4-G4-A4 ở Bài tập 2 (Lớp 3, `sach_ch07_bai2`) khớp đúng bên trái/phải thật của E4, F4, G4, A4 trên sơ đồ mặt trống (đối chiếu ASCII trong `facts/dkurd.md`, không suy luận từ trí nhớ).

## KẾT LUẬN: SỬA (0 blocker, 2 major)
