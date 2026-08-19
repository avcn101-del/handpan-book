# Editor — ch01

## BLOCKER
(không có)

## MAJOR

- **Sơ đồ mặt trống bắt buộc (Lớp 1, dòng 27–40) hiển thị đủ 9 tên nốt (C5, A4, G4, F4, E4, D4, C4, Bb3, A3) và số thứ tự ①–⑨, trong khi specs/ch01.md liệt "tên nốt khác D3" và "tone field (số ô quanh Ding)" vào mục Cấm đụng.** Bài đã cố hoá giải bằng câu "Bạn không cần đọc chữ trong mấy ô còn lại đâu — coi như chưa nhìn thấy chúng cũng được" (dòng 42), đây là cách xử lý tốt nhất có thể vì CLAUDE.md mục 1 bắt buộc copy sơ đồ nguyên xi, không cho vẽ lại hay lược bớt. Nhưng xét đúng câu chữ của spec, khái niệm vẫn "lộ" ra trang giấy trước khi được dạy — MAJOR theo đúng tiêu chí "nợ khái niệm".
  → **Sửa**: đây là xung đột ở cấp dự án (CLAUDE.md bắt buộc sơ đồ đầy đủ ↔ spec ch01 cấm nêu tên nốt khác D3), không phải lỗi do người viết chương tự ý thêm. Đề xuất bổ sung một dòng ngoại lệ tường minh vào specs/ch01.md, kiểu: "Ngoại lệ: sơ đồ mặt trống bắt buộc copy nguyên xi từ facts/dkurd.md vẫn hiển thị đủ 9 tên nốt — không tính là vi phạm Cấm đụng miễn có câu dẫn dắt yêu cầu người đọc bỏ qua, như bản ch01 hiện tại đã làm." Nếu không sửa spec, mọi chương mở đầu có sơ đồ sau này sẽ tiếp tục dính lỗi này.

- **Hàng "Tay" trong cả hai khối bài tập hiển thị ký hiệu "P"** — đúng thứ bị liệt vào Cấm đụng của spec ("tay phải/trái (P/T)"). Bài đã có 2 câu vô hiệu hoá, nhưng câu ở dòng 79 nói **sai chủ đề chương 2**: "Hàng 'Tay' bên dưới cũng bỏ qua luôn — chuyện tay nào gõ để dành cho chương 2." Theo mục Móc nối của chính specs/ch01.md, chương 2 dạy "cách gõ bằng đầu ngón/mô ngón cái" (kỹ thuật chạm tay), **không phải** chuyện chọn tay phải hay tay trái (khái niệm P/T, theo glossary.md gắn với zigzag — một chương xa hơn nhiều). Câu này hứa sai nội dung chương sau, người đọc qua chương 2 sẽ không thấy câu trả lời cho "tay nào" như đã được hẹn, gây hụt hẫng/mất tin cậy vào mạch sách.
  → **Sửa cụ thể**: đổi câu ở dòng 79 thành, ví dụ: "Hàng 'Tay' bên dưới cũng bỏ qua luôn — đó là chi tiết kỹ thuật của lưới bài tập, không phải điều bạn cần lo hôm nay." (bỏ hẳn vế "để dành cho chương 2" vì không đúng chủ đề chương 2). Câu vô hiệu hoá thứ hai ở dòng 81 ("Ký hiệu 'P' ở hàng Tay chỉ là mặc định kỹ thuật... không có nghĩa là bạn phải dùng tay phải") đã ổn, giữ nguyên.

## MINOR

- "handpan" xuất hiện lần đầu ở dòng 7 ("Chơi handpan bắt đầu y hệt vậy") mà không có chú thích tiếng Việt kèm theo, trong khi CLAUDE.md mục 0 yêu cầu thuật ngữ tiếng Anh lần đầu xuất hiện phải kèm giải thích. Từ này không có trong `facts/glossary.md`. Có thể chấp nhận vì đây là tên sản phẩm ngay trong tựa sách, nhưng để đúng luật thì nên sửa, ví dụ: "Chơi handpan (cây trống kim loại hình đĩa bạn đang cầm) bắt đầu y hệt vậy...".
- Đoạn giải thích sơ đồ (dòng 42) đặt câu "bạn không cần đọc chữ trong mấy ô còn lại" *sau* khi đã show cả sơ đồ — có thể cân nhắc đặt câu dẫn dắt "chỉ cần nhìn đúng một điểm ở giữa" ngay trước khối sơ đồ, để mắt người đọc không kịp lướt qua 9 tên nốt trước khi được hướng dẫn bỏ qua. Không bắt buộc sửa, chỉ là gợi ý UX câu chữ.

## Chuyển fact-checker
(không có nội dung nào cần fact-checker xác minh riêng — mọi khẳng định về Ding/D3 khớp với facts/dkurd.md ở mức đọc thông thường của editor.)

## KẾT LUẬN: SỬA (0 blocker, 2 major)
