abc109_a.jq
#############################################
#############################################
#############################################
#############################################
split("\n") as $input | split(" ") | map(tonumber) as $A |
$A[0] as $a |
$A[1] as $b |
if ($a*$b)%2==1 then "Yes" else "No" end
#############################################
[python]
a,b=map(int,input().split())
if (a*b)%2==1:
    print('Yes')
else:
    print('No')
#############################################