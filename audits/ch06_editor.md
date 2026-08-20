# Editor — ch06

## BLOCKER
(không có)

## MAJOR
- **Hack #2 ở Lớp 3 không phải hành động, chỉ là tóm tắt lại luận điểm của Lớp 1.** "Đừng nghĩ 'gõ vậy có đúng không' — hãy nghĩ 'gõ vậy có hay không'" là một cách đổi khung suy nghĩ, không phải thứ người mới có thể *làm* ngay bằng tay mà không cần nhớ lý thuyết "cả trống chỉ có một thang âm". Nó lặp lại đúng ý đã nói ở Lớp 1 và Hack #1, không thêm giá trị thao tác cụ thể nào.
  → Sửa: thay bằng một hack hành động thật, ví dụ: "Bí quá thì làm theo công thức Ding – 3 nốt bất kỳ – Ding: gõ Ding mở đầu, nhắm mắt gõ liền 3 nốt bất kỳ không cần nhìn sơ đồ, kết lại bằng Ding. Không cần nghĩ đúng/sai, chỉ cần đếm đủ 5 cú gõ." Hoặc giữ nguyên tinh thần "hay/dở" nhưng gắn nó vào một bước tay cụ thể (ví dụ: mỗi lần ngại gõ, cứ gõ đại 1 nốt rồi lập tức gõ Ding — nghe "về nhà" ngay, không cần phân vân).

## MINOR
- Đoạn Lớp 1 (dòng 28) dùng hình ảnh "phím trắng phím đen lẫn lộn" của piano để làm phép so sánh tương phản. Không dạy kỹ thuật kiểu piano nên không phải BLOCKER, nhưng CLAUDE.md nhấn mạnh né hẳn hình dung bàn phím thẳng hàng — kể cả khi chỉ làm phép đối chiếu, vẫn có nguy cơ kéo người mới về lại mô hình "phím" quen thuộc thay vì mô hình vòng tròn zigzag đang cố xây.
  → Sửa: thay "như khi mới cầm một nhạc cụ có phím trắng phím đen lẫn lộn" bằng một hình ảnh trung tính hơn, không nêu tên nhạc cụ cụ thể, ví dụ: "như khi mới thử một trò chơi có ô cấm, ô được — sợ bước nhầm ô".
- Ước tính số từ Lớp 1 rơi vào khoảng 1200–1300 từ (đếm tay, có sai số) — sát mép dưới của khoảng 1200–1500 cho phép. Không đủ căn cứ để kết luận vi phạm, nhưng nên chạy đếm từ chính xác (script/word count) trước khi khoá chương; nếu dưới 1200 thật thì bổ sung thêm 1 đoạn (ví dụ mở rộng phần "bậc" với một ví dụ nói chuyện thực tế kiểu "bậc 5 nghe rộng hơn bậc 2" mà không cần tính nửa cung).
- Hack #1 gần như chép nguyên văn từ mục "Hack ở Lớp 3" của spec — không sai, nhưng hơi lười biến tấu giọng văn so với phần diễn giải phong phú ở Lớp 1. Có thể giữ nguyên, không bắt buộc sửa.
- Câu "Nghe có thể chưa 'hay' theo nghĩa một giai điệu chăm chút, nhưng chưa bao giờ nghe 'sai'" ở Lớp 1 và bullet cuối Lớp 2 lặp gần như cùng một ý hai lần liên tiếp trong khoảng cách ngắn (cuối Lớp 1, đầu Lớp 2) — chấp nhận được vì đúng vai trò tóm tắt của Lớp 2, không cần sửa.

## Chuyển fact-checker
- Bài tập 1, Ô 1, cột 9: nốt C5 (đỉnh, không thuộc nhóm lẻ/chẵn theo `facts/dkurd.md` mục 2–3) được gán tay **P**. File facts không nêu quy ước tay mặc định cho C5 (vì nó ở đỉnh, không lẻ không chẵn). Nhờ xác nhận quy tắc gán tay cho C5 có nhất quán với các chương khác hay là tùy ngữ cảnh (theo nốt liền trước) — nếu tùy ngữ cảnh thì không sao, nhưng cần đối chiếu logic chuyển tay quanh nốt trước đó (F4 ở cột 5 dùng T, C5 ở cột 9 dùng P — có hợp lý về mặt di chuyển tay vật lý không, vì đây là phần layout/vật lý chứ không phải câu hỏi nhạc lý thuần).
- Xác nhận lại thứ tự bậc D=1, E=2, F=3, G=4, A=5, Bb=6, C=7 mà chương dùng (bỏ qua ký hiệu ♭3/♭6/♭7 vì spec chủ động hoãn sang chương 7) có đúng tinh thần thang D thứ tự nhiên trong `facts/dkurd.md` mục 5 không — về nguyên tắc số thứ tự 1–7 khớp, chỉ hỏi để chắc chắn không có sai lệch khi giản lược.

## KẾT LUẬN: SỬA (0 blocker, 1 major)
