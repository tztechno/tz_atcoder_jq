//abc093_a.jq
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
def containsAll:
  . | tostring
  | test("a") and test("b") and test("c");

containsAll | if . then "Yes" else "No" end

####################################
