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

    mkfs.ext4 -L DATA /dev/sdb1
    
![ext4](https://github.com/user-attachments/assets/e4b9fcdd-42ed-46ea-b083-a433286639fa)


    mkswap -L- SWAP /dev/sdb2
 
 ![7 swap](https://github.com/user-attachments/assets/d2e1957c-1e70-4c4f-814f-c5d78f168c7b)


#### Changer le partitionnement des disque entre sda5 et sdb2
    
    swapoff /dev/sda5
    swapon /dev/sdb2

![swap off swapon](https://github.com/user-attachments/assets/bfd3c2fd-ed2a-467b-92fc-d82e2b1b6f0a)



#### Créer un point de montage.

    mkdir /mnt/partitions

#### Monter sdb1 et vérif
        
        mount /dev/sdb1 /mnt/partitions

 ![montage](https://github.com/user-attachments/assets/cb3ea2dc-94f9-4a91-9a7d-e05a2638e5d1)


#### Récuppérer les UUID, vérif et édition 

             blkid | grep LABEL >> /etc/fstab   
            nano /etc/fstab



#### Edition des deux partition
* ##### commenter le 1er swap
* ##### renseigner les UUID récupérés précédement, le point de montage et defaults( voir capture ci dessous)
 
 ![finiiiiii](https://github.com/user-attachments/assets/4ff550e9-9d7e-4860-b8ff-cc8708a78502)

#### Verifier le point de montage

        mount-a
        lsblk


![fin](https://github.com/user-attachments/assets/eea76c61-35c3-4ac4-9f1a-d778b0930719)






























