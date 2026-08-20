# Fact check — ch06

## BLOCKER
(không có)

## MAJOR
- [dòng 9] Chương gọi tổng số 10 nốt (9 tone field + Ding) là "**10 tone field**" / "**mười tone field**" hai lần trong cùng đoạn ("Nhìn lại mặt trống, bạn sẽ thấy con số 10 tone field thật ra không phải 10 "vị" khác nhau..." và "Bảy vị, mười tone field — tất cả đều nằm trong cùng một hộp"). Điều này mâu thuẫn với `facts/dkurd.md` mục 2 ("Chín tone field xếp thành vòng quanh Ding") và với `facts/glossary.md` — nơi định nghĩa **Ding** (nốt lõm) tách biệt hẳn khỏi **Tone field** (nốt lồi, chỉ có 9 cái quanh Ding). Chính chương này ở dòng 7 và dòng 59 lại dùng đúng "chín tone field", nên đây là mâu thuẫn nội bộ, không chỉ mâu thuẫn với facts.
  → Sửa thành "10 nốt" / "mười nốt" (như chính chương đã dùng đúng ở dòng 30, 36, 63) hoặc viết rõ "chín tone field cộng Ding" khi muốn nói tới cả 10. Căn cứ: `facts/dkurd.md` mục 2 ("Chín tone field xếp thành vòng quanh Ding"); `facts/glossary.md` hàng "Ding" và hàng "Tone field".

## MINOR
(không có)

## KHÔNG XÁC MINH ĐƯỢC
(không có — chương này không nêu ví dụ bài hát cụ thể nào, mục 7 không áp dụng)

## Chi tiết đối chiếu đã kiểm, không thấy lỗi
1. **Nốt tồn tại**: quét toàn bộ token dạng `[A-G]b?[0-9]` trong chương — chỉ xuất hiện A3, A4, Bb3, C4, C5, D3, D4, E4, F4, G4 (đủ và đúng 10 nốt của trống, không có Bb4/D5/B natural/thăng-giáng lạ nào).
2. **Quãng tám**: mọi lần nêu nốt cụ thể (trong văn xuôi và trong lưới tab) đều có số quãng tám kèm theo, đúng octave ghi trong `facts/dkurd.md`. Các chỗ liệt kê "D, E, F, G, A, Bb, C" không kèm số octave (dòng 9, 32, 41, 51) là liệt kê **tên nốt gốc của thang âm** — đúng quy ước chính `facts/dkurd.md` mục 4 và mục 5 cũng dùng (liệt kê tên nốt trần khi nói về thang âm/bậc, không phải nói về một tone field cụ thể) — không phải lỗi.
3. **Cấu tạo hợp âm**: chương không nêu hợp âm cụ thể nào (đúng vì hợp âm chưa được dạy tới lúc này) — không có gì để đối chiếu.
4. **Quãng**: chương không đưa ra con số quãng/nửa cung cụ thể nào, chỉ hẹn "chương sau" (dòng 109) — không có phát biểu sai để đối chiếu.
5. **Sơ đồ ASCII**: đã `diff` từng ký tự khối sơ đồ dòng 13–26 với `facts/dkurd.md` dòng 29–42 — khớp tuyệt đối, không lệch một ký tự.
6. **Lưới tab chạy được**: đã chạy `python3 bin/sach_tab_sang_json.py chapters/ch06.md --kiem`:
   ```
   ĐẠT tab/sach_ch06_bai1.json  (8 nốt, 1 ding, 3 ô, 4/4)
   ĐẠT tab/sach_ch06_bai2.json  (2 nốt, 1 ding, 1 ô, 4/4)
   ```
   Không có lỗi. Đối chiếu thêm bằng mắt số ô ↔ tên nốt trong hai bài tập (ví dụ "9 · C5", "6 · F4"...) khớp đúng bảng ánh xạ mục 1 của `facts/tab-notation.md`.
7. **Ví dụ bài hát**: chương không nêu tên bài hát/tông nào — không có gì cần xác minh.

## KẾT LUẬN: CÓ LỖI (0 blocker, 1 major)
