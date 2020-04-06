ext=".pub"

for i in *.pub; do
	i=${i%$ext*}
	files+="${i} " || break
done

echo $files
