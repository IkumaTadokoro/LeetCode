## メモ

- パラメータは文字列
- 戻り値はtrue / false
- 入れ子になるようなケース（`[()]`）はありだけど、`[(])`こういうのはだめと理解

## 方針

- 前方から文字列を取得していき、左カッコであればそれに応じて検索対象のペアをスタックに積んでいく
    - `[]`：`[`に対するペアを、検索対象のスタックに入れる（`["]"]`）
    - `[()]`：
        - `[`に対するペアを、検索対象のスタックに入れる（`["]"]`）
        - `(`に対するペアを、検索対象のスタックに入れる（`[")", "]"]`）
- 右カッコであれば、スタックの先頭と称号し、あっていればスタックから削除。間違っていれば捜索終了
- ハッシュテーブルで各カッコの情報を持たせる。

---
1回目提出後

- やっぱりスタックを使って解いていく形式が一般的っぽい
- 文字数が奇数の場合は捜査するまでもなく終了できる
- charsに対してはブロックを渡すことができる。eachをわざわざつかわなくてもいいかも。
    - each_charが一番早かった
- ハッシュテーブルにふくまれているかは、次の方法がありそう
    - key?を使うのであれば事前にまとめて変数に入れておく
    - 直接はっしゅを呼び出す（呼び出せなければnilを返す）
- nextは引数をとれるので、こんな感じにもできる
    - `next stack << brackets[bracket] if brackets.key?(bracket)`
- popは破壊的メソッドなので`next if brackets[stack.pop] == bracket`すれば処理も同時にできる
- 同じ解法でも速度が安定しない。テストケースによって結構まちまちってことか
