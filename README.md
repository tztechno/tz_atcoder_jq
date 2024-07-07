# tz_atcoder_jq

https://jqlang.github.io/jq/manual/

https://www.tohoho-web.com/ex/jq.html


### latest
---
```

```
---
```

```
---
```

```
---
```
split("\n") as $input | tonumber as $N |
split("\n") as $input | split(" ") | map(tonumber) as $A |
$A[0] as $N |
```
---
```
if文
if $s == $t[0:-1] then "Yes" else "No" end
```
---
```
縦入力をまとめて処理
split("\n") as $lines | $lines | map(split(" ")) | flatten | map(tonumber) as $A |
```
---

