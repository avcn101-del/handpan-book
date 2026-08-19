# Fact check — ch01

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát nào, không có phát biểu cần xác minh ngoài phạm vi facts/)

## Ghi chú soát (căn cứ)
1. **Nốt tồn tại** — chương chỉ dùng đúng một nốt: Ding D3. Có trong danh sách 10 nốt (facts/dkurd.md mục 1). ĐẠT.
2. **Quãng tám** — "Ding D3" luôn ghi kèm quãng tám đúng, nhất quán. ĐẠT.
3. **Cấu tạo hợp âm** — chương không gọi tên hợp âm nào. Không áp dụng.
4. **Quãng** — chương không phát biểu về quãng nào (quãng 2, quãng 3 thứ...). Không áp dụng.
5. **Sơ đồ ASCII** — đối chiếu bằng `diff` giữa facts/dkurd.md (dòng 30–41) và chapters/ch01.md (dòng 28–39): **IDENTICAL**, khớp từng ký tự. ĐẠT.
6. **Lưới tab chạy được** — chạy `python3 bin/sach_tab_sang_json.py chapters/ch01.md --kiem`:
   ```
   ĐẠT tab/sach_ch01_bai1.json  (0 nốt, 8 ding, 8 ô, 4/4)
   ĐẠT tab/sach_ch01_bai2.json  (0 nốt, 4 ding, 1 ô, 4/4)
   ```
   Không có lỗi. ĐẠT.
7. **Ví dụ bài hát** — chương không khẳng định bài hát nào ở tông nào. Không áp dụng.

## KẾT LUẬN: SẠCH (0 blocker, 0 major)
