status=$(playerctl metadata --format '{{status}}')

if [ "${status}" = "Playing" ]; then
  playerctl metadata --format "{{ artist }} - {{ title }}"
else
  echo "No music"
fi