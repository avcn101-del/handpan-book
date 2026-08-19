# Editor — ch03

## BLOCKER
(không có)

## MAJOR
- **Lớp 1 sát/dưới ngưỡng từ tối thiểu.** Đếm tay 9 đoạn văn Lớp 1 ra khoảng **~1180 từ**, thấp hơn hoặc sát đáy khoảng 1200–1500 từ quy định ở CLAUDE.md mục 2. Con số đếm tay có sai số, nhưng đủ gần ngưỡng để đáng lo. → Đếm lại bằng công cụ chính xác; nếu dưới 1200, bổ sung 1–2 câu ở đoạn "Đừng lo nếu lúc đầu tay bạn hơi lóng ngóng..." (đoạn cuối Lớp 1) — ví dụ thêm một tình huống đời thường thứ hai về quãng tám (chuông nhà thờ ở gần nghe trầm, ở xa vọng lại nghe cao hơn — vẫn cùng một tiếng chuông) để vừa kéo dài vừa củng cố khái niệm, không phải nhồi chữ vô nghĩa.

- **Hai bài tập thiếu yếu tố bắt buộc theo `facts/tab-notation.md`:**
  1. Mục 2 quy định "Ghi tiêu đề mỗi ô: `Ô N · <nhịp> · <tên phách>` (vd `Ô 3 · 4/4 · móc đơn`)". Cả khối `sach_ch03_bai1` lẫn `sach_ch03_bai2` không có dòng tiêu đề này trước khối ```` ```tab ````.
  2. Mục 4 "Luật viết bài tập" quy định phải "Ghi tốc độ gợi ý bằng chữ (chậm — vừa — nhanh)". Hướng dẫn bài tập 1 chỉ viết "gõ ở lực bình thường, không vội" — không có chữ chậm/vừa/nhanh rõ ràng; bài tập 2 không đề cập tốc độ.
  → Thêm dòng `Ô 1 · 4/4 · móc kép` (16 cột cho 4/4 tương ứng móc kép — nhờ fact-checker xác nhận đúng tên phách) ngay trước mỗi khối code của cả hai bài tập, và thêm câu tường minh kiểu "Gõ ở tốc độ chậm, không cần đúng nhịp máy" trong phần dẫn của cả bài 1 và bài 2.

## MINOR
- Hàng `Tay` ở cả hai bài tập in cụ thể `P` tại mọi vị trí gõ, trong khi văn bản ngay phía trên dặn "Hàng 'Tay' hôm nay cứ bỏ qua, dùng tay nào thuận cũng được". Mâu thuẫn nhỏ: nếu bảo bỏ qua thì tại sao vẫn in giá trị cụ thể? → Thêm ngoặc giải thích ngắn "(P ở đây chỉ là giá trị mặc định của định dạng in, không phải hướng dẫn tay bạn phải dùng)" ngay sau câu dặn bỏ qua, để tránh trẻ 10 tuổi thắc mắc.
- Hack #2 ở Lớp 3 ("gõ Ding rồi gõ D4 ngay sau, lặp lại") gần như lặp lại y hệt Bài tập 1, ít giá trị gia tăng so với một hack độc lập. → Đổi thành mẹo khác, ví dụ mẹo sờ tay tìm D4 không cần nhìn: "Từ Ding, lướt ngón cái sang trái độ một gang tay là chạm D4 — không cần nhìn trống."
- Câu dẫn vào sơ đồ ("Đây là sơ đồ đầy đủ của mặt trống D Kurd — bạn sẽ thấy khá nhiều tên nốt lạ...") tuy đã có câu dặn bỏ qua (đúng yêu cầu ngoại lệ bắt buộc của spec) nhưng hơi dài dòng, có thể khiến người đọc tò mò các nhãn còn lại. Không bắt buộc sửa, chỉ ghi vào punchlist nếu rảnh.

## Chuyển fact-checker
- Xác nhận mô tả vị trí D4 "ngay dưới bên trái Ding" (Lớp 1, đoạn sau sơ đồ) khớp chính xác với `facts/dkurd.md` mục 2 — nhìn bằng mắt thấy khớp nhưng cần người có thẩm quyền xác nhận chính thức.
- Xác nhận cách diễn giải cảm tính về "quãng tám" (Lớp 1 đoạn 3 và đoạn bài tập 1, Lớp 2, Lớp 3) không sai lệch nhạc lý, dù không dùng số nửa cung (đúng yêu cầu Cấm đụng của chương).
- Xác nhận nhịp bài tập 2: Ding tại cột 1 và 3 (cách nhau 1 ô trống), D4 tại cột 5 và 7, Ding giữ (▬) từ cột 9 đến 16 — có đúng khớp ý "Ding hai lần — D4 hai lần — Ding một lần dài (giữ)" của spec bài tập 2, và đúng chuẩn 16 cột cho nhịp 4/4 không.
- Xác nhận việc thiếu dòng tiêu đề "Ô N · <nhịp> · <tên phách>" có làm hỏng việc parse của `bin/sach_tab_sang_json.py` hay chỉ là quy ước trình bày — ảnh hưởng tới việc mục MAJOR thứ hai ở trên có nên nâng thành BLOCKER hay không.

## KẾT LUẬN: SỬA (0 blocker, 2 major)
