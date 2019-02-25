correctAnswer=$(ls | wc -w)
userAnswer=-1

function isNumber {
  regex='^[0-9]+$'
  if [[ $1 =~ $regex ]] ; then
    return 0
  fi
  return 1
}

echo "How many files are in the current directory?"
while [[ ! userAnswer -eq correctAnswer ]]
do
  read userAnswer
  if $(isNumber $userAnswer) ; then
    if [[ $userAnswer -gt $correctAnswer ]] ; then
      echo "Try lower!"
    elif [[ $userAnswer -lt $correctAnswer ]] ; then
      echo "Try higher!"
    else
      echo "Congratulations! The correct answer is $correctAnswer."
    fi
  else
    echo "Your guess must be a non-negative integer! Try again!"
    userAnswer=-1
  fi
done
