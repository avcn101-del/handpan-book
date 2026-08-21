# Editor — ch07

## BLOCKER
(không có)

## MAJOR
- **Lớp 1 sát/hụt ngưỡng tối thiểu 1200 từ.** Đếm tay theo từng đoạn (8 đoạn văn, từ "Bạn thử nhớ lại..." tới "...không còn phải đoán mò.") ra tổng khoảng **~1194 từ** — dưới mốc 1200 hoặc chỉ sát mép, tuỳ sai số đếm tay. Đây là ranh giới hẹp nên cần đếm lại bằng công cụ tự động (`wc -w` hoặc script đếm từ của dự án) để xác nhận chính xác. → Nếu xác nhận dưới 1200: bổ sung khoảng 50-100 từ, gợi ý chỗ thêm là đoạn 6 (đoạn nói về A3/C4 trên sơ đồ) — có thể mở rộng thêm 1-2 câu mô tả cụ thể hơn cảm giác "tay cùng bên nhưng tai nghe khác quãng" bằng một ví dụ thứ hai (ví dụ so sánh thêm cặp D3–D4 để đối chiếu quãng tám với hai cặp đã nêu), vừa tăng từ vừa củng cố "hình dung bằng chữ".

## MINOR
- **Bb3 nằm trong "Nốt / hợp âm sẽ dùng" của spec nhưng không xuất hiện ở bất kỳ đâu trong chương** (Lớp 1, Lớp 2, Lớp 3, cả hai bài tập đều bỏ qua Bb3). Có vẻ là lựa chọn có chủ đích để tránh đụng "Cấm đụng: nhấn mạnh riêng cặp A3–Bb3" — hợp lý, nhưng nên ghi chú lại (ví dụ trong Móc nối hoặc note nội bộ) lý do bỏ Bb3 để lần soát sau không tưởng là thiếu sót. Không chặn chương vì mục tiêu học vẫn đạt trọn vẹn mà không cần Bb3.
- **Lớp 2 chỉ có 2/5 gạch đầu dòng in đậm từ khoá** (bullet 1 "Quãng"/"nửa cung", bullet 2 "Cung" có bold; bullet 3-5 không có từ nào in đậm). → Sửa: in đậm ít nhất một từ khoá mỗi bullet, ví dụ bullet 3: "Từ Ding (D3): D3–A3 cách **7 nửa cung**, D3–C4 cách **10 nửa cung**".
- **Hack #2 ("dính hay mở trước, quãng gì sau") hơi mềm so với Hack #1** — vẫn dùng được ngay (không cần nhớ lý thuyết) nhưng gần với một lời khuyên tư duy hơn là một mẹo thao tác cụ thể. Không tới mức MAJOR vì không yêu cầu người đọc nhớ số nửa cung hay quy tắc gì để áp dụng, nhưng nếu muốn sắc hơn có thể gắn thêm một hành động cụ thể, ví dụ: "nếu thấy dính hơn D3–A3 → xoè bàn tay ra thêm một nốt đệm; nếu mở hơn D3–C4 → để khoảng lặng dài hơn trước khi gõ tiếp" — biến cảm nhận thành một quyết định chơi đàn cụ thể.
- **Bài tập 2 ở Lớp 1 không mô tả bằng chữ việc tay đổi bên (trái/phải) khi chạy chuỗi D3–E4–F4–G4–A4** — thông tin đổi tay chỉ xuất hiện ở hàng `Tay` trong lưới Lớp 3, không được "hình dung bằng chữ" ở Lớp 1 như đoạn A3/C4 phía trên đã làm rất tốt. Có thể thêm 1 câu ngắn kiểu: "Tay bạn cũng đang nhảy qua nhảy lại theo từng nốt trong chuỗi này — cứ để nó tự nhảy, không cần nghĩ, chỉ tai mới cần chú ý." Không chặn chương vì bài tập vẫn chơi được đúng nhờ lưới, chỉ là bỏ lỡ một chỗ minh hoạ tốt.

## Chuyển fact-checker
- Xác nhận D3→A3 = 7 nửa cung, D3→C4 = 10 nửa cung đúng với facts/dkurd.md mục 5 (có vẻ khớp khi đối chiếu nhanh, nhưng đây là việc của fact-checker kết luận chính thức).
- Xác nhận gán tay P/T trong lưới bài tập 2 (`sach_ch07_bai2`): Ding=P, E4=P, F4=T, G4=P (Ô1), A4=T (Ô2) — có khớp quy tắc "lẻ=phải, chẵn=trái" và có hợp lý về mặt kỹ thuật khi hai nốt liên tiếp cùng bên (Ding→E4 đều P) không.
- Xác nhận việc gọi D3-E4-F4-G4-A4 là "năm nốt đầu tiên tính theo bậc 1-2-3-4-5" đúng theo bảng bậc ở facts mục 5 (D=1, E=2, F=3, G=4, A=5).

## KẾT LUẬN: SỬA (0 blocker, 1 major)
