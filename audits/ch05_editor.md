# Editor — ch05

## BLOCKER
(không có)

## MAJOR

- **Hack dùng ngay #1 mâu thuẫn với chính bài tập trong cùng chương.** Hack #1 (Lớp 3, dòng "Lặp mỗi pattern ít nhất 4 lần trước khi chuyển sang pattern kế tiếp") áp dụng chung cho "mỗi pattern", nhưng:
  - Bài tập 2 (pattern 2 — giai điệu) tự quy định rõ "chơi trọn hai lần" và bảng cheat sheet cũng ghi "Chơi 2 lần" — không phải ≥4 lần. Tab chỉ in đúng 2 ô, không có dữ liệu cho lần lặp thứ 3–4.
  - Bài tập 3 (pattern 3 — kết) tự quy định rõ "Chơi một lần duy nhất, ở cuối bài" — trực tiếp ngược với "lặp ít nhất 4 lần".
  Người mới đọc xong Lớp 3 rất dễ áp dụng Hack #1 y nguyên cho cả 3 pattern (vì không có ngoại lệ nào được ghi), dẫn tới lặp pattern 3 tận 4 lần và phá hỏng đúng hiệu ứng "về nhà rồi ở lại lâu" mà Lớp 1 vừa dày công mô tả, hoặc cố lặp pattern 2 quá số ô đã in mà không có tab để theo.
  → **Sửa cụ thể**: thêm một câu ngoặc ngay sau Hack #1, ví dụ: *"Riêng cách lặp này chỉ áp dụng cho Pattern 1 (nền) khi bạn tự tập trước — Pattern 2 luôn chơi đúng 2 lần, Pattern 3 chỉ chơi 1 lần duy nhất để giữ cảm giác kết bài."* Hoặc tách Hack #1 thành hai dòng riêng: một dòng cho pattern 1 (lặp tự do ≥4 lần cho quen tay), một dòng nói rõ pattern 2/3 có số lần lặp cố định, không áp dụng hack này.

- **"Pattern" là khái niệm chương này chính thức giới thiệu nhưng chưa có trong `facts/glossary.md`.** CLAUDE.md mục 0 quy định: "Không tự chế thuật ngữ mới. Thiếu từ → thêm vào glossary trước, dùng sau." Từ "Pattern" xuất hiện hàng chục lần xuyên suốt cả 3 lớp của ch05 (kể cả in đậm ở Lớp 2) nhưng không có dòng tương ứng trong bảng glossary hiện tại (đã đọc `facts/glossary.md` — không có mục nào tên "Pattern"). Nếu không chốt định nghĩa chuẩn ở glossary trước, các chương sau (ví dụ chương dùng lại khái niệm pattern) có nguy cơ diễn đạt lệch nhau.
  → **Sửa cụ thể**: thêm một dòng vào `facts/glossary.md`, ví dụ: `| Pattern | Pattern | Một câu ngắn lặp đi lặp lại nhiều lần, làm khung nhịp cho cả bài — như "à ơi" mẹ hát ru con. |` — thêm trước khi chốt chương 5, rồi các chương sau tham chiếu đúng dòng này.

## MINOR

- Đoạn mô tả vị trí Pattern 2 (Lớp 1, đoạn "Bốn nốt bạn dùng là A3 – D4 – E4 – D4..."): câu "D4 ở ô số ④ phía trên bên trái một chút" không nói rõ "phía trên" là so với đâu (so với Ding thì D4 thực ra nằm *dưới* Ding, chỉ là *trên* A3). Đoạn kế tiếp có làm rõ lại ("D4 nằm phía trên nó [A3] một nấc") nên không gây hiểu lầm kéo dài, nhưng câu đầu tiên nên tự đủ nghĩa.
  → Sửa: đổi thành "D4 ở ô số ④, một nấc phía trên A3 và lệch sang bên trái".

- Hàng `Tay` ở cả ba bài tập luôn gán Ding = `P` (tay phải), không đổi bên bao giờ, kể cả khi tay trái vừa đánh D4 ngay trước hoặc sau đó (ví dụ Bài tập 2, cột 5–7: Ding=P rồi D4=T ngay sau, cột 9 lại Ding=P). Có thể đây là chủ ý đơn giản hoá cho người mới (tay phải luôn giữ nhịp nền, tay trái mới đổi bên theo giai điệu), nhưng chương không nói rõ lý do — người đọc kỹ có thể thắc mắc sao Ding không bao giờ đổi tay trong khi cả bài đang nhấn mạnh "tay tự động đổi bên".
  → Gợi ý: thêm một câu ngắn giải thích, ví dụ "Trong bài mẫu này, tay phải lo trọn phần Ding, tay trái rảnh ra để xử lý D4 khi cần."

## Chuyển fact-checker

- Xác nhận việc gán cố định Ding = tay phải (P) xuyên suốt cả 3 bài tập (kể cả khi liền kề D4 = tay trái) có hợp lý về mặt kỹ thuật chơi thực tế hay không, hay nên để tay linh hoạt hơn.

## KẾT LUẬN: SỬA (0 blocker, 2 major)
