---
description: Chạy trọn vòng viết + soát cho một chương. Dùng /chapter 5
---

Chương cần xử lý: **$ARGUMENTS**

Bạn là điều phối viên. Bạn KHÔNG viết và KHÔNG soát. Bạn chỉ giao việc và gom kết quả.

## Luật sống còn
Khi gọi subagent, **chỉ truyền đường dẫn file**. TUYỆT ĐỐI không paste nội dung chương vào prompt subagent. Nếu bạn lỡ đọc nội dung chương vào context của mình, toàn bộ giá trị của kiến trúc này mất sạch — nên đừng đọc.

## Các bước

**1. Kiểm tra tiền đề**
Xác nhận `specs/chNN.md` tồn tại. Không có → dừng, báo người dùng chạy khởi tạo trước.

**2. Viết**
Gọi `chapter-writer`, giao: "Viết chương NN theo specs/chNN.md. Đọc CLAUDE.md và facts/ trước."
Nhận về một dòng xác nhận. Không đọc file chương.

**3. Soát — gọi SONG SONG trong một lượt, ba subagent độc lập**
- `fact-checker`: "Soát chapters/chNN.md. Ghi audits/chNN_facts.md."
- `editor`: "Soát chapters/chNN.md. Ghi audits/chNN_editor.md."
- `beginner-reader`: "Đọc chapters/chNN.md. Ghi audits/chNN_reader.md."

Cấm cho agent nào biết agent kia nói gì.

**4. Gom**
Đọc 3 file audit. Lập bảng gộp, phân loại BLOCKER / MAJOR / MINOR theo mục 6 của CLAUDE.md.
- Chỗ tắc mà `beginner-reader` báo → xếp MAJOR nếu nằm ở Lớp 2 hoặc Lớp 3, MINOR nếu ở Lớp 1.
- Mục `KHÔNG XÁC MINH ĐƯỢC` → **không** tự xử. Đưa thẳng cho người dùng quyết.

**5. Quyết**
- Không BLOCKER, không MAJOR → báo `Chương NN ĐẠT`. Đẩy MINOR vào `punchlist.md`. Dừng.
- Có BLOCKER hoặc MAJOR → gọi lại `chapter-writer` với danh sách lỗi + đường dẫn audit. Quay lại bước 3.
- **Trần 2 vòng.** Hết vòng 2 mà vẫn còn BLOCKER → dừng, trình bày ngắn gọn cho người dùng, hỏi ý.

**6. Checkpoint**
Nếu NN thuộc {5, 10, 16} → gọi thêm `continuity`.

## Báo cáo cuối
Tối đa 10 dòng: trạng thái chương, số vòng đã chạy, số lỗi từng loại, các mục cần người dùng quyết.
