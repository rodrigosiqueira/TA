function reference_test()
{
  declare -n ref=$1
  echo "Hello, I am the value inside reference: $ref"
  (( ref++ ))
}

var=3

reference_test var
echo "I am outside, and you can see my new value: $var"
