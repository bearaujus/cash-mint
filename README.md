# CASH-MINT

A lightweight and safe all-in-one docker-composer for earning passive income from your unused internet
bandwidth. A single instance of **cash-mint** can earn up to **50$** a month or more relative to your location.

This is the example usage when I run **cash-mint** on my server:
![Screenshot 2024-01-14 at 01 35 54](https://github.com/bearaujus/cash-mint/assets/64161364/ffdfbd79-acb7-4685-ac97-672775082dc6)

## Compatibility

I'm creating **cash-mint** while learning [Jenkins](https://www.jenkins.io), [Systemd](https://systemd.io/),
and [Ubuntu OS](https://ubuntu.com/)
architecture. I never test it on another operating system. In short, here are the current supported operating systems:

```shell
Distributor ID:	Ubuntu
Description:	Ubuntu 23.10
Release:	23.10
Codename:	mantic
```

## Usage

To use **cash-mint**, you can run the following commands:

- Clone **cash-mint** repository
  ```shell
  git clone https://github.com/bearaujus/cash-mint.git cash-mint
  ```

- Move to **cash-mint** directory
  ```shell
  cd cash-mint
  ```

- Then, you need to create a copy of `.env.example` as `.env`
  ```shell
  cp .env.example .env
  ```

- Fill all `<edit-me>` at recently created `.env`.
  See: [How to set up env](https://github.com/bearaujus/cash-mint/blob/master/how-to/setup-env.md)
  for more detailed guides.
  ```shell
  # you can use your favorite text editor to edit .env
  nano .env
  ```

- _(Optional)_ If you haven't installed [Docker](https://www.docker.com/)
  or [Makefile](https://www.gnu.org/software/make/manual/make.html) yet:
  ```shell
  # install docker
  sudo apt update
  curl -fsSL https://raw.githubusercontent.com/docker/docker-install/master/install.sh -o install-docker.sh
  chmod +x install-docker.sh
  sudo ./install-docker.sh
  rm install-docker.sh
  ```

  ```shell
  # install makefile
  sudo apt update
  sudo apt install make
  ```

- Finally, you can run the **cash-mint**. To quit, just simply press `CTRL+C`.
  ```shell
  make run
  ```

- _(Optional)_ if you want to run **cash-mint** in the background:
  ```shell
  # start the cash-mint in the background
  make start
  ```

  ```shell
  # see background cash-mint logs
  make status
  ```

  ```shell
  # stop background cash-mint
  make stop
  ```

***Notes**: By running this project, it means you already agreed to all [list supported sites](#list-supported-sites)
agreements.

## List Supported Sites

I'm **not using** all _cash-able_ sites containers since I need to check whether the **container is safe to run or
not**. For example, like this one: [fazalfarhan01/EarnApp-Docker](https://github.com/fazalfarhan01/EarnApp-Docker) this
container maybe has scary thing running in it [issues/46](https://github.com/fazalfarhan01/EarnApp-Docker/issues/46).

I already selected carefully with the containers that I decided to use for **cash-mint**. Also, I already scan it with
antivirus called [ClamAV](https://www.clamav.net/) to ensure **cash-mint** is safe to run! ;)

Below are the list for sites that supported by **cash-mint**:

1. [BITPING](https://bitping.com)
2. [EARNFM](https://earn.fm/ref/BEARFZQR) _(referral link)_
3. [HONEYGAIN](https://r.honeygain.me/HARYO1972B) _(referral link)_
4. [MYSTERIUM](https://mystnodes.com)
5. [PACKETSTREAM](https://packetstream.io/?psr=1RV8) _(referral link)_
6. [PAWNS](https://pawns.app/?r=3284830) _(referral link)_
7. [PROXYLITE](https://proxylite.ru/?r=8Q4XCYWF) _(referral link)_
8. [PROXYRACK](https://peer.proxyrack.com/ref/phzcnf5r7nq1idtx4rhgglt6ayrtvqgkb8nwhkic) _(referral link)_
9. [REPOCKET](https://link.repocket.co/WqgJ) _(referral link)_

## Notes On Your First Run

- Service: [MYSTERIUM](https://mystnodes.com)

  To start earning with MYSTERIUM, you need to register your local MYSTERIUM node.

    - Go to http://localhost:_<MYSTERIUM_DASHBOARD_PORT>_. (See: Your recently created .env)
    - Finish the node onboard.
    - Go to Settings.
    - Go to Account.
    - And you will see small box at the top right called `Mystnodes.com Integrations`.
    - Click on the `Claim on mystnodes.com` button.

  Now your node should be appeared on [MYSTERIUM](https://mystnodes.com) dashboard.


- Service: [PROXYRACK](https://peer.proxyrack.com/ref/phzcnf5r7nq1idtx4rhgglt6ayrtvqgkb8nwhkic) _(referral link)_

  To start earning with PROXYRACK, you need to register your local PROXYRACK node.

    - Go to [PROXYRACK](https://peer.proxyrack.com/ref/phzcnf5r7nq1idtx4rhgglt6ayrtvqgkb8nwhkic) _(referral link)_.
    - Go to Dashboard.
    - Add your node at `Add new device` section.
    - You can see your PROXYRACK device ID through `.env`. (See: Your recently created .env)

## TODO

- Support cross-platform.
- Support adaptive working directory.
- Fix bugs when BITPING credentials invalid, it keeps restarting until the CPU is soooo hot. _(this is probably caused
  by refresh
  rate from interactive terminal BITPING is too high)_
- Test all services containers if credentials are invalid. _(because I never tried supplied invalid credentials to all
  services at once)_

## License

This project is licensed under the GNU License - see
the [LICENSE](https://github.com/bearaujus/cash-mint/blob/master/LICENSE) file for details.

---
Made with ❤️ from [bearaujus](https://www.linkedin.com/in/bearaujus/) @2024
