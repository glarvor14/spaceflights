#$1 : requirements file name 
#remove white spaces 
cat $1 | sed 's/ //g' > requirements_tmp.txt

#parse the file to send information correctly to poetry to install the packages
for item in $(cat requirements_tmp.txt); 
do
	echo "poetry add "${item}""	
	poetry add "${item}"; 
done

rm requirements_tmp.txt