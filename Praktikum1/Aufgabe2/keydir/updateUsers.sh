ext=".pub"

for i in *.pub; do
	i=${i%$ext*}
	files+="${i} " || break
done

sed -i "s/@demo_project_users = .*/@demo_project_users = ${files} /g" example.conf

echo $files
