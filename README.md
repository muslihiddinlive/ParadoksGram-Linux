# ParadoksGram: Linux

Bu repoda **ParadoksGram** ning Linux (x64) versiyasi avtomatik yig'iladi va relizlarga joylanadi.
Kod [ParadoksGram-Windows](https://github.com/muslihiddinlive/ParadoksGram-Windows) repodan (`dev` branch) olinadi, bu yerda faqat build jarayoni turadi.

## O'rnatish

1. [Releases](../../releases) dan `ParadoksGram-Linux-x64.tar.xz` ni yuklab oling.
2. Oching va o'rnating:
   ```
   tar -xf ParadoksGram-Linux-x64.tar.xz
   cd ParadoksGram
   ./install.sh
   ```
   Yoki o'rnatmasdan to'g'ridan-to'g'ri `./Telegram` ni ishga tushiring.

## Build qilish

Actions → **ParadoksGram Linux** → Run workflow.

- Birinchi ishga tushirish uzoq davom etadi (kutubxonalar Docker image ichida yig'iladi, bir necha soat). Keyingilari kesh tufayli ancha tez.
- Agar 6 soatlik limitga yetib to'xtasa, qayta ishga tushiring: kesh saqlanadi va jarayon davom etadi.

### Secretlar (Settings → Secrets and variables → Actions)

| Nomi | Nima uchun |
|---|---|
| `TDESKTOP_API_ID` | Telegram API id (my.telegram.org) |
| `TDESKTOP_API_HASH` | Telegram API hash |
| `ADS_SERVER_URL` | Ixtiyoriy: o'z reklama serveringiz manzili |

Secretlar bo'lmasa test kalitlari ishlatiladi. Ular juda cheklangan, tarqatish uchun yaramaydi.
