#!/usr/bin/env bash
# setup.sh — dựng toàn bộ khung dự án "Handpan D Kurd Không Học".
# Dùng: bash setup.sh            (dựng vào thư mục hiện tại)
#       bash setup.sh <thu-muc>  (dựng vào thư mục chỉ định)
set -euo pipefail
DICH="${1:-.}"
mkdir -p "$DICH"
cd "$DICH"

if [ -f CLAUDE.md ]; then
  echo "DỪNG: đã có CLAUDE.md ở đây. Chạy trong thư mục trống để tránh ghi đè."; exit 1
fi

mkdir -p .claude/agents .claude/commands bin facts specs chapters audits tab references

cat > .claude/agents/beginner-reader.md << '__HP_0__'
---
name: beginner-reader
description: Đọc một chương với tư cách người mới hoàn toàn, báo cáo chỗ tắc. Gọi tường minh sau khi có bản thảo.
model: haiku
tools: Read, Write
---

Bạn là người vừa mua cây handpan D Kurd đầu tiên. Bạn KHÔNG biết nhạc lý. Bạn chưa từng chơi nhạc cụ nào.

## Luật quan trọng nhất
Bạn **chỉ được đọc file chương được giao**. Cấm đọc `facts/`, `specs/`, hay chương khác. Nếu chương không giải thích thì bạn không biết — và đó chính là dữ liệu cần báo cáo.

## Việc của bạn
Đọc từ đầu đến cuối, dừng lại mỗi khi tắc, ghi lại **chính xác câu nào làm bạn tắc**.

Báo cáo 5 mục, ghi ra `audits/chNN_reader.md`:

1. **Chỗ tắc** — liệt kê từng câu/đoạn không hiểu. Trích câu đó ra + nói cụ thể không hiểu chỗ nào.
2. **Từ lạ** — từ nào xuất hiện mà chưa được giải thích?
3. **Thử làm theo** — đọc phần bài tập và Lớp 3, mô tả bạn sẽ đưa tay làm gì. Nếu không biết phải làm gì → nói rõ chỗ mù.
4. **Bài kiểm tra 10 tuổi** — đọc riêng Lớp 2 (tóm tắt). Hiểu được ý chính không? Không → chỉ đúng câu nào quá khó.
5. **Cảm giác** — đọc xong muốn cầm trống lên chơi, hay thấy nản?

## Cấm
- Cấm khen xã giao. Không tắc chỗ nào thì ghi ngắn gọn "trôi hết".
- Cấm giả vờ hiểu. Không hiểu là báo.
- Cấm đề xuất cách sửa — bạn không phải biên tập viên, bạn chỉ báo chỗ đau.
__HP_0__

cat > .claude/agents/chapter-writer.md << '__HP_1__'
---
name: chapter-writer
description: Viết hoặc sửa một chương của sách Handpan D Kurd. Gọi tường minh khi cần soạn bản thảo chương mới hoặc sửa theo báo cáo audit.
tools: Read, Write, Bash
---

Bạn là người chơi handpan 10 năm, chuyên D Kurd, đã dạy hàng trăm người mới. Bạn đang viết cuốn "Handpan D Kurd Không Học" bằng tiếng Việt.

## Quy trình bắt buộc
1. Đọc `CLAUDE.md`.
2. Đọc `facts/dkurd.md`, `facts/tab-notation.md`, `facts/glossary.md`.
3. Đọc `specs/chNN.md` của chương được giao.
4. Nếu có file trong `audits/` cho chương này → đọc hết, sửa theo BLOCKER + MAJOR.
5. Ghi ra `chapters/chNN.md`.
6. Chạy `python3 bin/sach_tab_sang_json.py chapters/chNN.md`. Báo lỗi → sửa lưới trong chương rồi chạy lại. Không ĐẠT thì chương chưa xong.

## Kỷ luật
- Chỉ dùng khái niệm nằm trong mục "Được phép dùng" của spec. Khái niệm trong mục "Cấm đụng" là **cấm**, kể cả nhắc thoáng qua.
- Mọi tên nốt lấy từ `facts/dkurd.md`. Không tự suy ra nốt nào có trên trống.
- Sơ đồ mặt trống: copy nguyên khối ASCII từ `facts/dkurd.md`. Không vẽ lại.
- Đủ 3 lớp. Lớp 1 từ 1200 đến 1500 từ — tự đếm trước khi ghi file.
- Bài tập viết bằng ký hiệu trong `facts/tab-notation.md`, bọc trong khối ```` ```tab id=... bar=... ts=... ````.
- **Cấm viết file JSON bằng tay.** JSON do script sinh từ lưới in. Bạn chỉ viết lưới.

## Cấm
- Cấm tự soát, tự chấm điểm, tự tuyên bố chương đã đạt.
- Cấm sửa file trong `facts/` hoặc `specs/`. Thấy spec sai → ghi chú vào phần trả về, không tự sửa.

## Trả về
Đúng một dòng, không hơn:
`đã ghi chapters/chNN.md, <số> từ ở Lớp 1`
Nếu có vấn đề với spec, thêm tối đa 2 dòng cảnh báo.
**Không bao giờ trả nội dung chương về session cha.**
__HP_1__

cat > .claude/agents/continuity.md << '__HP_2__'
---
name: continuity
description: Soát tính nhất quán xuyên suốt nhiều chương — trôi thuật ngữ, lặp ẩn dụ, tham chiếu chéo, sơ đồ lệch. Gọi ở checkpoint chương 5, 10, 16.
tools: Read, Grep, Glob, Write
---

Bạn soát toàn cuốn sách chứ không soát một chương. Dùng Grep là chính.

## Quy trình
1. Đọc `facts/glossary.md`.
2. Grep toàn bộ `chapters/` cho từng thuật ngữ trong glossary → tìm biến thể lệch.
3. Ghi báo cáo ra `audits/continuity_<mốc>.md`.

## 5 mục soát
1. **Trôi thuật ngữ** — cùng một khái niệm gọi bằng nhiều tên khác nhau ở các chương. Liệt kê: chương nào dùng từ nào.
2. **Sơ đồ lệch** — grep khối ASCII mặt trống trong mọi chương, so từng ký tự với `facts/dkurd.md`. Bất kỳ sai khác nào = BLOCKER.
3. **Lặp ẩn dụ** — cùng một hình ảnh so sánh (leo núi, nấu ăn, bản đồ…) dùng lại ở nhiều chương cho ý khác nhau → gây rối. Liệt kê.
4. **Tham chiếu chéo hỏng** — chương nói "như đã nói ở chương X" nhưng chương X không hề nói điều đó, hoặc X nằm sau. = MAJOR.
5. **Trùng nội dung** — hai chương dạy cùng một thứ. Đề xuất giữ ở chương nào, cắt ở chương nào.

## Cấm
- Cấm sửa file chương.
- Cấm nhận xét chất lượng từng chương riêng lẻ.
__HP_2__

cat > .claude/agents/editor.md << '__HP_3__'
---
name: editor
description: Soát sư phạm, cấu trúc, giọng văn và format cho một chương sách Handpan. Gọi tường minh sau khi có bản thảo.
tools: Read, Write
---

Bạn là biên tập viên sách dạy nhạc cho người mới. Thẳng thắn, không khách sáo, nhưng mọi góp ý phải kèm cách sửa cụ thể.

## Quy trình
1. Đọc `CLAUDE.md`.
2. Đọc `specs/chNN.md`.
3. Đọc `specs/` của 2 chương liền trước (để biết người đọc đã có gì trong đầu).
4. Đọc chương được giao. Ghi báo cáo ra `audits/chNN_editor.md`.

## Soát
1. **Đúng spec** — có đạt mục tiêu học của spec không? Có lấn sang phần của chương khác không?
2. **Nợ khái niệm** — chương có dùng khái niệm nào chưa được dạy ở chương trước và không nằm trong mục "Được phép dùng"? = MAJOR.
3. **Đủ 3 lớp** — thiếu lớp nào = BLOCKER. Lớp 1 ngoài khoảng 1200–1500 từ = MAJOR.
4. **Hình dung bằng chữ** — có mô tả được hình dạng/đường đi trên mặt trống không, hay chỉ liệt kê tên nốt suông?
5. **Kiểu piano/guitar** — có mô tả nào chỉ đúng với bàn phím thẳng hàng, không đúng với vòng tròn zigzag? = BLOCKER.
6. **Giọng** — có chỗ nào lên lớp, giáo huấn, hoặc ẩn dụ thô không?
7. **Hack có xài được không** — hack ở Lớp 3 có thực sự dùng ngay mà không cần nhớ lý thuyết không? Hack chỉ là tóm tắt lý thuyết = MAJOR.

## Cấm
- **Cấm phán về nhạc lý.** Nốt, quãng, hợp âm đúng hay sai không phải việc của bạn — `fact-checker` lo. Thấy nghi ngờ thì ghi vào mục "Chuyển fact-checker", không kết luận.
- Cấm viết lại chương.
- Cấm viện dẫn giáo trình bên ngoài không có file thật trong `references/`.

## Định dạng báo cáo
```
# Editor — chNN
## BLOCKER
- <vấn đề> → <sửa cụ thể>
## MAJOR
## MINOR
## Chuyển fact-checker
## KẾT LUẬN: ĐẠT / SỬA (n blocker, n major)
```
__HP_3__

cat > .claude/agents/fact-checker.md << '__HP_4__'
---
name: fact-checker
description: Soát tính đúng sai máy móc về nhạc lý và layout trống cho một chương sách Handpan. Gọi tường minh sau khi có bản thảo.
tools: Read, Write, Bash
---

Bạn là người soát dữ kiện. Việc của bạn là đúng/sai nhị phân. Bạn KHÔNG bàn về văn phong, ẩn dụ, giọng điệu hay sư phạm — đã có agent khác lo.

## Quy trình
1. Đọc `facts/dkurd.md` TRƯỚC. Đây là trọng tài duy nhất.
2. Đọc `facts/tab-notation.md`.
3. Đọc file chương được giao.
4. Soát 6 mục dưới. Ghi báo cáo ra `audits/chNN_facts.md`.

## 6 mục soát
1. **Nốt tồn tại** — mọi tên nốt xuất hiện trong chương có nằm trong 10 nốt của trống không? Nốt không có = BLOCKER.
2. **Quãng tám** — nốt nào cũng phải ghi kèm số quãng tám. Sai quãng tám (vd viết `Bb4` trong khi trống chỉ có `Bb3`) = BLOCKER.
3. **Cấu tạo hợp âm** — mọi hợp âm gọi tên có đúng nốt cấu thành không? Đối chiếu bảng hợp âm trong `facts/dkurd.md`. Sai = BLOCKER.
4. **Quãng** — mọi phát biểu về khoảng cách nốt (quãng 2, quãng 3 thứ, nửa cung…) đối chiếu bảng quãng. Sai = BLOCKER.
5. **Sơ đồ ASCII** — có khớp từng ký tự với bản trong `facts/dkurd.md` không? Lệch = BLOCKER.
6. **Lưới tab chạy được** — chạy `python3 bin/sach_tab_sang_json.py chapters/chNN.md --kiem`. Script báo lỗi = BLOCKER, chép nguyên dòng lỗi vào báo cáo. Không tự sửa. Mục này thay cho việc soát cột bằng mắt — đừng đếm tay.
7. **Ví dụ bài hát** — chương có khẳng định bài hát X ở tông Y không? Nếu bạn KHÔNG chắc chắn về tông thật của bài đó, ghi `KHÔNG XÁC MINH ĐƯỢC` và đề nghị người dùng tự kiểm. **Tuyệt đối không đoán, không bịa.**

## Cấm tuyệt đối
- Cấm trích dẫn hoặc viện dẫn giáo trình bên ngoài (Malte Marten, MasterTheHandpan, Kuckhermann…) trừ khi có file thật trong `references/`. Không có file = không nhắc tên.
- Cấm khẳng định điều bạn không kiểm chứng được từ `facts/`. Không chắc → ghi `KHÔNG XÁC MINH ĐƯỢC`.
- Cấm sửa chương.

## Định dạng báo cáo
```
# Fact check — chNN
## BLOCKER
- [dòng ~N] <lỗi> → <sửa thành gì> (căn cứ: facts/dkurd.md mục X)
## MAJOR
## MINOR
## KHÔNG XÁC MINH ĐƯỢC
## KẾT LUẬN: SẠCH / CÓ LỖI (n blocker, n major)
```
Không có lỗi thì ghi `SẠCH`. Đừng bịa lỗi cho có.
__HP_4__

cat > .claude/commands/chapter.md << '__HP_5__'
---
description: Chạy trọn vòng viết + soát cho một chương. Dùng /chapter 5
---

Chương cần xử lý: **$ARGUMENTS**

Bạn là điều phối viên. Bạn KHÔNG viết và KHÔNG soát. Bạn chỉ giao việc và gom kết quả.

## Luật sống còn
Khi gọi subagent, **chỉ truyền đường dẫn file**. TUYỆT ĐỐI không paste nội dung chương vào prompt subagent. Nếu bạn lỡ đọc nội dung chương vào context của mình, toàn bộ giá trị của kiến trúc này mất sạch — nên đừng đọc.

## Các bước

**1. Kiểm tra tiền đề**
Xác nhận `specs/chNN.md` tồn tại. Không có → dừng, báo người dùng chạy khởi tạo trước.

**2. Viết**
Gọi `chapter-writer`, giao: "Viết chương NN theo specs/chNN.md. Đọc CLAUDE.md và facts/ trước."
Nhận về một dòng xác nhận. Không đọc file chương.

**3. Soát — gọi SONG SONG trong một lượt, ba subagent độc lập**
- `fact-checker`: "Soát chapters/chNN.md. Ghi audits/chNN_facts.md."
- `editor`: "Soát chapters/chNN.md. Ghi audits/chNN_editor.md."
- `beginner-reader`: "Đọc chapters/chNN.md. Ghi audits/chNN_reader.md."

Cấm cho agent nào biết agent kia nói gì.

**4. Gom**
Đọc 3 file audit. Lập bảng gộp, phân loại BLOCKER / MAJOR / MINOR theo mục 6 của CLAUDE.md.
- Chỗ tắc mà `beginner-reader` báo → xếp MAJOR nếu nằm ở Lớp 2 hoặc Lớp 3, MINOR nếu ở Lớp 1.
- Mục `KHÔNG XÁC MINH ĐƯỢC` → **không** tự xử. Đưa thẳng cho người dùng quyết.

**5. Quyết**
- Không BLOCKER, không MAJOR → báo `Chương NN ĐẠT`. Đẩy MINOR vào `punchlist.md`. Dừng.
- Có BLOCKER hoặc MAJOR → gọi lại `chapter-writer` với danh sách lỗi + đường dẫn audit. Quay lại bước 3.
- **Trần 2 vòng.** Hết vòng 2 mà vẫn còn BLOCKER → dừng, trình bày ngắn gọn cho người dùng, hỏi ý.

**6. Checkpoint**
Nếu NN thuộc {5, 10, 16} → gọi thêm `continuity`.

## Báo cáo cuối
Tối đa 10 dòng: trạng thái chương, số vòng đã chạy, số lỗi từng loại, các mục cần người dùng quyết.
__HP_5__

cat > CLAUDE.md << '__HP_6__'
# HANDPAN D KURD KHÔNG HỌC — Luật dự án

Đây là luật bất biến cho MỌI agent và MỌI session. Vi phạm = dừng, không tự ý diễn giải lại.

## 0. Ngôn ngữ
- **Toàn bộ nội dung sách viết bằng TIẾNG VIỆT.**
- Thuật ngữ tiếng Anh: lần đầu xuất hiện phải kèm giải thích tiếng Việt, sau đó dùng nhất quán theo `facts/glossary.md`.
- Không tự chế thuật ngữ mới. Thiếu từ → thêm vào glossary trước, dùng sau.

## 1. Nguồn sự thật duy nhất
- `facts/dkurd.md` — layout, tên nốt, quãng, hợp âm. **Không agent nào được suy luận từ trí nhớ.**
- `facts/tab-notation.md` — ký hiệu bài tập.
- `facts/glossary.md` — thuật ngữ.
- Sơ đồ ASCII mặt trống: **copy nguyên xi từ `facts/dkurd.md`**. Cấm vẽ lại, cấm biến thể.

## 2. Cấu trúc mọi chương (3 lớp, bắt buộc đủ)
- **Lớp 1 — Chi tiết**: 1200–1500 từ. Câu chuyện/ẩn dụ đời thường → ví dụ âm nhạc cụ thể → hình dung bằng chữ trên mặt trống D Kurd.
- **Lớp 2 — Tóm tắt 30 giây**: 3–5 gạch đầu dòng, in đậm từ khoá. Đứa trẻ 10 tuổi phải hiểu.
- **Lớp 3 — Cheat sheet + Hack**: bảng/list ngắn in được dán tường, + 1–2 hack áp dụng ngay không cần nhớ lý thuyết.

## 3. Ràng buộc cứng
- ❌ KHÔNG khuông nhạc, không nốt nhạc năm dòng.
- ❌ KHÔNG dạy kiểu piano/guitar. Mọi thế bấm mô tả theo layout vòng tròn zigzag.
- ❌ KHÔNG dùng nốt không có trên trống (xem danh sách nốt KHÔNG có trong `facts/dkurd.md`).
- ✅ Mọi khái niệm phải có bài tập gõ được ngay trên D Kurd.
- ✅ Mọi bài tập viết bằng ký hiệu trong `facts/tab-notation.md`, bọc trong khối ```` ```tab ````.
- ✅ **Lưới in trong chương là nguồn duy nhất của bài tập.** File JSON trong `tab/` do `bin/sach_tab_sang_json.py` sinh ra. Cấm mọi agent viết hoặc sửa JSON bằng tay.
- ✅ Mọi tên nốt ghi kèm quãng tám: `A3`, `Bb3`, `C4`… Không viết trống trơn "nốt A".

## 4. Giọng văn
Vui, tự tin, như ngồi cà phê với bạn thân. Không lên lớp. Ẩn dụ tinh, không thô. Luôn nhấn: handpan là thư giãn, không cần hoàn hảo.

## 5. Luật subagent (QUAN TRỌNG — vi phạm là hỏng toàn bộ kiến trúc)
- Session cha **chỉ truyền ĐƯỜNG DẪN FILE** cho subagent. **TUYỆT ĐỐI không paste nội dung chương** vào prompt subagent.
- `chapter-writer` trả về đúng một dòng: `đã ghi chapters/chNN.md, <số> từ`. Không trả nội dung chương.
- 3 agent soát (`fact-checker`, `editor`, `beginner-reader`) chạy **song song, độc lập**. Cấm agent này đọc audit của agent kia.
- Gọi subagent **tường minh bằng tên**. Không để tự động route.

## 6. Phân loại lỗi khi soát
- **BLOCKER** — sai sự thật nhạc lý, dùng nốt không có trên trống, thiếu lớp, vi phạm ràng buộc cứng.
- **MAJOR** — sai thứ tự sư phạm, dùng khái niệm chưa dạy, người mới tắc không đi tiếp được.
- **MINOR** — câu chữ, nhịp văn, ẩn dụ chưa đắt.

Chỉ BLOCKER + MAJOR chặn chương. MINOR gom vào `punchlist.md`, xử một lượt cuối sách.
**Trần 2 vòng sửa/chương.** Quá thì dừng và hỏi người dùng.

## 7. Đường dẫn
- Spec chương: `specs/chNN.md` (đã khoá — không sửa khi đang viết)
- Bản thảo: `chapters/chNN.md`
- Báo cáo soát: `audits/chNN_<agent>.md`
- Lỗi vặt: `punchlist.md`
__HP_6__

cat > INIT.md << '__HP_7__'
# KHỞI TẠO DỰ ÁN — chạy đúng một lần

Dán prompt này vào Claude Code tại thư mục gốc dự án.

---

Bạn là kiến trúc sư nội dung. Việc của bạn ở phiên này là **dựng khung, KHÔNG viết chương nào**.

## Bước 1 — Kiểm tra
Đọc `CLAUDE.md`. Đọc `facts/dkurd.md`.
Nếu `facts/dkurd.md` còn dòng nào chứa `[CẦN BẠN XÁC NHẬN]` → **DỪNG**, liệt kê các dòng đó, yêu cầu người dùng xác nhận trước. Không tự điền, không tự đoán.

## Bước 2 — Sinh glossary
Tạo `facts/glossary.md`: mọi thuật ngữ nhạc lý sẽ dùng trong sách, mỗi mục gồm — từ tiếng Việt chuẩn dùng trong sách | tương đương tiếng Anh | định nghĩa một câu cho người không biết nhạc. Đây là từ khoá khoá cứng, chương sau không được gọi khác đi.

## Bước 3 — Sinh spec 16 chương
Với mỗi chương, ghi `specs/chNN.md` theo đúng khuôn:

```
# Chương NN — <tiêu đề>

## Mục tiêu học
Đọc xong, người mới LÀM ĐƯỢC gì (động từ hành động, không phải "hiểu về…").

## Tiền đề
Khái niệm người đọc đã có từ chương trước (ghi rõ chương nào).

## Được phép dùng
Danh sách khái niệm writer được dùng ở chương này.

## Cấm đụng
Khái niệm thuộc chương sau. Cấm nhắc, kể cả thoáng qua.

## Khái niệm chương này giới thiệu
Tối đa 2. Nhiều hơn 2 là chương quá tải — tách ra.

## Nốt / hợp âm sẽ dùng
Lấy từ facts/dkurd.md.

## Bài tập
1–3 bài, viết bằng ký hiệu tab.

## Hack ở Lớp 3
Gợi ý hướng — hack phải xài được ngay, không cần nhớ lý thuyết.

## Móc nối
Nhắc lại chương nào, gieo mầm cho chương nào.
```

## Danh sách 16 chương

**HỒI 1 — Chơi được ngay** (không một chữ lý thuyết)
1. Tiếng đầu tiên — chạm Ding, để nó ngân
2. Bàn tay & cú gõ — đầu ngón vs mô ngón cái, gõ chỗ nào trên tone field, ghost note, tắt tiếng, lực
3. Ding là nhà — D3, đi đâu rồi cũng về
4. Bản đồ zigzag — vì sao nốt liền nhau lại nằm hai phía
5. Ba pattern chơi ngay — bài hoàn chỉnh đầu tiên

**HỒI 2 — Vì sao nghe hay** (lý thuyết tối thiểu, giải thích cái tay đã làm)
6. Không có nốt sai — D thứ, 100% diatonic
7. Khoảng cách giữa các nốt
8. A3 → Bb3: gia vị bí mật
9. Hình học trên mặt trống — hợp âm là hình, không phải công thức
10. Công thức vòng hoà thanh

**HỒI 3 — Tự làm nhạc**
11. Groove là hơi thở — handpan là bộ gõ
12. Căng và giãn
13. Ngẫu hứng
14. Sáng tác — mở, thân, kết
15. Jam với người khác
16. Vượt khỏi 10 nốt — rim, gu, chạm nhẹ (KÈM CẢNH BÁO: bẻ cao độ có thể làm hỏng trống)

**Phụ lục**: bảo quản trống · bảng tab đầy đủ · cheat sheet tổng một trang

## Bước 4 — Tự soát khung
Sau khi sinh xong 16 spec, kiểm hai điều rồi báo cáo:
- **Nợ khái niệm**: có chương nào liệt "Tiền đề" là thứ chưa chương nào giới thiệu không?
- **Trùng**: có khái niệm nào xuất hiện ở mục "giới thiệu" của hơn một chương không?

## Bước 5 — DỪNG
Trình bày danh sách 16 chương kèm 1 dòng mục tiêu học mỗi chương. Hỏi người dùng duyệt.
**Không viết chương nào cho tới khi được duyệt.**
__HP_7__

cat > bin/sach_tab_sang_json.py << '__HP_8__'
#!/usr/bin/env python3
"""
Đọc file chương .md, tìm các khối ```tab, sinh file JSON trong tab/
theo đúng lược đồ của app handpan_dkurd10_v2_4.html.

Dùng:  python3 bin/sach_tab_sang_json.py chapters/ch05.md
       python3 bin/sach_tab_sang_json.py chapters/ch05.md --kiem   (chỉ soát, không ghi)

Lý do tồn tại: LLM tính tick bằng tay là sai. Lưới in trong sách là nguồn
duy nhất; JSON sinh ra từ nó, nên không thể lệch nhau.
"""
import sys, os, re, json

TPB   = 480
G16   = 120
PAD   = {"1":57,"2":58,"3":60,"4":62,"5":64,"6":65,"7":67,"8":69,"9":72}
NAME  = {57:"A3",58:"Bb3",60:"C4",62:"D4",64:"E4",65:"F4",67:"G4",69:"A4",72:"C5"}
DING  = 50
GO    = {"●","○"}          # sinh nốt
TRONG = {".","·","▬","✕"}  # không sinh nốt
TAY   = {"P":"R","T":"L"}

class Loi(Exception): pass

def moc(ts):
    num, den = (int(x) for x in ts.split("/"))
    e8  = TPB * 4 // den
    bar = e8 * num
    if bar % G16: raise Loi(f"nhịp {ts} không chia hết cho lưới móc kép")
    return num, den, bar, bar // G16

def doc_khoi(md):
    """Trả về list (info_dict, [dòng]) cho mỗi khối ```tab."""
    ra, dang, info, buf = [], False, None, []
    for so, dong in enumerate(md.splitlines(), 1):
        if not dang:
            m = re.match(r"^```tab\s+(.*)$", dong.strip())
            if m:
                kv = dict(p.split("=", 1) for p in m.group(1).split() if "=" in p)
                thieu = {"id","bar","ts"} - kv.keys()
                if thieu: raise Loi(f"dòng {so}: khối tab thiếu {sorted(thieu)}")
                info, buf, dang = kv, [], True
        else:
            if dong.strip() == "```":
                ra.append((info, buf)); dang = False
            else:
                buf.append((so, dong))
    if dang: raise Loi("có khối ```tab không đóng")
    return ra

def phan_tich(info, dong_list):
    num, den, bar_ticks, cols = moc(info["ts"])
    base = (int(info["bar"]) - 1) * bar_ticks
    hang = {}
    for so, dong in dong_list:
        if "|" not in dong: raise Loi(f"dòng {so}: thiếu ký tự |")
        nhan, phai = dong.split("|", 1)
        nhan = nhan.strip()
        o = phai.split()
        if nhan.startswith(("móc","nốt","phách")) and not re.match(r"^[1-9D]\s*·", nhan):
            continue  # hàng tiêu đề nhịp
        if len(o) != cols:
            raise Loi(f"dòng {so}: hàng '{nhan}' có {len(o)} ô, nhịp {info['ts']} cần {cols}")
        hang[nhan] = o
    return num, den, bar_ticks, cols, base, hang

def sinh(md_path, ghi=True):
    md   = open(md_path, encoding="utf-8").read()
    khoi = doc_khoi(md)
    if not khoi:
        print("không tìm thấy khối ```tab nào"); return 0
    gom = {}
    for info, dong_list in khoi:
        num, den, bar_ticks, cols, base, hang = phan_tich(info, dong_list)
        bid = info["id"]
        g = gom.setdefault(bid, {"notes": [], "ding": [], "ts": [num, den], "bars": 0})
        if g["ts"] != [num, den]:
            raise Loi(f"{bid}: các ô không cùng nhịp")
        g["bars"] = max(g["bars"], int(info["bar"]))
        tay = hang.get("Tay"); loi = hang.get("Lời")
        for nhan, o in hang.items():
            if nhan in ("Tay", "Lời"): continue
            m = re.match(r"^([1-9D])\s*·", nhan)
            if not m: raise Loi(f"nhãn hàng lạ: '{nhan}'")
            k = m.group(1)
            for c, ky in enumerate(o):
                if ky in TRONG: continue
                if ky not in GO: raise Loi(f"{bid} ô {info['bar']}: ký hiệu lạ '{ky}'")
                t = base + c * G16
                if k == "D":
                    g["ding"].append(t)
                else:
                    n = {"t": t, "note": PAD[k], "fixed": False,
                         "hand": TAY.get(tay[c], "R") if tay else "R"}
                    if loi and loi[c] not in ("_", ".", "·"):
                        n["ly"] = loi[c]
                    g["notes"].append(n)
    n_file = 0
    for bid, g in gom.items():
        g["notes"].sort(key=lambda x: (x["t"], x["note"]))
        g["ding"] = sorted(set(g["ding"]))
        doc = {
            "notes": g["notes"], "ding": g["ding"],
            "PAD": {str(v): k for k, v in PAD.items()},
            "NAME": {str(k): v for k, v in NAME.items()},
            "meta": {"name": bid, "bpm": 90, "dmode": "tab",
                     "bars": g["bars"], "barOffset": 0,
                     "timeSig": g["ts"], "transpose": 0, "version": 1},
        }
        ra = os.path.join("tab", bid + ".json")
        if ghi:
            os.makedirs("tab", exist_ok=True)
            with open(ra, "w", encoding="utf-8") as f:
                json.dump(doc, f, ensure_ascii=False, indent=1)
        print(f"{'ghi' if ghi else 'ĐẠT'} {ra}  ({len(g['notes'])} nốt, "
              f"{len(g['ding'])} ding, {g['bars']} ô, {g['ts'][0]}/{g['ts'][1]})")
        n_file += 1
    return n_file

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(2)
    try:
        sinh(sys.argv[1], ghi="--kiem" not in sys.argv)
    except Loi as e:
        print("LỖI TAB:", e); sys.exit(1)
__HP_8__

cat > facts/dkurd.md << '__HP_9__'
# FACTS — Handpan D Kurd 10 nốt

> ⚠️ Đây là NGUỒN SỰ THẬT DUY NHẤT của dự án. Mọi agent đối chiếu file này.
> Dòng nào còn `[CẦN BẠN XÁC NHẬN]` = chưa được dùng để viết chương.

## 1. Mười nốt

| # | Nốt | MIDI | Vai trò |
|---|-----|------|---------|
| — | **D3** | 50 | Ding — nốt tâm, chủ âm |
| 1 | A3 | 57 | tone field thấp nhất |
| 2 | Bb3 | 58 | |
| 3 | C4 | 60 | |
| 4 | D4 | 62 | quãng tám của Ding |
| 5 | E4 | 64 | |
| 6 | F4 | 65 | |
| 7 | G4 | 67 | |
| 8 | A4 | 69 | |
| 9 | C5 | 72 | tone field cao nhất |

Thang âm: **Rê thứ tự nhiên (D natural minor / Aeolian)** — đủ 7 bậc. Lên dây A440.

**Tầm của chín tone field: A3 → C5 = 15 nửa cung.** Chưa đủ hai quãng tám. Đây là ràng buộc cứng khi chuyển bài hát sang trống: giai điệu nào rộng hơn 15 nửa cung thì không chơi trọn được, phải cắt theo đoạn.

## 2. Sơ đồ mặt trống — BẢN CHUẨN

> Mọi chương copy nguyên khối dưới đây. Cấm vẽ lại, cấm sửa một ký tự.

```
                     ⑨ C5

        ⑧ A4                    G4 ⑦

   ⑥ F4                              E4 ⑤
                     ◉
                  Ding D3
   ④ D4                              C4 ③

        ② Bb3                   A3 ①

               ▲ NGƯỜI CHƠI ▲
```

Đọc sơ đồ: nhìn từ trên xuống, người chơi ngồi phía dưới. Ding ở tâm. Chín tone field xếp thành vòng quanh Ding.

**Chiều đã xác nhận với trống thật**: nhóm số lẻ (A3, C4, E4, G4) nằm **bên PHẢI** người chơi. Nhóm số chẵn (Bb3, D4, F4, A4) nằm **bên TRÁI**. C5 ở đỉnh, xa người chơi nhất.

## 3. Luật zigzag — điều quan trọng nhất về layout

Đi lên theo thang âm thì **nhảy qua nhảy lại hai bên**:

```
   BÊN TRÁI (chẵn)        BÊN PHẢI (lẻ)
      A4 ⑧                  ⑦ G4
      F4 ⑥                  ⑤ E4
      D4 ④                  ③ C4
     Bb3 ②                  ① A3

            ⑨ C5 — đỉnh
```

- **Nốt liền kề trong thang âm luôn ở hai phía đối nhau** → chạy thang âm là tự động đổi tay trái–phải. Không cần nghĩ.
- Đi lên bằng cách nhảy chéo: A3 (phải) → Bb3 (trái) → C4 (phải) → D4 (trái) → E4 (phải) → F4 (trái) → G4 (phải) → A4 (trái) → C5 (đỉnh).
- **Hệ quả then chốt**: hợp âm ba nốt = cách một nốt = **ba ô liên tiếp CÙNG MỘT BÊN**. Xem mục 6.

## 4. Nốt CÓ và nốt KHÔNG CÓ

**Bảy tên nốt có mặt**: D, E, F, G, A, Bb, C

**Lặp lại ở hai quãng tám** (nốt neo, chơi được cả cao lẫn thấp):
- D → D3 (Ding) và D4
- A → A3 và A4
- C → C4 và C5

**Chỉ có duy nhất một cao độ** (dùng hết là hết, không có bản sao):
- Bb3, E4, F4, G4

**KHÔNG CÓ trên trống** — viết ra là BLOCKER:
- B bécar (B natural) — chỉ có Bb
- Mọi nốt thăng/giáng khác: C#, D#, F#, G#, A#(≠Bb), Eb, Ab, Db, Gb
- Nốt nào thấp hơn D3 hoặc cao hơn C5
- Cụ thể hay bị nhầm: **không có Bb4**, **không có D5**
- **Không có nốt nào ở mặt sau** (không có gu / mutant note) — đã xác nhận

Vì thang không đủ hai quãng tám, **phải kiểm theo 9 nốt tuyệt đối, không kiểm theo bậc**. Nói "trống có nốt A" là chưa đủ — phải nói rõ A3 hay A4.

## 5. Bảng quãng tính từ D

| Nốt | Bậc | Số nửa cung từ D | Gọi tên |
|-----|-----|------------------|---------|
| D | 1 | 0 | chủ âm |
| E | 2 | 2 | quãng 2 trưởng |
| F | ♭3 | 3 | quãng 3 thứ |
| G | 4 | 5 | quãng 4 đúng |
| A | 5 | 7 | quãng 5 đúng |
| Bb | ♭6 | 8 | quãng 6 thứ |
| C | ♭7 | 10 | quãng 7 thứ |

**Chữ ký của D Kurd**: A3 → Bb3 cách nhau **1 nửa cung**. Đây là nguồn gốc cảm giác "bí ẩn, lơ lửng" của D Kurd.

Trên trống có **hai** cặp nửa cung, không phải một:
- **A3 → Bb3** (① sang ②, phải sang trái, hai ô thấp nhất — cặp nổi bật vì nằm ngay trước mặt người chơi)
- **E4 → F4** (⑤ sang ⑥, phải sang trái, giữa trống)

Mọi cặp liền kề còn lại cách 1 cung (2 nửa cung).

## 6. Bảy hợp âm & hình trên mặt trống

Cả 7 hợp âm ba nốt của D thứ đều gõ được:

| Hợp âm | Nốt cấu thành | Thế bấm gọn nhất | Hình trên trống |
|--------|---------------|------------------|-----------------|
| **Am** | A–C–E | ① A3 · ③ C4 · ⑤ E4 | 3 ô liên tiếp **bên phải**, từ dưới lên |
| **C** | C–E–G | ③ C4 · ⑤ E4 · ⑦ G4 | 3 ô liên tiếp **bên phải**, dịch lên một nấc |
| **Bb** | Bb–D–F | ② Bb3 · ④ D4 · ⑥ F4 | 3 ô liên tiếp **bên trái**, từ dưới lên |
| **Dm** | D–F–A | ④ D4 · ⑥ F4 · ⑧ A4 | 3 ô liên tiếp **bên trái**, dịch lên một nấc |
| **F** | F–A–C | ⑥ F4 · ⑧ A4 · ⑨ C5 | 2 ô trên cùng bên trái + đỉnh |
| **Gm** | G–Bb–D | ② Bb3 · ④ D4 · ⑦ G4 | bắc cầu hai bên |
| **Edim** | E–G–Bb | ② Bb3 · ⑤ E4 · ⑦ G4 | bắc cầu hai bên |

**Quy tắc vàng cho chương 9 (hình học)**: bốn hợp âm chính chỉ là **ba ô sát nhau cùng một bên**.
- Bên phải: ①③⑤ = **Am** → trượt lên một nấc thành ③⑤⑦ = **C**
- Bên trái: ②④⑥ = **Bb** → trượt lên một nấc thành ④⑥⑧ = **Dm**

Không cần nhớ tên nốt. Đặt ba ngón lên ba ô liền nhau một bên, trượt lên trượt xuống — mọi thứ nghe ra đều đúng.

Thế bấm khác cũng đúng:
- Dm: D3 (Ding) + ① A3 + ⑥ F4
- F: ③ C4 + ⑥ F4 + ⑧ A4
- Am: ⑤ E4 + ⑧ A4 + ⑨ C5
- C: ⑤ E4 + ⑦ G4 + ⑨ C5

## 7. Vòng hoà thanh dùng được

| Vòng | Bậc | Cảm giác |
|------|-----|----------|
| Dm – Bb – F – C | i – VI – III – VII | phổ biến nhất, "trôi" |
| Dm – C – Bb – C | i – VII – VI – VII | lơ lửng, không kết |
| Dm – Gm – C – Dm | i – iv – VII – i | tối, có kết |
| Dm – F – C – Dm | i – III – VII – i | sáng hơn |

Bốn vòng trên là toàn bộ vòng hoà thanh sách dạy. Chương 10 không được thêm vòng thứ năm.

## 8. Ràng buộc còn mở

**Ký hiệu tab**: đã chốt ở `facts/tab-notation.md` — trùng format lưới của app `handpan_dkurd10_v2_4.html`, ánh xạ 1:1 sang lược đồ JSON.

**Hãng / model trống**: không rõ. Hệ quả — chương 16 chỉ được viết ở mức chung, không khẳng định đặc tính riêng của hãng nào.

**Chương 16 "Vượt khỏi 10 nốt"** — trống KHÔNG có nốt mặt sau, nên chương này giới hạn ở:
- gõ rìa (rim / shoulder) — âm gõ, không phải cao độ
- chạm nhẹ vào vai tone field để lấy bồi âm
- kỹ thuật tắt tiếng và ghost note để tạo cảm giác nốt mới
- ⚠️ **CẢNH BÁO bắt buộc đưa vào sách**: không cố bẻ cao độ bằng cách gõ mạnh hoặc ấn mặt trống — làm lệch tuning, hỏng trống.

## 9. Ghi chú độ tin cậy

- Mục 1, 4, 5, 6, 7: suy ra từ layout D Kurd 10 nốt và lý thuyết nhạc — kiểm được bằng tính toán, độ tin cậy cao.
- Mục 2, 3 (chiều trái/phải): **đã đối chiếu với ảnh trống thật của người dùng** — chốt.
- Số MIDI và tầm 15 nửa cung: lấy từ `CLAUDE.md` của dự án MIDI→tab — chốt.
- Không mục nào trong file này dựa trên giáo trình bên ngoài. Cấm viện dẫn tên giáo trình nào trong sách trừ khi có file thật trong `references/`.
__HP_9__

cat > facts/tab-notation.md << '__HP_10__'
# FACTS — Ký hiệu tab dùng trong sách

> Mọi bài tập trong sách viết bằng ký hiệu này. Không dùng khuông nhạc.
> Format này **trùng với lưới của app `handpan_dkurd10_v2_4.html`** — người đọc thấy trong sách y hệt thứ họ thấy trên điện thoại.

## 1. Bảng nốt — số ô trùng với `PAD` của app

| Số ô | Nốt | MIDI |
|------|-----|------|
| 9 | C5 | 72 |
| 8 | A4 | 69 |
| 7 | G4 | 67 |
| 6 | F4 | 65 |
| 5 | E4 | 64 |
| 4 | D4 | 62 |
| 3 | C4 | 60 |
| 2 | Bb3 | 58 |
| 1 | A3 | 57 |
| D | Ding D3 | 50 |

Nhớ nhanh: **lẻ = bên phải, chẵn = bên trái, 9 ở đỉnh, D ở giữa.**

## 2. Khuôn lưới

Hàng xếp từ **9 xuống 1**, rồi **Ding**, rồi **Lời**. Cột = ô nhỏ trong ô nhạc.
Chiều dọc của lưới trùng chiều dọc của sơ đồ mặt trống: số 9 ở trên = xa người chơi; số 1 ở dưới = gần người chơi. Dùng điểm này để dạy — mắt đọc lưới và mắt nhìn trống cùng một hướng.

````
```tab id=sach_ch05_bai1 bar=1 ts=6/8
móc đơn  | 1  .  2  .  3  .  4  .  5  .  6  .
 5 · E4  | ·  ·  ·  ·  ●  ·  ·  ·  ·  ·  ·  ·
 3 · C4  | ·  ·  ·  ·  ·  ·  ·  ·  ●  ·  ·  ·
 1 · A3  | ●  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·
 D · Ding| ●  ·  ·  ·  ·  ·  ●  ·  ·  ·  ·  ·
 Tay     | P  ·  ·  ·  P  ·  T  ·  P  ·  ·  ·
```
````

Dòng mở khối bắt buộc: ```` ```tab id=<slug> bar=<số ô> ts=<nhịp> ````. Mỗi ô nhạc là một khối riêng, cùng `id` thì thuộc cùng bài tập.

- Mỗi ô là **một ký tự, cách nhau bằng khoảng trắng**. Số ô phải khớp nhịp: 6/8 → 12 cột, 4/4 → 16 cột. Lệch một cột là script báo lỗi ngay, không cần người soát.
- `●` = gõ, `·` = không gõ.
- **Chỉ vẽ những hàng thực sự dùng trong bài tập đó.** Bài dùng 3 nốt thì 3 hàng, không vẽ đủ 9. Đây là khác biệt duy nhất so với app (app luôn vẽ đủ 9 hàng vì có màn hình cuộn được, sách in thì không).
- Hàng `Ding` và hàng `Tay` luôn có. Hàng `Lời` chỉ có khi bài tập gắn với lời hát.
- Hàng `Tay` là **của sách, app không có** — nhưng dữ liệu đã nằm sẵn ở trường `hand`.

## 3. Ký hiệu bổ sung

| Ký hiệu | Nghĩa |
|---------|-------|
| `●` | gõ bình thường |
| `○` | ghost note — gõ rất nhẹ, gần như chỉ nghe hơi |
| `✕` | tắt tiếng: đặt tay lên nốt vừa gõ cho im |
| `▬` | giữ, để ngân qua các cột tiếp theo |
| `P` / `T` | tay phải / tay trái |

Hợp âm = nhiều `●` thẳng cột ở nhiều hàng.

## 4. Luật viết bài tập
- Cột phải thẳng hàng tuyệt đối. Luôn bọc trong khối code.
- Ghi tiêu đề mỗi ô: `Ô N · <nhịp> · <tên phách>` (vd `Ô 3 · 4/4 · móc đơn`).
- Bài tập trong sách **tối đa 8 ô**. Dài hơn thì người mới không tập nổi và không in vừa trang.
- Chỉ dùng nốt trong bảng mục 1. Nốt ngoài bảng = BLOCKER.
- Ghi tốc độ gợi ý bằng chữ (chậm — vừa — nhanh), không ghi BPM cứng.
- Tên nốt luôn kèm quãng tám. Cấm viết "nốt A" trống trơn.

## 5. Ánh xạ sang JSON

```
{ notes:[{t, note, ly, fixed, hand}], ding:[t], PAD, NAME,
  meta:{name, bpm, dmode, bars, barOffset, timeSig:[n,d], transpose, version:1} }
```

| Sách | JSON | Ghi chú |
|------|------|---------|
| số ô 1–9 | `note` (số MIDI, bảng mục 1) | `PAD` ánh xạ MIDI → số ô |
| vị trí cột | `t` | tick tuyệt đối |
| `P` / `T` | `hand` = `"R"` / `"L"` | mặc định `"R"` |
| hàng Ding | mảng `ding` (tick), **không** nằm trong `notes` | |
| hàng Lời | `ly` — âm tiết lời hát gắn với nốt đó | |
| nhịp | `meta.timeSig` | thiếu thì mặc định `[6,8]` |
| số ô | `meta.bars` | |
| `fixed` | 5 giá trị: `false` · `"8va"` · `"8vb"` · `"8va-le"` · `"nan"` | bài tập gốc của sách luôn `false` |

Hằng số lưới: `G16 = 120` · `E8 = TPB*4/d` · `BAR = E8*n` · `COLS = BAR/G16` · `SUB = E8/G16`.

## 6. Xuất JSON — sinh bằng script, KHÔNG viết tay

```bash
python3 bin/sach_tab_sang_json.py chapters/chNN.md          # sinh file vào tab/
python3 bin/sach_tab_sang_json.py chapters/chNN.md --kiem   # chỉ soát, không ghi
```

Script đọc chính khối lưới in trong chương và sinh `tab/<id>.json`. **Lưới in là nguồn duy nhất** — JSON là sản phẩm phái sinh, nên không thể lệch nhau. Không agent nào được tự tính tick hay viết JSON bằng tay.

Kết quả: mở file trong app hiện có là nghe được bài tập. Sách đọc bằng mắt, app thì nghe.

Đặt `id` theo mẫu `sach_chNN_baiM` (không dấu, không khoảng trắng — gõ được trên Android).

Hai giới hạn đã biết:
- Hàng `Ding` không mang được thông tin tay, vì lược đồ lưu `ding` là mảng tick trần. Tay của Ding chỉ tồn tại trong sách in.
- `▬` (giữ) và `✕` (tắt tiếng) không sinh nốt trong JSON — chúng là chỉ dẫn kỹ thuật cho người đọc, app không biểu diễn được.
__HP_10__

chmod +x bin/sach_tab_sang_json.py 2>/dev/null || true

# tự kiểm: script tab phải chạy được
cat > /tmp/_hp_thu.md << '__HP_THU__'
```tab id=thu bar=1 ts=6/8
móc đơn  | 1  .  2  .  3  .  4  .  5  .  6  .
 1 · A3  | ●  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·  ·
 D · Ding| ●  ·  ·  ·  ·  ·  ●  ·  ·  ·  ·  ·
 Tay     | P  ·  ·  ·  ·  ·  T  ·  ·  ·  ·  ·
```
__HP_THU__
if python3 bin/sach_tab_sang_json.py /tmp/_hp_thu.md --kiem >/dev/null 2>&1; then
  KQ="ĐẠT"
else
  KQ="LỖI — kiểm python3 đã cài chưa"
fi
rm -f /tmp/_hp_thu.md

echo
echo "Đã dựng xong khung dự án tại: $(pwd)"
echo "Tự kiểm script tab: $KQ"
echo
echo "Các file:"
find . -type f -not -path './.git/*' | sort | sed 's/^/  /'
echo
echo "Bước tiếp: mở Claude Code tại thư mục này, dán nội dung INIT.md."

