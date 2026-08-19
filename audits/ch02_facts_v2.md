# Fact check — ch02 (v2, tập trung mục "Chuyển fact-checker" của audits/ch02_editor.md)

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC

1. **Mô tả timbre (màu tiếng) của đầu ngón vs mô ngón cái** — dòng 11:
   > "đầu ngón ... tiếng ra sẽ gọn, rõ, hơi 'tách' một cái rất dễ chịu, nghe tinh và sáng"
   > "mô ngón cái ... tiếng ra dày hơn, ấm hơn, ngân có vẻ no hơn một chút"

   Đối chiếu `facts/glossary.md`:
   - Đầu ngón (Fingertip): "dùng để gõ chính xác vào một tone field nhỏ, **cho tiếng rõ và gọn**." → khớp với "gọn, rõ" trong chương.
   - Mô ngón cái (Thumb pad): "dùng gõ khi cần **tiếng dày hơn** hoặc gõ ở góc khó với đầu ngón." → khớp với "dày hơn" trong chương.

   Nhưng các tính từ mở rộng thêm — "hơi tách", "tinh và sáng" (đầu ngón), "ấm hơn", "ngân có vẻ no hơn" (mô ngón cái) — **không có trong `facts/dkurd.md` lẫn `facts/glossary.md`**. Đây là mô tả vật lý âm thanh chi tiết hơn mức facts hiện có, không thể đối chiếu được từ nguồn sự thật của dự án. Không có gì trong facts mâu thuẫn với các mô tả này, nên không phải BLOCKER — nhưng cũng không thể xác nhận đúng/sai. Đề nghị người dùng tự nghe kiểm tra trên trống thật.

2. **Mô tả gõ lệch tâm lõm Ding** — dòng 9:
   > "Gõ lệch ra khỏi tâm lõm một chút — về phía mép lõm — tiếng sẽ đục hơn, ngân cụt hơn, nghe hơi 'lép' so với gõ trúng giữa."

   Tương tự mục trên: đây là khẳng định vật lý âm thanh không có trong `facts/dkurd.md` (file này không mô tả gì về hành vi âm thanh khi gõ lệch tâm một tone field). Không mâu thuẫn với facts nhưng không kiểm chứng được từ facts. Đề nghị người dùng tự kiểm.

## Trả lời câu hỏi cụ thể của editor (mục "Chuyển fact-checker")

**Câu hỏi 2 — Bài tập 3, mẫu `● ▬ ▬ ✕` có đúng "ngân 1 nhịp" theo quy ước cột/phách của `facts/tab-notation.md` không?**

Kiểm tra bằng số học dựa trên `facts/tab-notation.md`:
- Mục 4 quy định: "Số ô phải khớp nhịp: 6/8 → 12 cột, 4/4 → 16 cột." Bài tập 3 dùng `ts=4/4` và đúng 16 cột mỗi ô (đã chạy `bin/sach_tab_sang_json.py --kiem` ở dưới, ĐẠT).
- 4/4 có 4 phách (nhịp đếm); 16 cột ÷ 4 phách = **4 cột/phách**. Đây là hệ quả toán học trực tiếp từ chính quy ước cột đã công bố trong facts, không phải suy diễn ngoài nguồn.
- Trong lưới thực tế (dòng 94, 101): `●  ▬  ▬  ✕  ·  ·  ·  ·` — cột 1 = gõ, cột 2–3 = giữ, cột 4 = tắt. Tổng cộng 1(gõ) + 2(giữ) + 1(tắt) = **4 cột = đúng 1 phách/nhịp**, khớp với câu giải thích trong chương (dòng 89): "mỗi nhịp đếm chiếm đúng 4 cột — nên cú gõ, hai cột giữ, và cú tắt cộng lại vừa tròn một nhịp."
- Vậy: xét theo đúng quy ước cột/phách của `facts/tab-notation.md`, khẳng định "ngân một nhịp rồi tắt" của chương là **đúng số học**, không lệch cột nào. Đây không phải BLOCKER.
- Lưu ý ranh giới: `facts/tab-notation.md` không định nghĩa tường minh "tổng thời lượng gõ+giữ+tắt = độ dài ngân" hay là "ngân trọn 1 phách rồi mới bắt đầu tắt ở phách kế" — nghĩa là cách diễn giải "ngân 1 nhịp" trong chương (tính từ lúc gõ tới lúc tắt, gộp cả cột gõ và cột tắt vào trong 1 nhịp đó) là một lựa chọn sư phạm hợp lý và không mâu thuẫn với facts, nhưng bản thân việc "cột nào tính là 'ngân', cột tắt có tính vào nhịp ngân hay không" không phải là dữ kiện chốt trong facts. Đây là điểm biên giữa fact và sư phạm — chuyển lại cho editor nếu cần bàn thêm về cách diễn đạt, nhưng về mặt dữ kiện (số cột, số phách) hoàn toàn khớp và không có lỗi.

**Câu hỏi 1 — mô tả timbre đầu ngón/mô ngón cái đúng thực tế không?**

Xem hai mục KHÔNG XÁC MINH ĐƯỢC ở trên. `facts/dkurd.md` không có mục nào về timbre/âm sắc theo kiểu chạm; `facts/glossary.md` chỉ xác nhận một phần ("rõ, gọn" cho đầu ngón; "dày hơn" cho mô ngón cái). Phần mở rộng còn lại không kiểm chứng được từ nguồn sự thật của dự án — không bịa, không tự xác nhận đúng/sai bằng trí nhớ.

## Soát 6 mục còn lại (nhắc lại, không đổi so với báo cáo trước — không phát sinh lỗi mới)

1. **Nốt tồn tại**: Toàn chương chỉ dùng Ding (D3) — không có tên nốt nào khác. Đã `grep` xác nhận không xuất hiện A3/A4/Bb3/C4/C5/D4/E4/F4/G4 trong file. Khớp `specs/ch02.md` mục "Nốt / hợp âm sẽ dùng: Chỉ D3 (Ding)". SẠCH.
2. **Quãng tám**: "Ding" dùng nhất quán không kèm số quãng tám trong văn xuôi, nhưng Ding chỉ ứng với đúng một cao độ duy nhất (D3, không có Ding thứ hai trên trống) nên không có nguy cơ nhầm quãng tám — giống cách ch01 đã thiết lập tiền lệ (ch01 dòng 42: "Ding D3"). Không phải lỗi.
3. **Cấu tạo hợp âm**: chương không nhắc hợp âm nào. Không áp dụng.
4. **Quãng**: chương không nhắc quãng nhạc lý nào. Không áp dụng.
5. **Sơ đồ ASCII**: chương không chèn sơ đồ mặt trống. Không áp dụng.
6. **Lưới tab chạy được**: đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch02.md --kiem`:
   ```
   ĐẠT tab/sach_ch02_bai1.json  (0 nốt, 8 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch02_bai2.json  (0 nốt, 8 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch02_bai3.json  (0 nốt, 4 ding, 2 ô, 4/4)
   ```
   Không lỗi.
7. **Ví dụ bài hát**: chương không nhắc bài hát nào. Không áp dụng.

## KẾT LUẬN: SẠCH (0 blocker, 0 major)
