# Fact check — ch02

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không áp dụng — chương không nêu ví dụ bài hát cụ thể nào cần xác minh tông)

## Ghi chú soát theo 6 mục

1. **Nốt tồn tại** — chương chỉ dùng đúng một nốt: Ding / D3. D3 có trong bảng 10 nốt (`facts/dkurd.md` mục 1). Không có tên nốt nào khác xuất hiện trong văn bản hay lưới tab. Đạt.
2. **Quãng tám** — "D3 (Ding)" ghi kèm quãng tám nhất quán ở phần Móc nối. Các lưới tab dùng đúng nhãn `D · Ding` theo `facts/tab-notation.md` mục 1. Đạt.
3. **Cấu tạo hợp âm** — chương không gọi tên hợp âm nào (đúng logic sư phạm: chương 2 vẫn ở một nốt Ding). Không có gì để đối chiếu.
4. **Quãng** — chương không phát biểu về khoảng cách nốt/quãng nhạc lý. Không có gì để đối chiếu.
5. **Sơ đồ ASCII** — chương không chèn sơ đồ mặt trống nào. Không có gì để đối chiếu.
6. **Lưới tab chạy được** — chạy `python3 bin/sach_tab_sang_json.py chapters/ch02.md --kiem`:
   ```
   ĐẠT tab/sach_ch02_bai1.json  (0 nốt, 8 ding, 2 ô, 4/4)
   ĐẠT tab/sach_ch02_bai2.json  (0 nốt, 8 ding, 1 ô, 4/4)
   ĐẠT tab/sach_ch02_bai3.json  (0 nốt, 4 ding, 2 ô, 4/4)
   ```
   Không có lỗi.
7. **Ví dụ bài hát** — chương không khẳng định bài hát nào ở tông nào. Không áp dụng.

Kiểm tra thêm: các ký hiệu `●`, `○`, `▬`, `✕`, `P`/`T` dùng đúng nghĩa theo `facts/tab-notation.md` mục 3 (gõ bình thường, ghost note, giữ, tắt tiếng, tay phải/trái). Hàng `Tay` và `Ding` xuất hiện đúng luật (hàng Ding và Tay luôn có, mục 2 tab-notation). Bài tập đều ≤ 8 ô (thực tế mỗi bài 1–2 ô), đúng giới hạn tối đa 8 ô.

## KẾT LUẬN: SẠCH
