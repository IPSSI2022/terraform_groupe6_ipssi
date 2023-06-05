## Telecharger le fichier pour bien voir la structure, bien affichee svp...
[readme.md](https://github.com/IPSSI2022/terraform_groupe6_ipssi/files/11657095/readme.md)
# Projet Terraform Groupe 6 - Infrastructure AWS

Ce projet Terraform à pour but de déployer une infrastructure sur AWS. On exploite plusieurs modules pour créer une instance EC2, un volume EBS, une IP publique et un groupe de sécurité (Groupe6).


Ce projet utilise Terraform, afin de reproduire ce TP, assurez-vous d'avoir l'outil d'installé sur votre machine.


## Structure du projet

├─────mini-projet
│ ├─ app/
│ │ ├─ main.tf
│ │ ├─ variables.tf
│ │ ├─ terraform.tfvars
│ ├─ modules
│ │ ├── ebs_volume
│ │ │ ├── main.tf
│ │ │ └── variables.tf
│ │ ├── ec2_instance
│ │ │ ├── main.tf
│ │ │ └── variables.tf
│ │ ├── public_ip
│ │ │ ├── main.tf
│ │ │ └── variables.tf
│ │ └── security_group
│ │ ├── main.tf
│ │ └── variables.tf
│ └── README.md
└──


### Prérequis

- Terraform installé sur votre machine.
- Clé d'accès et clé secrète AWS.


## Configuration

1. Clonez ce dépôt sur votre machine (via Github).
2. Modifiez le fichier `terraform.tfvars` en remplaçant les valeurs par celles correspondant à votre compte AWS, et si vous voulez modifier des parametres de l'infrstructure comme des noms et des tailles...



### Variables

Les variables suivantes doivent être configurées avant d'exécuter le déploiement :

- `access_key` : clé d'accès AWS
- `secret_key` : clé secrète AWS
- `region` : région AWS dans laquelle déployer l'infrastructure
- `instance_type` : type d'instance EC2 (par défaut : t2.micro)
- `volume_size` : taille du volume EBS (par défaut : 10)
- `security_group_name` : nom du groupe de sécurité
- `key_name` : nom de la paire de clés pour l'instance EC2

Ces variables peuvent être configurées dans le fichier `terraform.tfvars`.

## Déploiement

Pour déployer l'infrastructure, suivez les étapes suivantes :

1. Configurez vos variables dans le fichier `terraform.tfvars` en utilisant les exemples fournis.
2. Initialisez le répertoire Terraform en exécutant la commande : `terraform init`.
3. Vérifiez que la configuration Terraform est correcte en exécutant la commande : `terraform plan`.
4. Déployez l'infrastructure en exécutant la commande : `terraform apply`.
5. Confirmez le déploiement en saisissant `yes` lorsque vous y êtes invité.
6. Une fois le déploiement terminé, Terraform affichera l'adresse IP publique de l'instance EC2 déployée. Vous pouvez également la trouver dans le fichier `ip_ec2-projet.txt`.
5. Pour supprimer l'infrastructure, exécutez la commande `terraform destroy`. Confirmez en saisissant `yes` lorsque cela vous est demandé.


## Composition du projet

Le projet est composé de la manière suivante :

- `main.tf` : Contient la configuration principale du projet.
- `variables.tf` : Contient les déclarations des variables utilisées dans le projet.
- `terraform.tfvars` : Fichier de variables contenant les valeurs spécifiques à votre environnement.
- `modules` : Répertoire contenant les différents modules utilisés dans le projet.

## Modules

Le projet utilise les modules suivants :

- `ebs_volume` : Crée un volume EBS.
- `public_ip` : Crée une adresse IP publique et l'attache au groupe de sécurité.
- `ec2_instance` : Crée une instance EC2 en utilisant la dernière version d'Ubuntu Bionic, avec un volume EBS et une adresse IP publique.
- `security_group` : Crée un groupe de sécurité qui ouvre les ports 80 et 443.



## Résultat

Après le déploiement, Terraform créera les ressources suivantes :

- Une instance EC2 avec les caractéristiques spécifiées
- Un volume EBS attaché à l'instance EC2
- Une IP publique associée à l'instance EC2
- Un groupe de sécurité ouvrant les ports 80 et 443

L'adresse IP publique de l'instance EC2 sera enregistrée dans un fichier `ip_ec2-projet.txt`.



## Auteurs

Groupe 6 : Dilhan, Nathan, Daniel, Willy.
