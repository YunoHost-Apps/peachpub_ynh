<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# PeachPub for YunoHost

[![Integration level](https://dash.yunohost.org/integration/peachpub.svg)](https://dash.yunohost.org/appci/app/peachpub) ![Working status](https://ci-apps.yunohost.org/ci/badges/peachpub.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/peachpub.maintain.svg)  
[![Install PeachPub with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peachpub)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install PeachPub quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

A Scuttlebutt pub is a service for connecting scuttlebutt users.

PeachPub includes a web interface for managing who is a member of the pub, creating invites, and monitoring the system status. 

For more documentation about PeachPub, visit https://docs.peachcloud.org. 

### Features

- Scuttlebutt Pub using go-sbot (https://github.com/cryptoscope/ssb)
- Invite creation 
- Update pub profile and description

**Shipped version:** 0.6.19~ynh12


**Demo:** https://demo.peachcloud.org

## Screenshots

![Screenshot of PeachPub](./doc/screenshots/Peachcloud-Screenshot.png)

## Disclaimers / important information

 - requires a full dedicated domain and does not support sub-paths
 - currently ony supports the following architectures: amd64, arm64, arm7
## Documentation and resources

* Official app website: <https://www.peachcloud.org>
* Official admin documentation: <https://docs.peachcloud.org>
* Upstream app code repository: <https://git.coopcloud.tech/PeachCloud>
* YunoHost documentation for this app: <https://yunohost.org/app_peachpub>
* Report a bug: <https://github.com/YunoHost-Apps/peachpub_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/peachpub_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/peachpub_ynh/tree/testing --debug
or
sudo yunohost app upgrade peachpub -u https://github.com/YunoHost-Apps/peachpub_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
