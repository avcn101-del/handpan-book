# Editor — ch02

## BLOCKER
(không có)

Đủ 3 lớp (Lớp 1 / Lớp 2 / Lớp 3 đều có mặt, đúng heading). Không dùng khuông nhạc. Không có mô tả kiểu piano/guitar (chương chỉ dùng một nốt Ding, không có di chuyển ngang hàng phím). Không dùng nốt ngoài D3/Ding. Lớp 1 ước tính ~1380–1400 từ (đếm tay theo từng câu, sai số vài %) — nằm trong khoảng 1200–1500, không vi phạm.

## MAJOR

- **Vi phạm mục "Cấm đụng" — nhắc tới ký hiệu P/T (tay phải/trái) trong lời văn.** Spec ch02 cấm rõ: "tay phải/trái (P/T) như ký hiệu chính thức... cấm NHẮC/GIẢNG các khái niệm này trong lời văn." Chỉ có ngoại lệ cho sơ đồ mặt trống (tone field), không có ngoại lệ cho hàng "Tay" trong lưới tab.
  Ở phần giới thiệu Bài tập 1 (dòng ~62 trong file), chương viết: *"Hàng 'Tay' bên dưới toàn P, bạn bỏ qua cũng được — hôm nay là chuyện đổi kiểu chạm chứ không phải đổi tay trái phải."*
  Câu này nêu đích danh ký tự `P` và gọi tên khái niệm "tay trái phải" — đúng thứ bị cấm giảng ở lớp lời văn của chương này (khái niệm này glossary xếp riêng, dự kiến dạy ở chương sau, theo "Móc nối" của ch02 cũng chỉ hẹn dạy tone field, không hẹn dạy P/T).
  → **Sửa cụ thể**: bỏ chữ "toàn P" và cụm "tay trái phải", đổi thành trung tính, ví dụ: *"Hàng 'Tay' bên dưới bạn bỏ qua cũng được — hôm nay là chuyện đổi kiểu chạm, chưa cần để ý gì thêm."* Đồng thời rà lại câu ở "Cách đọc lưới bài tập" (dòng 56): *"Hàng 'Tay' nằm dưới hàng Ding là thứ sách sẽ dùng kỹ hơn ở các chương sau; hôm nay bạn chưa cần để ý tới nó, gõ bằng tay nào thuận cũng được."* — câu này ổn (không nêu tên P/T), giữ nguyên, chỉ cần đồng bộ câu ở Bài tập 1 theo đúng tinh thần trung tính này.

## MINOR

- Nhãn tên phách "đen" (Ô 1, Ô 2 của Bài tập 1) và "tự do" (Ô 1, Ô 2 của Bài tập 3) xuất hiện trong tiêu đề ô nhưng không được giải thích ở phần "Cách đọc lưới bài tập" — phần đó chỉ giải thích `ts=4/4`, cột, `●`, `·`, khái niệm Ô, hàng Tay, và hẹn giải thích riêng `▬`/`✕`. Người đọc lần đầu có thể hơi khựng lại vì thấy nhãn lạ chưa được định nghĩa (dù không cản trở việc gõ vì vị trí `●` đã rõ ràng). → Thêm một câu ngắn trong phần đọc lưới, kiểu: *"Chữ sau `ts=4/4` (như 'đen' hay 'tự do') chỉ là tên gọi cho cách chia nhịp của ô đó — bạn không cần nhớ, cứ nhìn `●` mà gõ."*
- Lớp 1 dài sát trần trên (ước tính ~1385–1400/1500 từ). Không sai spec, nhưng nếu vòng sửa sau cần thêm ý, nên cắt bớt trước ở đoạn giải thích vật lý rung động (đoạn dòng 9) vì đây là đoạn duy nhất mang tính "giải thích kỹ thuật" hơn là "hình dung/cảm nhận" — cắt sẽ ít ảnh hưởng mạch chuyện nhất.
- Đoạn "Cách đọc lưới bài tập" là nội dung khá dài, mang tính hướng dẫn đọc ký hiệu chứ không phải nội dung âm nhạc của chương — nên kiểm tra chéo với ch01 (bản thảo, không chỉ spec) xem phần hướng dẫn đọc lưới đã xuất hiện ở đó chưa, tránh lặp nguyên xi giữa hai chương liền kề.

## Chuyển fact-checker

- Đoạn giải thích vật lý ở Lớp 1 (dòng 9): *"đúng tâm thì cả vùng rung đều nhau, lệch tâm thì rung lệch, tiếng ra không tròn"* — xác nhận lại tuyên bố về âm học/rung động này có chính xác không trước khi giữ nguyên trong bản in.
- Bài tập 3: lưới `● ▬ ▬ ✕` gói gọn cú gõ + giữ + tắt trong đúng 4 cột (= 1 nhịp trong ts=4/4), nhưng lời dẫn phía trên viết: *"cú gõ, hai cột giữ, và cú tắt cộng lại vừa tròn một nhịp, đúng như chỉ dẫn 'ngân một nhịp rồi tắt'"* — trong khi hướng dẫn bài tập gốc (spec) là "để ngân 1 nhịp, rồi tắt tiếng". Nhờ xác nhận cách đọc "ngân 1 nhịp rồi tắt" có khớp với việc tắt xảy ra ngay trong cùng một nhịp (cột thứ 4) hay về mặt thời gian phải là gõ xong, ngân trọn một nhịp riêng, rồi mới tắt ở nhịp kế — hai cách hiểu cho ra độ dài "ngân" khác nhau.
- Tên phách "đen" (Bài tập 1) và "tự do" (Bài tập 3) — so với `facts/tab-notation.md` chỉ có ví dụ "móc đơn", chưa rõ danh sách tên phách hợp lệ đầy đủ là gì, và "tự do" liệu có phải một tên phách hợp lệ hay đang lẫn với khái niệm tốc độ tự do (rubato). Nhờ đối chiếu với chuẩn tab-notation hoặc app để xác nhận.

## KẾT LUẬN: SỬA (0 blocker, 1 major)
