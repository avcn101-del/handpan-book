# Fact check — ch01

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nhắc tới bài hát cụ thể nào, không cần xác minh tông)

## Chi tiết soát 6 mục

1. **Nốt tồn tại**: Chương chỉ dùng một nốt duy nhất — Ding D3. Có trong danh sách 10 nốt (facts/dkurd.md mục 1). Đạt.
2. **Quãng tám**: Ding luôn ghi kèm "D3" đúng với facts (Ding D3, MIDI 50). Đạt.
3. **Cấu tạo hợp âm**: Chương không gọi tên hợp âm nào. Không áp dụng.
4. **Quãng**: Chương không phát biểu về quãng/khoảng cách nốt nào. Không áp dụng.
5. **Sơ đồ ASCII**: Đối chiếu `diff` từng ký tự giữa khối sơ đồ ở dòng 27–40 của chapters/ch01.md và khối sơ đồ ở dòng 29–41 của facts/dkurd.md — khớp tuyệt đối, không lệch ký tự nào.
6. **Lưới tab chạy được**: Chạy `python3 bin/sach_tab_sang_json.py chapters/ch01.md --kiem` → kết quả:
   ```
   ĐẠT tab/sach_ch01_bai1.json  (0 nốt, 8 ding, 8 ô, 4/4)
   ĐẠT tab/sach_ch01_bai2.json  (0 nốt, 4 ding, 1 ô, 4/4)
   ```
   Không có lỗi.
7. **Ví dụ bài hát**: Chương không nhắc bài hát cụ thể nào, không cần xác minh tông.

Một số phát biểu mô tả kiểm tra chéo thêm (không thuộc 6 mục nhưng liên quan sự thật):
- "nốt trầm ... nhất trên cả cây đàn" (dòng 15) — đúng, D3 MIDI 50 là MIDI thấp nhất trong 10 nốt (facts mục 1).
- "chủ âm" (dòng 15) — khớp vai trò "Ding — nốt tâm, chủ âm" ở facts mục 1.
- Hàng "Tay" toàn bộ ghi "P" — không sai sự thật (P là ký hiệu hợp lệ theo facts/tab-notation.md mục 3), chỉ là lựa chọn tay, không thuộc phạm vi soát sự thật nhạc lý.

## KẾT LUẬN: SẠCH
