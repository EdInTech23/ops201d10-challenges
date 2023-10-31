# Array to store the directories list
directories=("dir1" "dir2" "dir3" "dir4")
# Function to check if an dir is in the directories list
is_dir_in_list() {
  search_dir="$1" # dirI am looking for in my list
  for dir in "${directories[@]}"; do
    # check if the dir Im searching for is in the array or not
    if ["$dir" == "$search_dir"]; then
      return 0 # true - dir was found!
    fi
  done
  return 1 # false - dir was not found
}
# Loop to repeatedly ask the user for dir to check
while true; do
  # ask the user for input of an dir to look for in the list
  read -p "Enter an dir to check if it&#39;s on your directories list.(or type &#39;done&#39;
to finish)" dir_to_check
    # dir_to_check is a variable that will store the user&#39;s input
  # check if the user&#39;s input is "done"
  if [ "$dir_to_check" = "done" ]; then
    break # exit the loop
  fi
  # check if the dir is in the directories list using the function
  if is_dir_in_list "$dir_to_check"; then
    echo "dir&#39;$dir_to_check&#39; is already on your directories list."
  else
    # if the dir is not on the list, ask the user if they want to add it
    read -p "&#39;$dir_to_check&#39; is not on your list, do you want to add it?
(yes/no)" add_dir
    if [ "$add_dir" = "yes" ]; then
      dirctory_list+=("$dir_to_check")
      echo "&#39;$dir_to_check&#39; added to your directories list."
    else
      echo "&#39;$dir_to_check&#39; is not on your directories list."
    fi
  fi
done
# Ask the user if they are ready to see their completed directories list
read -p "Are you ready to see your completed directories list? (yes/no)" show_list

if [ "$show_list" = "yes" ]; then
  echo "Your completed directories list: "
  echo "${directory_list[@]}"
else
  echo "Ok, you can check your list later."
fi

# End