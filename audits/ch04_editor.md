# Editor — ch04

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
- Hack #2 ở Lớp 3 ("Mỗi khi lóng ngóng không nhớ tay nào gõ nốt nào... chỉ cần nhớ số trên sơ đồ chẵn hay lẻ là đủ suy ra tay") gần như lặp lại y nguyên nội dung Hack #1 ("lẻ phải, chẵn trái..."), chỉ đổi cách diễn đạt theo tình huống, không thêm giá trị mới. Spec chỉ yêu cầu 1–2 hack nhưng nên là hai hack khác nhau. → Sửa: thay Hack #2 bằng một mẹo khác biệt thật sự, ví dụ mẹo xử lý khi "kẹt" ở một nốt cụ thể (đã có gợi ý này ở Lớp 1, đoạn "gõ mỗi lần hai nốt quanh chỗ đó" — có thể rút gọn thành hack), hoặc mẹo riêng cho trường hợp ngoại lệ C5/Ding (tuỳ thuận). Nếu không nghĩ ra hack khác, bỏ hẳn Hack #2, giữ đúng 1 hack.

- Câu dẫn trước "Bài tập 1" ghi: "Mỗi ô gõ đúng bốn nốt liên tiếp, cách đều nhau" — nhưng Ô 3 của Bài tập 1 chỉ có đúng một nốt (C5), không phải bốn. Người mới đọc câu dẫn rồi nhìn vào Ô 3 có thể khựng lại một nhịp vì tưởng thiếu nốt. → Sửa câu dẫn thành: "Ô 1 và Ô 2 mỗi ô gõ bốn nốt liên tiếp, cách đều nhau; Ô 3 chỉ một nốt (C5) khép bài, chạm đỉnh." hoặc tách riêng câu mô tả cho Ô 3.

- Ô 3 của Bài tập 2 (`sach_ch04_bai2 bar=3`) gán tay `P` cho cột Ding, trong khi bảng cheat sheet Lớp 3 ghi rõ Ding = "giữa" / tay "—" (không cố định). Không sai theo `facts/tab-notation.md` (tay của Ding "chỉ tồn tại trong sách in", được phép ghi), nhưng không có câu giải thích tại sao ở đây lại chốt cụ thể là P trong khi cheat sheet vừa nói "không có luật cứng". Một độc giả kỹ tính có thể thấy mâu thuẫn nhỏ. → Sửa: thêm một câu chú thích ngắn ngay dưới Ô 3, kiểu "Ding không có luật cố định, ở đây chọn tay phải vì đang thuận từ A3 — bạn có thể đổi tay tuỳ ý", để nối lại với câu đã nói ở Lớp 1 về C5/Ding "tuỳ thuận".

## Chuyển fact-checker
- Lớp 1 (đoạn giải thích lý do zigzag) viết: "đây là cách người ta khoan tone field lên mặt kim loại để tối ưu việc chơi bằng cả hai tay cùng lúc." Đây là một khẳng định về **lý do thiết kế/chế tạo** của layout zigzag. `facts/dkurd.md` chỉ xác nhận layout và chiều trái/phải là sự thật đã đối chiếu với trống thật, nhưng không nêu rõ *lý do* nhà chế tác xếp zigzag để "tối ưu chơi hai tay". Cần xác minh xem đây có phải suy diễn hợp lý được phép giữ nguyên (một cách giải thích sư phạm ước lệ, không tuyên bố là sự thật lịch sử/kỹ thuật chế tác) hay cần đổi giọng dè dặt hơn (vd "có thể vì" / "một cách để hiểu là" thay vì khẳng định chắc nịch là sự thật kỹ thuật). Nếu fact-checker không có nguồn xác nhận, nên yêu cầu chapter-writer làm mềm câu này.

## KẾT LUẬN: ĐẠT (0 blocker, 0 major)
