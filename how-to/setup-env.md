# ENVIRONMENTS

Please be aware that modifying `.env` file is at your own risk, as it stores your credentials. Ensure the
safety of this file.

## Global Config

- **CFG_WORKING_DIRECTORY**

  Set working directory for **cash-mint**. Me personally will use return from:
  ```shell
  # if your terminal is not on cash-mint directory, first you need to go to your 
  # cash-mint directory (cd <your-path>/cash-mint), than:
  pwd
  ```

- **CFG_TIMEZONE** (default: Asia/Jakarta *because I'm from Indonesia:D)

  Set timezone for **cash-mint** services container.
  _(Ref: [Link](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones))_


- **CFG_TIMEZONE_FILE** (default: /etc/localtime)

  Set timezone file for **cash-mint** services container. The usage is for syncing the **cash-mint** localtime
  containers with the host machine:
  ```
  # ':ro' is stands for read-only
  volumes:
  - /etc/localtime:${CFG_TIMEZONE_FILE}:ro
  ```

## BITPING Config

Register an account from [BITPING](https://bitping.com). Then you can manually fill the following fields below:

- **BITPING_EMAIL**

  Set BITPING container service email.


- **BITPING_PASSWORD**

  Set BITPING container service password.

## EARNFM Config

Register an account from [EARNFM](https://earn.fm/ref/BEARFZQR) _(referral link)_ > More > Then you can see your API key
to manually fill the following fields below:

- **EARNFM_TOKEN**

  Set EARNFM container service token.

## HONEYGAIN Config

Register an account from [HONEYGAIN](https://r.honeygain.me/HARYO1972B) _(referral link)_. Then you can manually fill
the following fields below:

- **HONEYGAIN_EMAIL**

  Set HONEYGAIN container service email.


- **HONEYGAIN_PASSWORD**

  Set HONEYGAIN container service password.


- **HONEYGAIN_DEVICE**

  Set HONEYGAIN container service device name. Me personally will use return from:
  ```shell
  cat /etc/hostname
  ```

## MYSTERIUM Config

Register an account from [MYSTERIUM](https://mystnodes.com). Then you can manually fill
the following fields below:

- **MYSTERIUM_DASHBOARD_PORT** (default: 4449)

  Set MYSTERIUM container service dashboard port. So, after running the **cash-mint**, you can access the MYSTERIUM
  dashboard through `http://localhost:<MYSTERIUM_DASHBOARD_PORT>`

## PACKETSTREAM Config

Register an account from [PACKETSTREAM](https://packetstream.io/?psr=1RV8) _(referral link)_ > Dashboard > Look at your
referral link. Here is the example of my referral link: https://packetstream.io/?psr=1RV8, I can use `1RV8` as my CID.

After gathering your CID, then you can manually fill the following fields below:

- **PACKETSTREAM_CID**

  Set PACKETSTREAM container service client ID.

## PAWNS Config

Register an account from [PAWNS](https://pawns.app/?r=3284830) _(referral link)_. Then you can manually fill the
following fields below:

- **PAWNS_EMAIL**

  Set PAWNS container service email.


- **PAWNS_PASSWORD**

  Set PAWNS container service password.


- **PAWNS_DEVICE_NAME**

  Set PAWNS container service device name. Me personally will use return from:
  ```shell
  cat /etc/hostname
  ```


- **PAWNS_DEVICE_ID**

  Set PAWNS container service device ID. Me personally will use return from:
  ```shell
  cat /etc/machine-id
  ```

## PROXYLITE Config

Register an account from [PROXYLITE](https://proxylite.ru/?r=8Q4XCYWF) _(referral link)_ > Home > Look at the small box
called `Account ID` on the bottom left. Here is the example of account ID looks like: 123456.

After gathering your account ID, then you can manually fill the following fields below:

- **PROXYLITE_USER_ID**

  Set PROXYLITE container service user ID.

## PROXYRACK Config

Register an account from [PROXYRACK](https://peer.proxyrack.com/ref/phzcnf5r7nq1idtx4rhgglt6ayrtvqgkb8nwhkic) _(referral
link)_. Then you can manually fill the
following fields below:

- **PROXYRACK_UUID**

  Set PROXYRACK container service UUID. Me personally will use return from:
  ```shell
  cat /etc/machine-id | sha256sum | awk '{print $1}' | cut -c 1-64 | tr 'a-f' 'A-F'
  ```

## REPOCKET Config

Register an account from [REPOCKET](https://link.repocket.co/WqgJ) _(referral link)_ > Sell Internet > Look at the
box called `Use this API key with Docker` on the top right. Here is the example of account ID looks like:
aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee.

After gathering your API key, then you can manually fill the following fields below:

- **REPOCKET_RP_EMAIL**

  Set REPOCKET container service email.


- **REPOCKET_RP_API_KEY**

  Set REPOCKET container service API key.
