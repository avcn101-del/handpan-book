# Audit continuity — checkpoint chương 5

Phạm vi soát: `chapters/ch01.md`, `chapters/ch02.md`, `chapters/ch05.md` (đây là toàn bộ các chương đã tồn tại trong `chapters/` tính tới thời điểm checkpoint — `chapters/ch03.md` và `chapters/ch04.md` CHƯA được ghi ra file, dù `specs/ch03.md` và `specs/ch04.md` đã có). Đối chiếu với `facts/glossary.md`, `facts/dkurd.md`, `facts/tab-notation.md`.

---

## 1. Trôi thuật ngữ

Không phát hiện trôi thuật ngữ giữa ch01, ch02, ch05. Các từ khoá trong glossary được dùng nhất quán:

- **Ding**: dùng xuyên suốt, không đổi tên.
- **Ngân**: ch01 định nghĩa ("tiếng tự kéo dài... tan hết vào không khí"), ch02 và ch05 dùng lại đúng nghĩa, không đổi thành từ khác (không thấy "vang", "kéo dài" thay thế rời rạc — khi dùng từ khác luôn kèm "ngân").
- **Ghost note**: ch02 định nghĩa ("cú gõ cực nhẹ, gần như chỉ nghe hơi... như thì thầm"), ch05 tóm tắt lại đúng cụm "cực nhẹ, gần như chỉ nghe hơi" — khớp cả với định nghĩa trong glossary lẫn `facts/tab-notation.md` mục 3.
- **Tắt tiếng**: ch02 và ch05 đều mô tả đúng "đặt tay lên nốt vừa gõ để chặn tiếng ngân lại ngay" — gần như trùng khớp câu chữ với glossary, không có biến thể như "chặn tiếng"/"bịt tiếng"/"stop note".
- **Đầu ngón / Mô ngón cái**: ch02 dùng nhất quán, ch05 không nhắc lại nhưng cũng không mâu thuẫn.
- **Tone field / zigzag**: ch02 chỉ nhắc khái niệm chung ("hòn đảo âm" — đúng như spec ch02 cho phép, chưa đặt tên/số cụ thể). ch05 dùng đầy đủ "tone field", "zigzag" kèm chú giải trong ngoặc mỗi lần dùng — đúng luật glossary "lần đầu xuất hiện phải kèm giải thích tiếng Việt".
- **Pattern**: chỉ ch05 dùng (khái niệm mới của chương này), định nghĩa khớp glossary ("một câu ngắn lặp đi lặp lại nhiều lần, làm khung cho cả bài").
- Ký hiệu tab (`●`, `○`, `✕`, `▬`, `·`, `P`/`T`): nghĩa được nhắc lại giống hệt nhau ở ch02 (nơi giới thiệu) và ch05 (nơi tóm tắt lại) — không lệch nghĩa, không đổi ký hiệu.

Không có mục nào cần liệt kê "chương nào dùng từ nào khác nhau" vì không tìm thấy biến thể.

**Một khoảng trống đáng chú ý (không phải lỗi trong 3 chương đã có, nhưng cần lưu ý khi viết ch03/ch04)**: `facts/glossary.md` chưa có mục cho "**quãng tám**" (octave), trong khi `specs/ch03.md` liệt nó là khái niệm chính chương 3 sẽ giới thiệu ("Quãng tám — D4 là 'D3 nhưng cao hơn'"). Khi ch03 được viết, cần thêm thuật ngữ này vào glossary trước (theo đúng luật mục 0 CLAUDE.md: "Thiếu từ → thêm vào glossary trước, dùng sau"), nếu không rất dễ phát sinh trôi thuật ngữ ngay từ chương 3 (ví dụ gọi là "quãng 8", "octave", "quãng tám" lẫn lộn).

---

## 2. Sơ đồ lệch

Đã grep toàn bộ khối ASCII mặt trống trong `chapters/` (xuất hiện ở ch01 dòng 27–40 và ch05 dòng 17–30; ch02 không có khối này) và so từng dòng, từng ký tự với `facts/dkurd.md` dòng 29–42.

**Kết quả: KHỚP TUYỆT ĐỐI, không có sai khác.** Cả hai bản sao (ch01 và ch05) trùng khít với bản gốc, kể cả khoảng trắng canh lề — đã kiểm bằng grep pattern chính xác từng dòng (`⑧ A4...G4 ⑦`, `⑥ F4...E4 ⑤`, `④ D4...C4 ③`, `② Bb3...A3 ①`, `⑨ C5`, `◉`, `Ding D3`, `▲ NGƯỜI CHƠI ▲`) và toàn bộ trùng khớp ở cả 3 nguồn (facts, ch01, ch05).

Không có BLOCKER ở mục này.

---

## 3. Lặp ẩn dụ

Phát hiện **hai lượt lặp ẩn dụ** đáng chú ý:

- **Ẩn dụ "cửa / khép cửa"** dùng ở hai chương cho hai ý khác nhau:
  - Ch02 mở đầu bằng ẩn dụ gõ cửa nhà ("cốc cốc" bằng khớp ngón vs "bịch bịch" bằng lòng bàn tay) để minh hoạ **hai kiểu chạm tay** (đầu ngón / mô ngón cái) cho ra hai chất tiếng khác nhau.
  - Ch05 (Pattern 3 — kết bài) dùng lại hình ảnh "đi ra khỏi nhà một chút (D4), khép cửa lại sau lưng (tắt tiếng), rồi quay lại nhà (Ding)" để minh hoạ **kỹ thuật tắt tiếng trong bối cảnh kết bài**.
  - Hai lần dùng cho hai khái niệm khác hẳn nhau (chất tiếng do kiểu chạm ≠ cấu trúc kết bài), người đọc quen "cửa = kiểu chạm tay" từ ch02 có thể khựng lại khi ch05 đột ngột gán "cửa" cho một nghĩa khác. Nên rà khi biên tập vòng sau — có thể đổi ẩn dụ ở một trong hai chỗ.

- **Ẩn dụ "Ding là nhà"** xuất hiện sớm và trọn vẹn ở ch05 (Pattern 3: "quay trở lại đúng Ding — nơi mọi thứ bắt đầu... rồi ở lại nhà thật lâu, không vội đi đâu nữa") — trong khi đây chính xác là ẩn dụ trung tâm mà `specs/ch03.md` (tựa đề "**Ding là nhà**") dự định dùng làm hình ảnh chủ đạo cho toàn chương 3 (chủ âm, cảm giác "về nhà"). Ch03 hiện chưa được viết. Đây không phải lỗi trong các chương đã có, nhưng là **rủi ro lặp ẩn dụ có thể xảy ra** khi ch03 được viết sau — người viết ch03 cần biết ch05 đã "xài trước" hình ảnh này, để hoặc (a) đổi ẩn dụ khác cho ch03, hoặc (b) chủ động nối lại ẩn dụ này một cách có chủ đích thay vì lặp y hệt.

Không phát hiện lặp ẩn dụ nào giữa ch01 và ch02, hay ch01 và ch05 (ẩn dụ "giọt nước trên mặt hồ" / "tiếng chuông chùa" của ch01 không tái xuất hiện ở hai chương kia).

---

## 4. Tham chiếu chéo hỏng

**Phát hiện chính, mức MAJOR**: `chapters/ch05.md` (Lớp 1, đoạn mở đầu) viết:

> "Từ chương 1 tới chương 4, bạn đã có Ding, đã biết ngân, đã biết đổi tay giữa đầu ngón và mô ngón cái, đã biết ghost note..., biết tắt tiếng chủ động..., và đã làm quen với 9 tone field xếp zigzag quanh Ding."

Đoạn "Móc nối" cuối ch05 cũng viết: "Chương này gom lại toàn bộ chương 1–4... và cách zigzag khiến tay tự đổi bên khi chơi giai điệu."

Bài tập 2 của ch05 còn dùng ký hiệu tay `T` (tay trái) lần đầu tiên trong toàn bộ các chương đã viết — khái niệm P/T chính thức theo `specs/ch04.md` mới là nơi giới thiệu.

Nhưng **`chapters/ch03.md` và `chapters/ch04.md` không tồn tại** trong thư mục `chapters/` (chỉ có specs, chưa có bản thảo). Tức là ch05 tham chiếu ngược tới nội dung "đã học" ở hai chương chưa từng được viết ra. Nếu người đọc đọc tuần tự sách thật (ch01 → ch02 → ch05, bỏ qua vì ch03/04 không tồn tại), họ sẽ gặp: D4, quãng tám, toàn bộ 9 tone field, zigzag, ký hiệu P/T — không có nốt nào trong số này từng được dạy ở ch01 hay ch02 (cả hai chương này theo đúng "Cấm đụng" trong spec, chỉ dùng D3/Ding).

- Về mặt **nội dung dự kiến**: nếu ch03 và ch04 được viết đúng theo spec hiện có (`specs/ch03.md`, `specs/ch04.md`), thì nội dung ch05 giả định (D4, quãng tám, 9 tone field, zigzag, P/T) sẽ khớp — tức đây là vấn đề **thiếu file, không phải sai nội dung**.
- Xếp mức **MAJOR** (không phải MINOR) vì đây là chỗ người đọc mới sẽ tắc hoàn toàn nếu ch03/ch04 không được ghi ra trước khi phát hành ch05 — đúng định nghĩa MAJOR trong CLAUDE.md ("dùng khái niệm chưa dạy, người mới tắc không đi tiếp được").
- Khuyến nghị: chặn việc công bố/đóng gói ch05 tới khi `chapters/ch03.md` và `chapters/ch04.md` được viết và soát xong, hoặc ít nhất xác nhận rõ với người dùng rằng đây là tình trạng "đang viết dở dang theo đúng kế hoạch" chứ không phải sai sót.

Không tìm thấy tham chiếu chéo hỏng nào khác (ví dụ tham chiếu tới chương nằm sau mà không phải trường hợp trên, hoặc tham chiếu sai nội dung của một chương đã tồn tại). Các tham chiếu tới chương 1 và chương 2 trong bản thân ch02 và ch05 đều khớp đúng nội dung thật sự có trong hai chương đó.

---

## 5. Trùng nội dung

Không phát hiện trùng nội dung dạy hai lần giữa ch01, ch02, ch05:

- Ch01 dạy Ding + ngân (bài tập 1: chờ trọn tiếng; bài tập 2: gõ đều 4 lần).
- Ch02 dạy kỹ thuật tay trên chính nốt Ding (đầu ngón/mô ngón cái, lực gõ, ghost note, tắt tiếng) — không dạy lại "ngân là gì", chỉ dùng nó làm nền, đúng quan hệ tiếp nối chứ không lặp dạy.
- Ch05 không dạy lại bất kỳ kỹ thuật nào từ đầu — phần "Lớp 1" chỉ liệt kê ôn lại (đúng vai trò một chương tổng hợp/checkpoint), phần nội dung mới thực sự là khái niệm **pattern** và cách ráp 3 pattern thành bài — không trùng với ch01/ch02.

Không có đề xuất cắt/giữ nào cần thiết ở mục này cho 3 chương hiện có.

---

## Tổng kết mức độ

| Mục | Kết quả | Mức độ |
|---|---|---|
| 1. Trôi thuật ngữ | Không có lỗi trong 3 chương hiện có; ghi chú thiếu mục "quãng tám" trong glossary cần bổ sung trước khi viết ch03 | Lưu ý (không chặn) |
| 2. Sơ đồ lệch | Khớp tuyệt đối với `facts/dkurd.md` ở cả ch01 và ch05 | Không có BLOCKER |
| 3. Lặp ẩn dụ | "cửa/khép cửa" dùng 2 nghĩa khác nhau (ch02 vs ch05); ẩn dụ "Ding là nhà" bị ch05 dùng trước khi ch03 (chủ chương của ẩn dụ này) được viết | Cần rà khi biên tập / khi viết ch03 |
| 4. Tham chiếu chéo hỏng | Ch05 giả định người đọc đã học nội dung ch03 và ch04, nhưng hai chương này chưa tồn tại trong `chapters/` | **MAJOR** — chặn phát hành ch05 tới khi ch03, ch04 được viết |
| 5. Trùng nội dung | Không phát hiện | Không có vấn đề |

Ghi chú phạm vi: không sửa bất kỳ file chương nào, không nhận xét chất lượng riêng từng chương — báo cáo trên chỉ xoay quanh tính nhất quán xuyên suốt.
