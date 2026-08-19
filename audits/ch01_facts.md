# Fact check — ch01

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát nào, không có claim tông nào cần xác minh)

## Ghi chú soát
1. **Nốt tồn tại**: Chương chỉ dùng nốt "Ding D3" (nêu tên riêng "Ding" nhiều lần, không kèm octave, nhưng không có nốt nào khác được gọi tên bằng chữ cái trần — không vi phạm "nốt A" trống trơn). Các nốt còn lại (C5, A4, G4, F4, E4, D4, C4, Bb3, A3) chỉ xuất hiện trong khối sơ đồ ASCII copy nguyên từ facts/dkurd.md, không bị chương dùng sai. Không có nốt lạ nào ngoài 10 nốt của trống.
2. **Quãng tám**: "Ding D3" xuất hiện đúng 2 lần (trong sơ đồ ASCII và câu trích dẫn lại đúng "Ding D3"), khớp facts. Không có nốt nào ghi sai octave.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào — N/A.
4. **Quãng**: chương không phát biểu về khoảng cách nốt nào — N/A.
5. **Sơ đồ ASCII**: đối chiếu bằng `diff` giữa khối trong chapters/ch01.md (dòng 27–40) và khối trong facts/dkurd.md (dòng 29–42) — **giống hệt từng ký tự**.
6. **Lưới tab chạy được**: chạy `python3 bin/sach_tab_sang_json.py chapters/ch01.md --kiem` → kết quả:
   ```
   ĐẠT tab/sach_ch01_bai1.json  (0 nốt, 8 ding, 8 ô, 4/4)
   ĐẠT tab/sach_ch01_bai2.json  (0 nốt, 4 ding, 1 ô, 4/4)
   ```
   Không có lỗi, exit code 0.
7. **Ví dụ bài hát**: chương không nêu bài hát cụ thể nào, không có claim về tông — không cần xác minh.

## KẾT LUẬN: SẠCH
