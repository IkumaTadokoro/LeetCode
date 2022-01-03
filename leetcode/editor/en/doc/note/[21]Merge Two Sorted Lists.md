## メモ

- Rubyでやるなら`Array#concat`→`Array#sort`
  - `list1.concat(list2).sort!`はコンパイルエラーで通らない...
  - Arrayに見えるけど、ListNodeっていう独自定義クラスだった。問題文に書いてある
- なので方向転換する

## 再帰処理で解く場合

list1 = [1, 2, 4]
list2 = [1, 3, 4]

で考える。Array表記だとわかりづらいので、ListNode形式にしてみる

list1 = #<ListNode @val=1, next=#<ListNode @val=2, next=#<ListNode @val=4, next=nil>>>
list2 = #<ListNode @val=1, next=#<ListNode @val=3, next=#<ListNode @val=4, next=nil>>>

なので、以下のように呼び出すことができる。

list1.val = 1
list1.next = #<ListNode @val=2, next=#<ListNode @val=4, next=nil>>

(i) list1.val = 1, list2.val = 1

同じ数なのでどちらでも良いが、list1に追加していくようにする。
この場合

```ruby
list1.val = 1 # list1の値
list1.next # これはlist2.val(=1)と、list1の次の値を比較した値のうち、小さい方になる
```

(ii) list1.val = 2, list2.val = 1

list2の方が小さいので、これをlist1のnextとして設定する

```ruby
list1.val = 1 # list2の値
list1.next # これはlist1.val(=2)と、list2の次の値を比較した値のうち、小さい方になる
```

...この現在のそれぞれの値を比較して、小さい方を現在値、大きい方を次の比較対象にする処理を繰り返す。

