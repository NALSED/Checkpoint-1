#### Loger en root

![1 loger en root](https://github.com/user-attachments/assets/aa1d4fab-6c20-47a0-b727-a28fdff46e60)


#### Regarder la partition 

        lsblk
![2 regarder la partition](https://github.com/user-attachments/assets/2a9bdc6e-bdd5-4e1b-92e0-1b591b7c22a8)


#### Partitionnner le disque

        cfdisk /dev/sdb
        
#### Partitionner en dos
![3 partitionner en dos](https://github.com/user-attachments/assets/cd2b527c-146c-49fb-8ea9-30698170ceba)


#### Créer deux partion une ext4 6gb et une swap du reste ( en primary)

![4 les partiotions](https://github.com/user-attachments/assets/99e1bd21-bd51-4400-b53c-3424e881578c)


#### Vérifier les partitions

![5 test après partitionnement](https://github.com/user-attachments/assets/746e22f4-f240-4826-9524-53340ae283f1)


#### Formater les disques

    mkfs.ext4 -L PARTITION1 /dev/sdb1
![6 formater et renommer les partition](https://github.com/user-attachments/assets/3bb6c204-05b3-47d7-91e6-b10dd4afc98e)

    mkswap -L- SWAP
 
 ![7 swap](https://github.com/user-attachments/assets/d2e1957c-1e70-4c4f-814f-c5d78f168c7b)


#### Obtenir les UUID des partitions

    lsblk -f 
![8 UUID](https://github.com/user-attachments/assets/25783996-e7b7-46db-85f6-7797dd5aa6e3)


#### Changer le partitionnement des disque entre sda5 et sdb2
    
    swapoff /dev/sda5
    swapon /dev/sdb2
![9swap of swap on](https://github.com/user-attachments/assets/f5776b04-9ce7-4fbd-8ee1-0cbfec0bbb2a)


#### Monter le disque dans l'arborécence.

    mkdir /mnt/montage

#### Monter sdb1 et vérif
        
        mount /dev/sdb1 /mnt/backup

 ![10 montage et vérif](https://github.com/user-attachments/assets/1bd58575-7117-44d9-9325-c31b964f4494)


#### Récuppérer les UUID, vérif et édition 

     blkid | grep LABEL >> /etc/fstab   
    nano /etc/fstab
    
    ![11verif UUID ((les pointer))](https://github.com/user-attachments/assets/55d29889-2b59-48cc-a814-20ef715581a5)

####Edition des deux partition
* ##### commenter le 1er swap
* ##### renseigner les UUID récupérés précédement, le point de montage et defaults( voir capture ci dessous)
 ![12 voila](https://github.com/user-attachments/assets/d110bd8b-52e0-438b-959b-8f7cc75e601d)

#### Verifier le point de montage
J'ai un messaage d'erreur....






























