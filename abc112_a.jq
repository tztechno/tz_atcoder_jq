abc112_a.jq
#######################################
縦入力をまとめて処理
split("\n") as $lines | $lines | map(split(" ")) | flatten | map(tonumber) as $A |
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
split("\n") as $lines | $lines | map(split(" ")) | flatten | map(tonumber) as $A |
$A[0] as $n |
if $n==1 then
  "Hello World"
else
  $A[1] as $a |
  $A[2] as $b |    
  "\($a + $b)"
end
#######################################
[python]
N=int(input())
if N==1:
    print("Hello World")
else:
    a=int(input())
    b=int(input())
    print(a+b)
    
#######################################
