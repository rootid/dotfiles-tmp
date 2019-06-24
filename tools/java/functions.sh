# Locate specific dependecy for given input eg. mdi velocity:velocity  
function mdi() {
  mvn dependency:tree -Dverbose -Dincludes=$1
}
