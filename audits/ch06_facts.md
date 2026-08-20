# Fact check — ch06

## BLOCKER
(không có)

## MAJOR
(không có)

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương không nêu ví dụ bài hát cụ thể nào, nên mục 7 không áp dụng)

## Chi tiết đối chiếu

1. **Nốt tồn tại**: mọi tên nốt xuất hiện (D3/Ding, D4, A3, A4, Bb3, C4, C5, E4, F4, G4) đều nằm trong 10 nốt hợp lệ theo `facts/dkurd.md` mục 1. Không có nốt lạ.
2. **Quãng tám**: mọi lần nêu cao độ cụ thể đều kèm số quãng tám đúng (D3, D4, A3, A4, C4, C5, Bb3, E4, F4, G4). Các chỗ viết tên nốt không kèm quãng tám (dòng 7, 32, 53 — liệt kê "D, E, F, G, A, Bb, C") chỉ dùng để chỉ **tên nốt gốc chung của thang âm**, đúng với cách `facts/dkurd.md` mục 4 tự dùng ("Bảy tên nốt có mặt: D, E, F, G, A, Bb, C" — không kèm quãng tám), không phải lỗi.
3. **Cấu tạo hợp âm**: chương không gọi tên hợp âm nào (đúng phạm vi chương — chỉ nói về thang âm/scale, chưa vào hợp âm). Không có gì để đối chiếu, không có sai.
4. **Quãng**: chương chủ động KHÔNG đưa ra con số nửa cung/quãng cụ thể nào (tự nói rõ ở dòng 32: "chưa cần dùng nó để tính toán gì — những phép tính cụ thể hơn về khoảng cách giữa các bậc sẽ để dành cho chương sau"). Khái niệm **bậc** được gán: D=1, E=2, F=3, G=4, A=5, Bb=6, C=7 — khớp đúng thứ tự bậc trong bảng quãng ở `facts/dkurd.md` mục 5 (D=1, E=2, F=♭3, G=4, A=5, Bb=♭6, C=♭7; chương chỉ dùng số bậc, không nêu dấu giáng, không sai). Câu gợi mở cuối chương ("gõ A3 rồi Bb3 nghe 'căng' hơn A3 rồi C4") chỉ nói định tính, không đưa số nửa cung cụ thể — khớp hướng với cặp nửa cung A3→Bb3 đã ghi ở mục 5, không phải khẳng định sai.
5. **Sơ đồ ASCII**: đã `diff` từng ký tự khối sơ đồ trong chương (dòng 13–26) với khối chuẩn trong `facts/dkurd.md` (dòng 29–42) — **giống hệt tuyệt đối**.
6. **Lưới tab chạy được**: đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch06.md --kiem`:
   ```
   ĐẠT tab/sach_ch06_bai1.json  (8 nốt, 1 ding, 3 ô, 4/4)
   ĐẠT tab/sach_ch06_bai2.json  (2 nốt, 1 ding, 1 ô, 4/4)
   ```
   Không có lỗi. Số ô của mỗi hàng (số cột "9 · C5", "6 · F4"... khớp bảng mục 1 `facts/tab-notation.md`: 9=C5, 8=A4, 7=G4, 6=F4, 5=E4, 4=D4, 3=C4, 2=Bb3, 1=A3, D=Ding D3 — đúng hết).
7. **Ví dụ bài hát**: chương không nêu bất kỳ bài hát cụ thể nào (đã `grep` "bài hát/tông/scale/ca khúc" — không có kết quả). Mục này không áp dụng.

## KẾT LUẬN: SẠCH
