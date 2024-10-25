LE SCRIPT DOIT ETRE EXECUTE EN SUDO!

#!/bin/bash
#Vérifier qu'un argument est rentré
if [ $# -eq 0 ];
then
  echo "Sans nom d'utilisateur impossible de faire une recherche, logique?"
    exit1
fi
#vérification de l'existance de l'utilisateur
for users in $@;
do
  if cat  /etc/paswd | grep "^users:" > /dev/null
  then
    echo "Vilain copieur, $users esxiste déjà, fait preuve d'imagination"
  else
#Création de l'utilisateur
  useradd $users
#C'est bon chef??
      if test $? -eq 0;
      then 
        echo "lacréation de l'utilisateur $users est un franc succés!!"
      else
        echo "les echecs nous rendent plus fort, recommence la création de l'utilisateur"
fi
fi
done
