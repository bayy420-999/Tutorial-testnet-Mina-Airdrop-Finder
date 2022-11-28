# Tutorial testnet Mina Airdrop Finder

<p style="font-size:14px" align="right">
<a href="https://t.me/airdropfind" target="_blank">Join Telegram Airdrop Finder<img src="https://user-images.githubusercontent.com/50621007/183283867-56b4d69f-bc6e-4939-b00a-72aa019d1aea.png" width="30"/></a>
</p>

<p align="center">
  <img height="auto" width="auto" src="https://raw.githubusercontent.com/bayy420-999/airdropfind/main/NavIcon.png">
</p>

## Referensi

[Dokumen resmi](https://docs.minaprotocol.com/zkapps/tutorials/zkapp-ui-with-react)

[Auro Wallet](https://www.aurowallet.com/)

[Mina Faucet](https://faucet.minaprotocol.com/)

[Server Discord](https://discord.gg/minaprotocol)

[Form registrasi](https://fisz9c4vvzj.typeform.com/zkSparkTutorial)

## Spesifikasi hardware & software

### Persyaratan software/OS

| Komponen | Spesifikasi minimal |
|----------|---------------------|
|Sistem Operasi|Ubuntu 16.04 atau lebih tinggi|


## Setup

### Setup Otomatis
* Download script
  ```console
  wget -q https://raw.githubusercontent.com/bayy420-999/Tutorial-testnet-Mina-Airdrop-Finder/main/run.sh
  ```
* Ubah file menjadi executable
  ```console
  chmod +x run.sh
  ```
* Jalankan script
  ```console
  ./run.sh
  ```
Setelah semuanya selesai, langsung lanjut ke bagian [Deploy project](https://github.com/bayy420-999/Tutorial-testnet-Mina-Airdrop-Finder#deploy-project)

### Setup Manual

* Install dependesi
  ```console
  sudo apt update
  sudo apt upgrade
  sudo apt install git curl wget
  ```

  ```console
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  ```

  Cek apakah NodeJs dan NPM sudah terinstal
  ```console
  node -v
  ```
  ```console
  npm -v 
  ```
  Cek apakah git sudah terinstal
  ```console
  git --version
  ```

* Install zkApp
  ```console
  git clone https://github.com/o1-labs/zkapp-cli
  npm instal -g zkapp-cli@0.5.3
  ```
  Cek apakah zkApp sudah terinstal 
  ```console
  zk --version
  ```

* Buat project
  ```console
  cd $HOME
  zk project 04-zkapp-browser-ui --ui next
  ```
  Pilih yes 3x lalu enter

* Build contracts
  ```console
  cd 04-zkapp-browser-ui/contracts/
  npm run build
  ```

* Buat `zkappWorker.ts`, `zkappWorkerClient.ts`, dan edit `_app.page.tsx`
  ```console
  cd ..
  cd ui/pages
  rm _app.page.tsx
  wget -q https://raw.githubusercontent.com/es92/zkApp-examples/main/04-zkapp-browser-ui/ui/pages/_app.page.tsx
  wget -q https://raw.githubusercontent.com/es92/zkApp-examples/main/04-zkapp-browser-ui/ui/pages/zkappWorker.ts
  wget -q https://raw.githubusercontent.com/es92/zkApp-examples/main/04-zkapp-browser-ui/ui/pages/zkappWorkerClient.ts
  ```

## Deploy project

Buat repositori di Github
* Buka website Github
* Pilih Profile
* Pilih `Repositories` 
* Pilih `New`
* Isi Repository name dengan `04-zkapp-browser-ui`
* Salin link repositori

Mendapatkan Access token
* Buka [Github developer settings](https://github.com/settings/tokens)
* Pilih `Generate new token`
* Pilih `Generete new token (classic)`
* Centang bagian `Repo`
* Salin token

Upload project ke Github
* Kembali ke VPS
* Masuk ke directory `04-zkapp-browser-ui`
  ```console
  cd $HOME/04-zkapp-browser-ui
  ```
* Jalankan perintah dibawah
  ```console
  git remote add origin <LINK_REPOSITORI>
  ```
  Ganti `<LINK_REPOSITORI>` dengan link repositori yang tadi anda salin
  ```console
  git push -u origin main
  ```
  Masukan username Github dan access token yang tadi anda salin

Deploy project
* Masuk ke directory `04-zkapp-browser-ui/ui`
  ```console
  cd ui
  ```
* Jalankan perintah berikut
  ```console
  npm run deploy
  ```
  Nanti anda akan dimintai username Github dan access token
  > Jika proses gagal maka ulangi `npm run deploy`

Jika semuanya berhasil maka anda bisa membuka aplikasi anda di `https://<USERNAME_GITHUB>.github.io/04-zkapp-browser-ui/index.html`

## Isi form registrasi

* Buka https://fisz9c4vvzj.typeform.com/zkSparkTutorial 
* Masukan username Discord 
* Masukan email
* Masukan link repositori Github anda 
* Masukan link aplikasi anda, contoh `https://<USERNAME_GITHUB>.github.io/04-zkapp-browser-ui/index.html`
* Beri komentar
* Submit form

## Perintah berguna

## Troubleshoot 
