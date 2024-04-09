abc070_b.jq
##############################
[define custom func]
def min(a; b):
    if a < b then a else b end;

def max(a; b):
    if a > b then a else b end;
##############################
##############################
##############################
##############################
##############################
##############################
##############################
def min(a; b):
    if a < b then a else b end;

def max(a; b):
    if a > b then a else b end;

split(" ") | map(tonumber) as $input |
$input[0] as $a |
$input[1] as $b |
$input[2] as $c |
$input[3] as $d |
max(min($b;$d) - max($a;$c); 0)
##############################
