#! /bin/bash

Var1=SomeContent
Var2="SomeContent"
Var3=3
Var4="3"

echo "Var1 =" ${Var1}
echo "Var2 =" ${Var2}
echo "Var3 =" ${Var3}
echo "Var4 =" ${Var4}

#The first one is not displayed because the Variable Var1Extended does not exist
echo $Var1Extended
echo ${Var1}Extended

#There is no difference
echo $Var1$Var3
echo ${Var1}${Var3}

#The difference is that the singel quotes "deactivate" the variable, so not its content is displayed but instead the plain text
echo "The content of Var 1 is: ${Var1}"
echo 'The content of Var 1 is: ${Var1}'


