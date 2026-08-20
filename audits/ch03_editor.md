# Editor — ch03

(Vòng soát thứ 3 — vòng cuối)

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
- Đoạn 3 của Lớp 1 (bắt đầu "Và hôm nay, bạn sẽ gặp 'đứa em gọi tên từ trên gác'...") dài khoảng 270 từ, gộp cả phần giải thích D3/D4 lẫn ẩn dụ bộ chuông gió trong một khối duy nhất — hơi nặng để đọc liền mạch. → Tách làm hai đoạn: đoạn A dừng lại sau câu "...gọi là **quãng tám**." rồi xuống dòng, đoạn B bắt đầu từ "Hình dung cụ thể hơn: nghĩ tới một bộ chuông gió...".
- Chương dùng liền ba lớp ẩn dụ khác nhau cho cùng một cụm ý (mẹ gọi tên từ bếp / em gọi từ gác → chuông gió ống to ống nhỏ → "bước ra ngoài ngó nghiêng rồi về nhà"). Không sai, nhưng hơi nhiều tầng ẩn dụ chồng lên nhau cho một khái niệm chưa phức tạp lắm (quãng tám + chủ âm). → Có thể bỏ bớt ẩn dụ chuông gió (đoạn 3, nửa sau), giữ lại ẩn dụ "mẹ gọi — em gọi" xuyên suốt tới hết chương cho gọn và nhất quán hơn. Không bắt buộc sửa.
- Câu dặn "Hàng 'Tay' hôm nay cứ bỏ qua..." được nhắc gần như nguyên văn ở cả Bài tập 1 và Bài tập 2 (dòng 62 và 74). Ở Bài tập 2 có thể rút ngắn thành một câu tham chiếu ngược ("Hàng Tay vẫn bỏ qua như Bài tập 1 ở trên") cho đỡ lặp — hiện tại đã làm gần đúng vậy rồi, chỉ là câu ở Bài tập 1 hơi dài dòng, không cần sửa nếu không còn vòng sửa nào nữa.

## Chuyển fact-checker
- Hack #2 (Lớp 3): "từ Ding, lướt mô ngón cái sang trái độ một gang tay là chạm ngay D4." Khoảng cách "một gang tay" là số đo vật lý cụ thể, không thấy nguồn trong `facts/dkurd.md` (file không có kích thước trống hay khoảng cách giữa các tone field). Nhờ fact-checker xác nhận số đo này có hợp lý với kích cỡ D Kurd thông thường không, hay nên đổi thành mô tả tương đối không đo lường (ví dụ "chỉ một đoạn ngắn, không cần với xa") để khỏi cam kết một con số có thể sai với trống cỡ khác.

## Đối chiếu spec (tóm tắt kiểm tra)
- Mục tiêu học: đạt — người đọc gõ được Ding–D4–Ding và cảm nhận "về nhà" qua cả hai bài tập, khớp đúng mục tiêu spec.
- Được phép dùng: đúng — chỉ Ding, ngân, chủ âm, D4, quãng tám (khái niệm chương này giới thiệu) xuất hiện trong lời văn.
- Cấm đụng: đạt — không có tên nốt nào khác D3/D4 trong lời văn (chỉ xuất hiện trong sơ đồ, có câu dẫn dắt "coi như chưa tồn tại" đúng yêu cầu ngoại lệ); không có "hợp âm", "nửa cung", "thang âm", "zigzag" bị giảng trong lời văn. Móc nối cuối chương chỉ gieo mầm ("xếp lệch trái–phải") chứ không giảng cơ chế zigzag đầy đủ — đúng tinh thần "gieo mầm chương 4".
- Sơ đồ mặt trống: copy đúng nguyên xi khối ASCII từ `facts/dkurd.md`, không sai một ký tự.
- Nợ khái niệm: không phát hiện. "Mô ngón cái" (Hack #2) đã được dạy ở chương 2, không phải nợ mới. "Hòn đảo âm" dùng lại đúng ẩn dụ tone field đã gieo ở chương 2.
- Đủ 3 lớp: đủ cả ba. Lớp 1 đếm tay được khoảng 1451 từ — nằm trong khoảng 1200–1500 cho phép (sát trần trên, nhưng không vượt).
- Hình dung bằng chữ: đạt — đoạn mô tả "từ Ding, lần sang bên trái, xuống một chút" mô tả đúng hướng đi trên mặt trống thật (khớp vị trí D4 trong sơ đồ: lệch trái, cùng hàng ngang phía dưới Ding), không chỉ liệt kê tên nốt suông.
- Kiểu piano/guitar: không phát hiện. Mọi mô tả vị trí đều theo kiểu "trái/phải, gần/xa" tương ứng vòng tròn, không có mô tả kiểu bàn phím thẳng hàng.
- Giọng văn: đúng tinh thần "cà phê với bạn thân", không lên lớp, ẩn dụ không thô.
- Hack Lớp 3: cả hai hack đều dùng ngay được, không cần nhớ định nghĩa quãng tám/chủ âm — không phải hack kiểu tóm tắt lý thuyết suông.
- Hàng "Tay" trong bảng tab: đây là hàng bắt buộc theo `facts/tab-notation.md` mục 2 ("Hàng Ding và hàng Tay luôn có"). Chương xử lý hợp lý bằng cách giữ hàng nhưng dặn rõ bỏ qua, dời việc dạy P/T sang chương 4 — không tính là vi phạm Cấm đụng.
- Cột bài tập: đếm tay cả hai bảng tab (`sach_ch03_bai1`, `sach_ch03_bai2`) đều đủ 16 cột khớp `ts=4/4`, đúng luật ở `facts/tab-notation.md` mục 2.

## KẾT LUẬN: ĐẠT (0 blocker, 0 major)
