# Editor — ch07

## BLOCKER
(không có)

## MAJOR

- **Lớp 1 sát/khả năng vượt trần 1500 từ.** Đếm tay theo đoạn: đoạn 1 (dòng 5) ~124 từ, đoạn 2 (dòng 7) ~108, đoạn 3 (dòng 9) ~148, đoạn 4 (dòng 11) ~206, đoạn 5 (dòng 13) ~163, đoạn 6 (dòng 15) ~85, đoạn 7 (dòng 32) ~98, đoạn 8 (dòng 34) ~118, đoạn 9 (dòng 36) ~192, đoạn 10 (dòng 38) ~100, đoạn 11 (dòng 40) ~158 → tổng ~1500 từ, đúng mép trên cùng của khoảng 1200–1500, nhiều khả năng công cụ đếm tự động ra số cao hơn (dấu câu dính từ, gạch ngang…). → Cắt gọn để có biên an toàn:
  - Gộp/bỏ bớt đoạn ví dụ A3–A4 (dòng 34, ~118 từ): đoạn này lặp lại đúng ý "khoảng cách trên sơ đồ ≠ khoảng cách âm thanh" đã minh hoạ bằng cặp E4–F4 ngay đoạn trước (dòng 32). Giữ một trong hai đủ, không cần cả hai.
  - Rút gọn đoạn 10–11 (dòng 38, 40): hai đoạn này nói lại cùng một ý ("quãng nhỏ mượt/lớn nhấn", "đây là kỹ năng nền quan trọng") theo hai cách diễn đạt khác nhau — chọn một, cắt còn khoảng 100 từ tổng thay vì 258 từ như hiện tại.

- **Cột "Tên quãng" trong bảng cheat sheet Lớp 3 (dòng 52–59) đưa thuật ngữ "trưởng/thứ/đúng" thành thông tin trang trọng in trên tờ dán tường, nhưng:**
  1. Các tên này không nằm trong "Khái niệm chương này giới thiệu" của spec (spec chỉ cho phép dạy Quãng, Nửa cung/Cung — không có "trưởng/thứ/đúng").
  2. Không có mục nào cho "trưởng", "thứ", "đúng" trong `facts/glossary.md`.
  3. Chính Lớp 1 (dòng 11) đã nói thẳng "Tên gọi 'trưởng', 'thứ', 'đúng' nghe hơi kỹ thuật, bạn chưa cần nhớ ngay" — mâu thuẫn với việc đưa nó thành cột chính thức trên cheat sheet in dán tường, nơi mọi thứ phải "dùng ngay không cần nhớ lý thuyết".
  → Sửa: bỏ cột "Tên quãng" khỏi bảng Lớp 3, chỉ giữ "Nốt / Số nửa cung / Cảm giác" (đúng tinh thần Hack #1 và #2 của chính chương: tai trả lời trước, tên gọi không cần thiết). Nếu muốn giữ, phải thêm "trưởng/thứ/đúng" vào `facts/glossary.md` trước và có một câu giải thích gốc gác trong Lớp 1 thay vì gạt đi.

## MINOR

- Ví dụ A3–A4 (dòng 34) dùng nốt A3, trong khi "Nốt / hợp âm sẽ dùng" của spec ch07 chỉ liệt D3, E4, F4, G4, A4, Bb3, C4 — A3 không nằm trong danh sách này (không sai nhạc lý, A3 có trên trống, chỉ là lấn nhẹ ra ngoài phạm vi nốt đã khai báo cho chương). → Nếu giữ ví dụ minh hoạ quãng tám, đổi sang cặp D3–D4 (đã nằm sẵn trong danh sách nốt được phép dùng, cũng là quãng tám 12 nửa cung, cũng minh hoạ đúng ý "vị trí trên sơ đồ không liền kề dù cùng tên nốt").
- Bullet 3 ở Lớp 2 (dòng 46) nhồi 6 con số liền nhau (E4=2, F4=3, G4=5, A4=7, Bb3=8, C4=10) trong một gạch đầu dòng — hơi dày cho tiêu chí "đứa trẻ 10 tuổi hiểu trong 30 giây". → Rút còn 2 mốc tiêu biểu (D3–E4 = 2, D3–C4 = 10), bảng đầy đủ để dành cho Lớp 3 (đã có sẵn).
- Đoạn mở bài (dòng 5) ẩn dụ "đứng nói chuyện gần/xa" hay nhưng hơi rườm ở giữa (4 câu để dẫn vào 1 ý) — có thể cắt bớt 1–2 câu mà không mất ý.

## Chuyển fact-checker
- Không có mục nào cần chuyển. Toàn bộ số nửa cung và tên quãng (E4=2 "quãng 2 trưởng", F4=3 "quãng 3 thứ", G4=5 "quãng 4 đúng", A4=7 "quãng 5 đúng", Bb3=8 "quãng 6 thứ", C4=10 "quãng 7 thứ") khớp đúng với bảng ở `facts/dkurd.md` mục 5. Claim "Bb3 nằm gần người chơi hơn Ding trên sơ đồ" cũng khớp với vị trí tương đối trong sơ đồ ASCII gốc (hàng Bb3/A3 nằm dưới hàng Ding, gần nhãn "NGƯỜI CHƠI" hơn).

## KẾT LUẬN: SỬA (0 blocker, 2 major)
