# Poles ESS website

## Infos

Configuration initialisée en m'appuyant sur :
- https://blog.echobind.com/optimal-ruby-on-rails-setup-for-2020-db8ea2b2c798

Staging : https://pole-ess-staging.osc-fr1.scalingo.io/

## Todo

- revoir seeds et archi du site
- config mailchimp
- config fog

## Commandes utiles

```
  g push scalingo master
  scalingo run rails c --app pole-ess-staging
  scalingo run rails db:migrate --app pole-ess-staging
  scalingo -a pole-ess-staging logs # -f -> temps reel / -F "web|worker" -> ces 2 process seulement
  scalingo -a pole-ess-staging logs -n 100000 > logs.txt
  scalingo run rake salesforce:send_all_automatic_invitations --app pole-ess-staging
  scalingo -a pole-ess-staging run --env RAILS_MASTER_KEY=value

  EDITOR=vim rails credentials:edit --environment staging
```

Pour déployer les forks :
  `./deploy-forks.sh`