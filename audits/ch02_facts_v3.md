# Fact check — ch02 (v3, tập trung xác nhận nhãn "đen" mới đổi ở Bài tập 1)

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR

1. **Nhãn "tên phách" không nhất quán giữa ch01 và ch02 cho cùng một mẫu gõ.**
   Ở `chapters/ch01.md` dòng 143–149 (Ô 1 · Bài tập 2), mẫu gõ Ding hệt như ch02 Bài tập 1 — 4 tiếng cách đều nhau đúng 4 cột trong ô 16 cột `ts=4/4` — nhưng được ghi tiêu đề là **"móc đơn"**, kèm một hàng phụ "móc đơn | 1 . 2 . 3 . 4 . 5 . 6 . 7 . 8 ." dùng để đếm-số-tay chứ không mô tả nhịp độ cú gõ. Ở ch02 (v3), cùng đúng mẫu gõ "cách đều mỗi 4 cột" này lại đổi tên thành **"đen"**.
   Xét thuần theo toán học và thuật ngữ trường độ tiếng Việt phổ thông (đen = nốt đen = 1 phách; móc đơn = nửa phách), nhãn **"đen" ở ch02 mô tả đúng bản chất nhịp độ của cú gõ** (gõ đúng mỗi phách, không chia nhỏ hơn) — xem phần xác nhận chi tiết bên dưới. Nhãn "móc đơn" ở ch01 cho cùng mẫu gõ là nhãn mang nghĩa khác (mô tả độ phân giải của hàng đếm phụ, không phải nhịp độ cú gõ Ding). Đây không phải lỗi dữ kiện trong bản thân ch02, nhưng là điểm KHÔNG NHẤT QUÁN cách dùng nhãn "tên phách" giữa hai chương — vì `facts/tab-notation.md` không có bảng định nghĩa tường minh "tên phách" ứng với khoảng cách cột nào, nên không có gì trong ch02 vi phạm facts, nhưng nếu người đọc lướt cả hai chương sẽ thấy hai tên gọi khác nhau cho cùng một kiểu gõ. Đề xuất: bổ sung bảng ánh xạ tên phách ↔ số cột/phách vào `facts/tab-notation.md`, hoặc sửa lại ch01 cho khớp — việc này KHÔNG thuộc phạm vi sửa của agent này (cấm sửa chương).

## KHÔNG XÁC MINH ĐƯỢC
(không có mục nào cần xác minh — chương không nêu ví dụ bài hát/tông nào)

## Xác nhận cụ thể: nhãn "đen" ở Bài tập 1 (Ô 1, Ô 2)

Câu hỏi: nhãn "đen" cho lưới gõ đều mỗi 4 cột trong ô 16 cột `ts=4/4` có đúng quy ước `facts/tab-notation.md` không?

Dữ kiện gốc lấy từ `facts/tab-notation.md`:
- Mục 4: "Số ô phải khớp nhịp: 6/8 → 12 cột, 4/4 → 16 cột."
- Mục 2, ví dụ mẫu (`ts=6/8`, 12 cột): hàng phụ "móc đơn | 1 . 2 . 3 . 4 . 5 . 6 ." — 6 số, mỗi số chiếm đúng 2 cột. 6/8 có 6 phách móc đơn (mỗi phách = 1 nốt móc đơn), vậy **1 phách móc đơn = 2 cột**, suy ra **1 cột = 1 đơn vị móc kép (1/16 nốt tròn)**.
- Đối chiếu mục 5 (Ánh xạ JSON): hằng số lưới `G16 = 120` — xác nhận đơn vị cột gốc của toàn hệ thống là đơn vị 16 (móc kép), khớp với suy luận trên, áp dụng chung cho mọi `ts`.

Áp dụng cho `ts=4/4`, 16 cột: 4/4 có 4 phách (mỗi phách là 1 nốt đen). Với quy ước 1 cột = 1 móc kép, ta có 16 cột ÷ 4 phách = **4 cột/phách**, tức mỗi nốt đen (1 phách) = 4 cột. Đây là hệ quả số học trực tiếp từ chính hai dữ kiện đã công bố trong `facts/tab-notation.md` (số cột mỗi ô theo nhịp + tỉ lệ móc đơn/cột trong ví dụ mẫu), không phải suy diễn từ trí nhớ hay giáo trình ngoài.

Đối chiếu lưới thực tế trong ch02 (dòng 66–69, 73–76):
```
D · Ding | ●  ·  ·  ·  ●  ·  ·  ·  ●  ·  ·  ·  ●  ·  ·  ·
```
Bốn tiếng `●` nằm ở cột 1, 5, 9, 13 — cách nhau đúng 4 cột mỗi lần, tức mỗi tiếng rơi đúng vào đầu mỗi phách (đen), không chia nhỏ hơn phách.

**Kết luận**: nhãn **"đen"** cho Ô 1 và Ô 2 của Bài tập 1 là **ĐÚNG** — khớp với quy ước cột/nhịp có thể suy ra trực tiếp từ `facts/tab-notation.md` (mục 2, 4, 5), và khớp đúng mẫu gõ thực tế trong lưới (gõ đều mỗi 4 cột = gõ đều mỗi phách = nốt đen). Không phải BLOCKER.

Lưu ý biên: bản thân `facts/tab-notation.md` không có một bảng tường minh "tên phách → số cột" — kết luận trên là suy luận số học hợp lệ từ các dữ kiện đã có trong file, chứ facts không nói thẳng "đen = 4 cột". Đã ghi thành mục MINOR ở trên để cân nhắc bổ sung bảng này, tránh phải suy luận lại mỗi lần soát.

## Soát 6 mục còn lại

1. **Nốt tồn tại** — Toàn chương chỉ dùng "Ding" (D3, đã xác nhận qua tiêu đề sơ đồ facts "Ding D3"), không xuất hiện tên nốt/số ô nào khác. Đã `grep -noE "\b[A-G]b?[0-9]\b"` toàn file — không có kết quả. SẠCH.
2. **Quãng tám** — Chương chỉ nói "Ding" (không kèm số), đúng tiền lệ đã dùng ở ch01 và khớp vì Ding chỉ có đúng một cao độ (D3) trên trống, không có nguy cơ nhầm quãng tám. SẠCH.
3. **Cấu tạo hợp âm** — Chương không nhắc hợp âm nào (`grep` không ra kết quả cho Am/Bb/Dm/Gm/Edim). Không áp dụng.
4. **Quãng** — Chương không phát biểu về khoảng cách nốt nhạc lý nào (chỉ nói về kỹ thuật tay, lực gõ, ghost note, tắt tiếng). Không áp dụng.
5. **Sơ đồ ASCII** — Chương không chèn sơ đồ mặt trống nào. Không áp dụng.
6. **Lưới tab chạy được** — Đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch02.md --kiem`:
   ```
   ĐẠT tab/sach_ch02_bai1.json  (0 nốt, 8 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch02_bai2.json  (0 nốt, 8 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch02_bai3.json  (0 nốt, 4 ding, 2 ô, 4/4)
   ```
   Không có lỗi. Ký hiệu dùng trong lưới (`●`, `○`, `▬`, `✕`, `P`) đều nằm trong bảng ký hiệu mục 3 của `facts/tab-notation.md`.
7. **Ví dụ bài hát** — Chương không nêu tên bài hát hay tuyên bố về tông nào (dòng 19 có chữ "tông" nhưng nghĩa là "một tông đều đều", không phải tông nhạc/bài hát cụ thể — không phải tuyên bố cần xác minh). Không áp dụng.

## KẾT LUẬN: SẠCH (0 blocker, 0 major, 1 minor — nhãn "đen" đã xác nhận ĐÚNG quy ước)
