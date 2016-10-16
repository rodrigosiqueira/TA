main()
{
  local fun='() { echo "$FUNCNAME"; }' x

  for x in {f..n}; do
    eval "${x}${fun}"
  done

  "$@"
}

main "$@"
