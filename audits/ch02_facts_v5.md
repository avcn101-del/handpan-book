# Fact check — ch02

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nhắc tới bài hát nào, không có tuyên bố tông nhạc nào cần xác minh)

## Ghi chú soát
- Mục 1 (nốt tồn tại) & Mục 2 (quãng tám): chương chỉ nhắc tới một nốt duy nhất là Ding trong suốt cả ba lớp và cả ba bài tập. Không có tên nốt A/Bb/C/D/E/F/G nào khác xuất hiện, nên không có nốt sai hay thiếu quãng tám. "Ding" được dùng như tên riêng bất biến (đã map D3 trong facts/glossary.md dòng 11 và facts/dkurd.md mục 1), không cần ghi lại số quãng tám mỗi lần nhắc — nhất quán với cách dùng đã có trong glossary.
- Mục 3 (hợp âm): không có hợp âm nào được gọi tên trong chương này. Không áp dụng.
- Mục 4 (quãng): không có phát biểu nào về khoảng cách nốt (quãng 2, quãng 3 thứ...). Chữ "tông" ở dòng 19 dùng theo nghĩa "giọng điệu lời nói" (ẩn dụ), không phải tuyên bố nhạc lý về tông/scale, nên không đối chiếu bảng quãng.
- Mục 5 (sơ đồ ASCII): chương không chèn sơ đồ mặt trống nào. Không áp dụng.
- Mục 6 (lưới tab chạy được): đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch02.md --kiem`, kết quả:
  ```
  ĐẠT tab/sach_ch02_bai1.json  (0 nốt, 8 ding, 2 ô, 4/4)
  ĐẠT tab/sach_ch02_bai2.json  (0 nốt, 8 ding, 1 ô, 4/4)
  ĐẠT tab/sach_ch02_bai3.json  (0 nốt, 4 ding, 2 ô, 4/4)
  ```
  Không có lỗi.
- Mục 7 (ví dụ bài hát): chương không nhắc tới bài hát cụ thể nào ở tông nào. Không cần xác minh.
- Kiểm tra thêm: ký hiệu `●`, `○`, `▬`, `✕`, `P`/`T` dùng trong ba bài tập đều khớp định nghĩa ở `facts/tab-notation.md` mục 3. Id các khối tab (`sach_ch02_bai1/2/3`) đúng định dạng `sach_chNN_baiM` không dấu, không khoảng trắng theo mục 6 của `facts/tab-notation.md`.

## KẾT LUẬN: SẠCH
