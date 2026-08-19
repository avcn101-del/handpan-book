# Editor — ch01

## BLOCKER
(không có)

## MAJOR

- **Sơ đồ mặt trống lộ toàn bộ 9 tone field + tên nốt (A3, Bb3, C4, D4, E4, F4, G4, A4, C5), trong khi spec ch01 "Cấm đụng" ghi rõ: "Tên nốt khác D3, tone field (số ô quanh Ding)".** Đây là chương người đọc chỉ vừa biết một nốt Ding, nhưng đã nhìn thấy đủ 9 ô còn lại kèm tên và quãng tám ngay trên trang. Câu chống đỡ hiện có ("cứ để mắt lướt qua thôi, đừng cố nhớ") chưa đủ mạnh vì tên nốt vẫn hiện rõ trên trang in, người đọc tò mò vẫn đọc được.
  → Sửa: giữ nguyên sơ đồ (luật CLAUDE.md bắt buộc copy y nguyên, không được sửa), nhưng viết lại câu ngay sau sơ đồ (dòng 42) mạnh hơn để chủ động "tắt" sự tò mò, kiểu: *"Bạn không cần đọc chữ trong mấy ô còn lại đâu — coi như chưa nhìn thấy chúng cũng được, tất cả để dành cho các chương sau."* Đồng thời nên báo lại cho người giữ spec: bản thân việc bắt copy nguyên sơ đồ đầy đủ tên nốt ở ngay chương 1 đang mâu thuẫn cấu trúc với mục "Cấm đụng" của chính spec ch01 — cần quyết định ở cấp kiến trúc (ví dụ: cho ch01 một biến thể sơ đồ rút gọn chỉ hiện Ding, chấp nhận vi phạm nhẹ luật "cấm vẽ lại", hoặc nới lỏng "Cấm đụng" của ch01 để chấp nhận sơ đồ đầy đủ). Không tự quyết ở đây vì đụng luật cứng của CLAUDE.md.

- **Hàng "Tay" trong mọi khối tab hiện chữ "P" (tay phải) nhưng không hề được giải thích, trong khi spec ch01 "Cấm đụng" ghi rõ "tay phải/trái (P/T)".** Đoạn hướng dẫn đọc lưới (dòng 79) chỉ giải thích ký hiệu `●`/`·` và dòng nhãn `id=... bar=... ts=...`, bỏ sót hoàn toàn hàng "Tay" — người mới đọc tới đó sẽ thấy chữ "P" lặp lại không rõ nghĩa gì.
  → Sửa: thêm một câu xử lý y hệt cách chương đã làm với hàng "móc đơn" ở bài tập 2 (dòng 139): ngay sau câu giải thích ●/· ở dòng 79, thêm *"Hàng 'Tay' bên dưới cũng bỏ qua luôn — chuyện tay nào gõ để dành cho chương 2."* Việc này không đòi xoá hàng Tay (tab-notation.md bắt buộc hàng Tay luôn có), chỉ cần một câu chặn đọc, đúng khuôn mẫu đã dùng cho dòng nhãn kỹ thuật và hàng móc đơn.

## MINOR

- Dòng 15: "Bạn cứ hiểu đơn giản: nó giống như nốt 'nhà'" — hơi lấn trước hook của chương 3 (theo mục Móc nối, "Ding là nhà" là gieo mầm cho ch03). Nên rút ngắn, bỏ hẳn ẩn dụ "nhà" ở đây, chỉ giữ "chủ âm" như một cái tên, để dành trọn vẹn ẩn dụ "nhà — đi xa rồi quay về" cho ch03 dùng làm mở bài.
- Dòng 52: "Bỏ hết mấy nỗi sợ đó đi." hơi mang giọng ra lệnh, hơi ngược tinh thần "không lên lớp" của CLAUDE.md. Gợi ý đổi thành "Vậy nên cứ bỏ qua hết mấy nỗi sợ đó, thoải mái mà gõ."

## Chuyển fact-checker

- Dòng 15: "Ding ... cũng là nốt trầm, đầy đặn nhất trên cả cây đàn" — "trầm nhất" khớp facts (D3 = MIDI 50, thấp nhất trong 10 nốt), nhưng "đầy đặn nhất" là mô tả âm sắc chủ quan không có trong `facts/dkurd.md`. Nhờ fact-checker xác nhận có nguồn nào chốt claim âm sắc này không, hay nên coi là ẩn dụ văn phong (không cần fact-check).
- Dòng 52: "Ding không ồn, tiếng của nó tròn và ấm" — tương tự, mô tả âm sắc/độ ồn không có trong facts, nhờ fact-checker xác nhận đây có phải nhận định chấp nhận được hay cần nguồn.

## KẾT LUẬN: SỬA (0 blocker, 2 major)
