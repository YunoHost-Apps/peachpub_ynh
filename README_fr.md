# PeachPub pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/peachpub.svg)](https://dash.yunohost.org/appci/app/peachpub) ![](https://ci-apps.yunohost.org/ci/badges/peachpub.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/peachpub.maintain.svg)  
[![Installer PeachPub avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peachpub)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer PeachPub rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

A Scuttlebutt pub is a service for connecting scuttlebutt users.

PeachPub includes a web interface for managing who is a member of the pub, creating invites, and monitoring the system status. 

For more documentation about PeachPub, visit https://docs.peachcloud.org. 

### Features

- Scuttlebutt Pub using go-sbot (https://github.com/cryptoscope/ssb)
- Invite creation 
- Update pub profile and description

**Version incluse :** 0.6.13~ynh3

**Démo :** https://demo.peachcloud.org

## Captures d'écran

![](./doc/screenshots/Peachcloud-Screenshot.png)

## Avertissements / informations importantes

 - requires a full dedicated domain and does not support sub-paths
 - currently ony supports the following architectures: amd64, arm64, arm7
## Documentations et ressources

* Site officiel de l'app : https://docs.peachcloud.org
* Documentation officielle utilisateur : https://docs.peachcloud.org
* Documentation officielle de l'admin : https://docs.peachcloud.org
* Dépôt de code officiel de l'app : https://git.coopcloud.tech/PeachCloud
* Documentation YunoHost pour cette app : https://yunohost.org/app_peachpub
* Signaler un bug : https://github.com/YunoHost-Apps/peachpub_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/peachpub_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/peachpub_ynh/tree/testing --debug
ou
sudo yunohost app upgrade peachpub -u https://github.com/YunoHost-Apps/peachpub_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps