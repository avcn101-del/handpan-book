# Editor — ch06

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
- Ẩn dụ "hộp gia vị" được nhắc lại gần như nguyên văn ở 7/9 đoạn Lớp 1 (dòng 5, 7, 9, 28, 30, 34, 36) → hơi dày, đọc có cảm giác lặp máy. Sửa: giữ ẩn dụ ở 2-3 đoạn mở/đóng, các đoạn giữa (đặc biệt đoạn dòng 9 nói về 7 tên nốt gốc, đoạn dòng 30 nói về bài tập 1) có thể bỏ chữ "hộp gia vị" và diễn đạt trực tiếp bằng ngôn ngữ nhạc cụ (tone field, thang âm) — đỡ trùng, câu vẫn rõ.
- Đoạn dòng 11 ("Đây chính là lúc bạn nhìn lại toàn bộ mặt trống một lần nữa...") và đoạn dòng 28 ("Nhìn sơ đồ này, bạn không cần phân biệt...") nói chung chung về việc "nhìn sơ đồ" nhưng không mô tả cụ thể một đường đi/hình dạng nào trên mặt trống (ví dụ: "đi một vòng từ ① A3 zigzag qua hai bên lên tới ⑨ C5 ở đỉnh — mỗi ô trên đường đi đó đều nằm trong hộp gia vị này"). Hiện tại người đọc chỉ được nhắc "nhìn bản đồ" chứ không được dắt tay đi cụ thể. Sửa: thêm 1 câu mô tả bằng chữ một đường đi cụ thể trên sơ đồ (ví dụ theo đúng thứ tự zigzag đã học ở chương 4) ngay sau đoạn dòng 11, để nối chữ với hình rõ hơn thay vì chỉ dựa vào khối ASCII.
- Câu "Bậc là số thứ tự của một nốt trong thang âm... D là bậc 1, E là bậc 2, F là bậc 3..." (dòng 32) liệt kê hơi dồn dập 7 cặp tên-số liên tiếp trong một câu dài — với tiêu chí "đứa trẻ 10 tuổi hiểu" ở Lớp 2, đoạn Lớp 1 này hơi nặng thông tin. Sửa: tách thành danh sách ngắn hoặc bảng nhỏ ngay trong Lớp 1 (giống cách chương dùng bảng ở Lớp 3) thay vì nhồi vào một câu văn xuôi.

## Chuyển fact-checker
- Bài tập 1, Ô 1 (`sach_ch06_bai1` bar=1): nốt C5 (⑨) được gán tay `P` (phải) khi là cú gõ đầu tiên trong ô, không có nốt liền trước để "tự động đổi tay". Theo hack chương 4 ("lẻ phải, chẵn trái, **9 ở đỉnh**, D ở giữa"), C5 dường như được tách riêng khỏi quy tắc lẻ/chẵn — cần xác nhận quy ước tay cho C5 khi nó đứng đầu câu (không phải nốt tiếp nối trong chuỗi chạy thang) có đúng là `P` hay tuỳ chọn tay nào cũng được.
- Dòng 32: chương gọi thẳng "F là bậc 3", "Bb là bậc 6", "C là bậc 7" mà không kèm dấu giáng (♭3, ♭6, ♭7) như cách `facts/dkurd.md` mục 5 ghi. Cần xác nhận việc bỏ ký hiệu ♭ ở mức giới thiệu bậc "nhẹ" của chương 6 có gây hiểu lầm hay tạo nợ kiến thức sai cho chương 7 (khi chương 7 phải dùng số nửa cung cụ thể) hay không — nếu cách gọi "bậc 3/6/7" trơn không nhất quán với cách sách sẽ dùng về sau thì nên thống nhất ngay từ đây.

## KẾT LUẬN: ĐẠT (0 blocker, 0 major)
