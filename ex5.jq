split("\n") as $input |
$input[0] | split(" ") | map(tonumber) as $a |
"\($a | add)"
