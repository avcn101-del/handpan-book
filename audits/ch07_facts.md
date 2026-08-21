# Fact check — ch07

## BLOCKER
(không có)

## MAJOR
- [dòng 15, Lớp 1] "A3 (ô ①) và C4 (ô ③) đều nằm ở bên phải... hai trong số những tone field **gần Ding nhất** mà tay bạn chạm tới đầu tiên khi rời khỏi tâm trống."
  → Claim này không có căn cứ trong `facts/dkurd.md`. Mục 2 mô tả chín tone field "xếp thành **vòng** quanh Ding" (một vòng, ngụ ý khoảng cách tương đương nhau), không có bảng hay phát biểu nào xếp hạng "nốt nào gần Ding hơn nốt khác". Hơn nữa, nhìn chính sơ đồ ASCII được in ngay bên dưới đoạn văn này: ④ D4 và ③ C4 nằm ở hàng ngay sát Ding, còn ② Bb3 và ① A3 nằm ở hàng xa hơn một bậc. Nếu suy theo cấu trúc hàng của chính sơ đồ, C4 mới là ô sát Ding nhất bên phải, còn A3 nằm xa Ding hơn C4 một hàng — ngược với thứ tự "A3 và C4 đều gần Ding nhất" mà văn bản khẳng định.
  → Đề nghị: bỏ khẳng định xếp hạng khoảng cách vật lý tới Ding (không có trong facts/dkurd.md), hoặc diễn đạt lại thành "A3 và C4 đều nằm ở bên phải, cùng phía với nhau" mà không so bậc gần/xa với Ding.
  (căn cứ: facts/dkurd.md mục 2 — "chín tone field xếp thành vòng quanh Ding"; đối chiếu cấu trúc hàng của sơ đồ ASCII mục 2)

## MINOR
(không phát hiện)

## KHÔNG XÁC MINH ĐƯỢC
- Không có ví dụ bài hát nào được nêu trong chương này (mục 7 không áp dụng).

## KẾT LUẬN: CÓ LỖI (0 blocker, 1 major)

Ghi chú cho người sửa:
- **Nốt tồn tại**: SẠCH. Toàn bộ nốt xuất hiện (D3, A3, Bb3, C4, D4, E4, F4, G4, A4, C5 dùng trong chương: D3, A3, C4, D4, E4, F4, G4, A4, C5) đều nằm trong 10 nốt hợp lệ, không có Bb4/D5/B natural/dấu thăng giáng nào.
- **Quãng tám**: SẠCH. Mọi tên nốt đều kèm số quãng tám đúng.
- **Cấu tạo hợp âm**: không áp dụng — chương này không gọi tên hợp âm nào.
- **Quãng**: SẠCH. D3→A3 = 7 nửa cung ("quãng 5 đúng"), D3→C4 = 10 nửa cung ("quãng 7 thứ") — khớp chính xác `facts/dkurd.md` mục 5, dùng đúng nốt tuyệt đối có octave (không mắc lỗi áp bảng bậc trừu tượng vào nốt cụ thể như bản trước). Chuỗi D3–E4–F4–G4–A4 được framing rõ là "tính theo bậc" (tên bậc, không phải khoảng cách nửa cung thật), và văn bản không gán số nửa cung sai cho chuỗi này — an toàn.
- **Sơ đồ ASCII**: SẠCH. Đã `diff` khối ASCII (dòng 17–29) với `facts/dkurd.md` mục 2 — khớp 100% từng ký tự.
- **Lưới tab chạy được**: SẠCH. `python3 bin/sach_tab_sang_json.py chapters/ch07.md --kiem` trả về:
  ```
  ĐẠT tab/sach_ch07_bai1.json  (2 nốt, 2 ding, 2 ô, 4/4)
  ĐẠT tab/sach_ch07_bai2.json  (4 nốt, 1 ding, 2 ô, 4/4)
  ```
- **Ví dụ bài hát**: không có trong chương này.

Duy nhất một điểm MAJOR: câu văn ở dòng 15 gán nhãn "gần Ding nhất" cho A3 và C4 — một khẳng định về khoảng cách vật lý tới Ding không được `facts/dkurd.md` xác nhận, và có vẻ mâu thuẫn với cấu trúc hàng của chính sơ đồ ASCII in ngay sau đó. Không phải lỗi nốt/quãng tám/hợp âm/quãng âm nhạc lý (các phần đó đều đúng), nhưng là một phát biểu về layout vật lý cần người viết xem lại hoặc làm rõ nguồn.
