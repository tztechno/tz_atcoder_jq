//practiceA.jq
##################################
1
2 3
test
##################################
split("\n")[0:-1] as $input |
$input[0] | tonumber as $a |
$input[1] | split(" ") | map(tonumber) as $bc |
"\($a + ($bc | add))"
##################################
split("\n")[0:-1] as $input |
$input[0] as $c |
"\($c)"
##################################
split("\n")[0:-1] as $input |
$input[0] | split(" ") | map(tonumber) as $bc |
"\($bc | add)"
##################################
##################################
##################################
##################################
##################################
##################################
##################################
##################################
split("\n")[0:-1] as $input |
$input[0] | tonumber as $a |
$input[1] | split(" ") | map(tonumber) as $bc |
$input[2] as $c |
"\($a + ($bc | add)) \($c)"
##################################