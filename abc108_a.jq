abc108_a.jq
##############################################
##############################################
##############################################
##############################################
##############################################
##############################################
math 不可
int 不可
// 不可
|floor OK
##############################################
split("\n") as $input | split(" ") | map(tonumber) as $A |
$A[0] as $N |
($N/2 | floor) * (($N+1)/2 | floor)
##############################################
[python]
N=int(input())
print((N//2)*((N+1)//2))
##############################################
