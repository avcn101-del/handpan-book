# Fact check — ch01

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
- Chương không nêu ví dụ bài hát cụ thể nào kèm tông — mục 7 không áp dụng cho chương này.

## Ghi chú kiểm tra
1. Nốt tồn tại: chương chỉ dùng Ding (D3) trong nội dung và bài tập — có trong danh sách 10 nốt (facts/dkurd.md mục 1).
2. Quãng tám: "Ding D3" ghi đúng quãng tám, nhất quán với facts. Các nốt khác (C5, A4, G4, F4, E4, D4, C4, Bb3, A3) chỉ xuất hiện trong sơ đồ ASCII copy nguyên từ facts, không bị dùng sai quãng tám trong văn bản.
3. Cấu tạo hợp âm: chương không nhắc tới hợp âm nào — không áp dụng.
4. Quãng: chương không phát biểu về khoảng cách nốt nào — không áp dụng.
5. Sơ đồ ASCII: đối chiếu bằng diff ký tự-với-ký tự giữa khối trong chapters/ch01.md (dòng 27–40) và khối trong facts/dkurd.md (dòng 29–42) — khớp tuyệt đối, không lệch.
6. Lưới tab: chạy `python3 bin/sach_tab_sang_json.py chapters/ch01.md --kiem` → kết quả:
   ```
   ĐẠT tab/sach_ch01_bai1.json  (0 nốt, 8 ding, 8 ô, 4/4)
   ĐẠT tab/sach_ch01_bai2.json  (0 nốt, 4 ding, 1 ô, 4/4)
   ```
   Không có lỗi.
7. Ví dụ bài hát: chương không khẳng định bài hát cụ thể nào ở tông nào — mục này không áp dụng, không cần xác minh.

## KẾT LUẬN: SẠCH
