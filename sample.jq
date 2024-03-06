



############################################

split("\n") | map(select(. != "") | tonumber) as $input |
[
    range(0; $input[0] + 1) as $a |
    range(0; $input[1] + 1) as $b |
    range(0; $input[2] + 1) as $c |
    select($a * 500 + $b * 100 + $c * 50 == $input[3])
] | length

############################################

split("") | map(select(. == "1")) | length

############################################

split(" ") | map(tonumber) |
if (.[0] + .[1]) % 2 == 0 then "Even" else "Odd" end

############################################

echo '{"items":[{"item_id":1,"name":"すてきな雑貨","price":2500},{"item_id":2,"name":"格好いい置物","price":4500},{"item_id":3,"name":"ナイスなお皿","price":4500}]}' \
| jq '[.items[].price] | unique'
[
  2500,
  4500
]

############################################

$ echo '{"items":[{"item_id":1,"name":"すてきな雑貨","price":2500},{"item_id":2,"name":"格好いい置物","price":4500}]}' \
| jq '.items | map({ name: .name, yen: .price })'
[
  {
    "name": "すてきな雑貨",
    "yen": 2500
  },
  {
    "name": "格好いい置物",
    "yen": 4500
  }
]

############################################

$ echo '{"items":[{"item_id":1,"name":"すてきな雑貨","price":2500},{"item_id":2,"name":"格好いい置物","price":4500}]}' \
| jq '.items[] | { name: .name, yen: .price }'
{
  "name": "すてきな雑貨",
  "yen": 2500
}
{
  "name": "格好いい置物",
  "yen": 4500
}

############################################

$ echo '{"items":[{"item_id":1,"name":"すてきな雑貨","price":2500},{"item_id":2,"name":"格好いい置物","price":4500}]}' \
| jq '[.items[].price] | add'
7000

############################################
