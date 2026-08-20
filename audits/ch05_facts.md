# Fact check — ch05

## Phương pháp
- Đối chiếu `facts/dkurd.md` và `facts/tab-notation.md`.
- Diff ký tự-cho-ký tự sơ đồ ASCII (dòng 17–30 của ch05.md) với sơ đồ chuẩn (dòng 29–42 của dkurd.md): `diff` không phát hiện khác biệt.
- Chạy `python3 bin/sach_tab_sang_json.py chapters/ch05.md --kiem`:
  ```
  ĐẠT tab/sach_ch05_bai1.json  (0 nốt, 8 ding, 1 ô, 4/4)
  ĐẠT tab/sach_ch05_bai2.json  (8 nốt, 8 ding, 2 ô, 4/4)
  ĐẠT tab/sach_ch05_bai3.json  (1 nốt, 2 ding, 1 ô, 4/4)
  ```
  Không có lỗi.

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
- [dòng 7] "...đã làm quen với cả 10 nốt xếp zigzag quanh Ding." — facts/dkurd.md mục 2 nói rõ "**Chín** tone field xếp thành vòng quanh Ding", Ding là tâm chứ không phải một phần của vòng zigzag quanh chính nó (mục 3 liệt kê đúng 9 nốt trong chuỗi zigzag: A3→Bb3→C4→D4→E4→F4→G4→A4→C5, không có Ding). Câu trong chương gộp cả Ding vào số "10 nốt xếp zigzag quanh Ding" là không khớp con số trong facts. Đề nghị sửa thành "9 tone field xếp zigzag quanh Ding" hoặc "cả 10 nốt trên trống, trong đó 9 tone field xếp zigzag quanh Ding". (căn cứ: facts/dkurd.md mục 2 và mục 3). Không ảnh hưởng tên nốt/quãng tám/hợp âm nào cụ thể nên không nâng lên BLOCKER.

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu tên bài hát thật hay tông cụ thể nào cần kiểm chứng)

## Ghi chú kiểm tra chi tiết (không phải lỗi, để tham khảo)
- Tên nốt dùng trong chương: Ding/D3, A3, Bb3, C4, D4, E4, F4, G4, A4, C5 — toàn bộ nằm trong 10 nốt hợp lệ, quãng tám ghi đúng ở mọi chỗ xuất hiện.
- Không có hợp âm nào được gọi tên trong chương (chỉ có các nốt rời + Ding), nên không có gì đối chiếu ở mục "cấu tạo hợp âm".
- Không có phát biểu về quãng (quãng 2, quãng 3 thứ, nửa cung...) trong chương — chữ "cách quãng" ở dòng 9 chỉ nghĩa "cách khoảng thời gian", không phải thuật ngữ quãng nhạc lý, nên không đối chiếu bảng quãng.
- Mô tả vị trí A3/D4/E4 trên sơ đồ (phải/trái, một nấc, đối xứng qua Ding) khớp với layout mục 2–3 của facts/dkurd.md: A3 (①, lẻ, phải), D4 (④, chẵn, trái), E4 (⑤, lẻ, phải) — đúng chiều trái/phải theo mục 2.
- Cả 3 lưới tab: mọi nốt dùng (Ding, E4, D4, A3) đều có trong bảng mục 1 của facts/tab-notation.md; hàng Ding và hàng Tay luôn có mặt; tiêu đề "Ô 1 · 4/4 · đen" đúng định dạng; số ô mỗi bài ≤ 8; tốc độ gợi ý ghi bằng chữ (chậm/vừa), không ghi BPM cứng — đúng luật mục 4 của tab-notation.md.

## KẾT LUẬN: SẠCH (0 blocker, 0 major, 1 minor)
