# Editor — ch07

## BLOCKER
(không có)

## MAJOR

- **Lớp 1 vượt trần từ.** Đếm tay theo từng đoạn văn (12 đoạn văn xuôi, không tính khối ASCII và bảng): tổng ≈ **1554 từ**, vượt trần 1500 từ mà CLAUDE.md quy định (1200–1500 = MAJOR nếu ngoài khoảng). Mức vượt nhỏ (~3–4%) nhưng vẫn ngoài khoảng.
  → Sửa cụ thể: ba đoạn kết (dòng 38, 40, 42 trong file) đang lặp lại gần như cùng một ý theo ba cách khác nhau — "quãng nhỏ mượt, quãng lớn nhấn" xuất hiện gần như nguyên văn ở cả đoạn dòng 38 ("quãng nhỏ tạo cảm giác mượt, trôi chảy; quãng lớn tạo điểm nhấn, một cú nhảy đáng chú ý") và đoạn dòng 42 ("quãng nhỏ cho cảm giác trôi chảy, quãng lớn tạo cú nhấn đáng chú ý"). Gộp hai đoạn này thành một, bỏ đoạn dòng 42 hoặc dòng 38, sẽ cắt được ~80–90 từ và đưa Lớp 1 về dưới 1500 mà không mất ý nào.

- **Dùng từ tiếng Anh "layout" thay vì thuật ngữ tiếng Việt đã chốt trong glossary.** Ở đoạn dòng 32: *"bạn cứ để tay đi theo layout, còn tai thì tự nghe ra quãng, không cần đo đạc gì thêm."* `facts/glossary.md` dòng 9 đã chốt: Layout → **"Sơ đồ mặt trống"** là từ tiếng Việt chuẩn, "mọi chương dùng đúng từ tiếng Việt ở cột đầu, không đổi cách gọi giữa các chương" (CLAUDE.md mục 0 + glossary.md). Toàn bộ phần còn lại của chương đều dùng đúng "sơ đồ mặt trống", chỉ riêng chỗ này lọt từ tiếng Anh trần trụi không giải thích.
  → Sửa cụ thể: đổi thành *"bạn cứ để tay đi theo sơ đồ mặt trống, còn tai thì tự nghe ra quãng, không cần đo đạc gì thêm."*

## MINOR

- Glossary (`facts/glossary.md`) chưa có mục cho các nhãn "quãng 2 trưởng / quãng 3 thứ / quãng 4 đúng / quãng 5 đúng / quãng 6 thứ / quãng 7 thứ" mà chương này dùng (theo đúng yêu cầu của spec ch07, mục Bài tập: "quãng 2 trưởng", "quãng 3 thứ"). Không phải lỗi của chương — chương đã khéo léo giảm nhẹ rủi ro bằng câu "Tên gọi 'trưởng', 'thứ', 'đúng' nghe hơi kỹ thuật, bạn chưa cần nhớ ngay" — nhưng nên bổ sung các nhãn này vào glossary.md để các chương sau (đặc biệt ch09 khi dựng hợp âm) không phải định nghĩa lại từ đầu.
- Câu "hai nốt E4 và F4 đứng cạnh nhau về mặt hình dạng nhưng lại nằm khác bên" (dòng 15) — cụm "về mặt hình dạng" hơi tối nghĩa, nên đổi thành "về mặt vị trí trên sơ đồ" cho rõ, tránh người đọc hiểu nhầm "hình dạng" là hình dạng nốt nhạc.
- Cụm "chất rất riêng của D Kurd" xuất hiện ở cả đoạn dòng 36 và phần Móc nối cuối chương — đúng tinh thần "gieo mầm chương 8" mà spec yêu cầu, nhưng lặp lại hai lần trong cùng một chương hơi thừa. Có thể bỏ một lần để tiết kiệm từ (cũng góp phần giải quyết vấn đề vượt trần Lớp 1 ở trên).

## Chuyển fact-checker
(không có mục nào cần chuyển — toàn bộ số nửa cung, tên quãng (quãng 2 trưởng, quãng 3 thứ, quãng 4 đúng, quãng 5 đúng, quãng 6 thứ, quãng 7 thứ) khớp nguyên văn với bảng ở `facts/dkurd.md` mục 5; sơ đồ ASCII copy đúng 100% từ `facts/dkurd.md`; các quãng tám A3↔A4 = 12 nửa cung là số học chuẩn, không có gì đáng ngờ.)

## Nhận xét thêm (không chặn chương)

- **Đúng spec**: chương bám sát mục tiêu học (nghe/gọi tên quãng, phân biệt dính/mở), không lấn sang cấu tạo hợp âm (ch09) hay vòng hoà thanh (ch10). Từ "hợp âm" chỉ được nêu tên một lần như tham chiếu tương lai ("một chuỗi hợp âm hay một vòng lặp — những chuyện đó dành cho các chương sau"), không dạy nội dung — chấp nhận được.
- Đúng yêu cầu "Cấm đụng cặp A3–Bb3 như chữ ký D Kurd": chương không hề nêu đích danh cặp này, kể cả trong bài tập 2 (dùng chuỗi D3–E4–F4–G4–A4 đúng như spec chỉ định, để lộ cặp E4–F4 chứ không phải A3–Bb3).
- **Kiểu piano/guitar**: không có. Chương chủ động cảnh báo đúng chỗ dễ hiểu lầm nhất — "khoảng cách bạn nghe được không nhất thiết trùng với khoảng cách tay bạn phải di chuyển trên mặt trống" — đây là điểm mạnh, giúp người đọc quen bàn phím/guitar không áp nhầm trực giác thẳng hàng vào D Kurd.
- **Hình dung bằng chữ**: tốt — có mô tả cụ thể vị trí ⑤/⑥ hai bên Ding, ví dụ ①A3 và ⑧A4 ở hai đầu xa nhau nhất về vị trí tay dù cùng tên nốt.
- **Hack Lớp 3**: cả hai hack đều dùng được ngay không cần nhớ lý thuyết — Hack #1 (chỉ nhớ 2 mốc cực trị D3–E4 và D3–C4) và Hack #2 (hỏi tai trước, hỏi tên sau) đều là quy tắc hành động cụ thể, không phải tóm tắt lý thuyết suông.
- Lưới tab (bài tập 1, 2) đúng định dạng `facts/tab-notation.md`: đủ 16 cột cho nhịp 4/4, hàng Ding/Tay luôn có, id đặt đúng mẫu `sach_ch07_baiN`, chỉ dùng nốt trong bảng (D3, E4, F4, G4, A4) đúng với danh sách "Nốt sẽ dùng" của spec.

## KẾT LUẬN: SỬA (0 blocker, 2 major)
