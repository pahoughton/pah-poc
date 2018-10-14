
if test -n "$(shopt -s nullglob; echo *)"; then
  echo found
else
  echo not found
fi
