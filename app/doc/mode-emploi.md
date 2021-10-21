# Mode d'emploi

## Gestion de version

Github

## Hébergement

Utilisation du Paas Scalingo

## Images

OVH Cloud storage

## Mails

Mailjet

## Customisation

Données : `db/seeds.rb`

## Nouveau pôle

### Développement

- setup config/database.yml
- personnification db/seeds
- rake db:create rake db:migrate rake rb:seeds
- delete if exist config/credentials et master.key
- create master key : `EDITOR=vim rails credentials:edit`
- bundle install
- yarn install
- yarn upgrade (si pb webpacker empty manifest)



### Configuration production

- créer des accès aux différents services (cf doc partagé)

```
g clone git@github.com:Pole-ESS-XXX/poles-ess-website.git territoireXX-website

```

- Ajouter master key à scalingo
- Configurer scalingo remote :

```
scalingo --app pole-ess-XXX git-show
git remote add scalingo git@ssh.osc-fr1.scalingo.com:pole-ess-XXX.git #adresse fournie par commande précédente
```

Après 1er déploiement :
- scaler le container
- scalingo run rails db:migrate -a pole-ess-XXX
- scalingo run rails db:seed -a pole-ess-XXX

#### Configuration images

- se connecter à son compte ovh puis
- créer un projet web : https://www.ovh.com/manager/public-cloud/#/pci/projects
- configuration : swift - GRA - private
- créer utilisateur openstack : https://docs.ovh.com/fr/public-cloud/creer-un-acces-a-horizon/#creer-un-utilisateur-openstack

doc : https://docs.ovh.com/fr/public-cloud/creer-un-projet-public-cloud/