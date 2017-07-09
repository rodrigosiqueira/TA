final() {
  echo "Heyyyy dudeee, I am the $FUNCNAME! Line $LINENO"
}
func_1() {
  echo "Meee, $FUNCNAME! Line: $LINENO"
  final
}

func_2() {
  echo "Mee, $FUNCNAME! Line: $LINENO"
  func_1
}

func_3() {
  echo "Me, $FUNCNAME! Line: $LINENO"
  func_2
}

func_3
