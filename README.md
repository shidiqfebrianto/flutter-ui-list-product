# Kredit Plus Take Home Test

## Problem Statement

- Sebagai Flutter developer kamu ditugaskan membuat sebuah halaman yang memuat
  list product dari sebuah ecommerce sesuai UI design di Figma.
- Data product-product
  diperoleh dari API.
- Dalam design tersebut, terdapat 3 buah platform, yaitu:
  - mobile
  - website, dan tablet.
- Kamu boleh memilih minimal 2 platform dari 3 diantaranya untuk di
  develop.

## Detail Requirements

- Menampilkan list card product berisikan sebanyak 4 item card untuk mobile &
  tablet. Sedangkan untuk platform website harus menampilkan 16 item card.
- Untuk platform mobile & tablet harus bisa menambah item card jika di scroll
  (pagination scroll)
- Ukuran card harus dinamis mengikuti ukuran platform

## Architecture

Developer using [GetX Architecture](https://angad14723.medium.com/clean-architecture-using-getx-in-flutter-b77e398886fe) which was an implementation of MVC.

## Supported devices

- Mobile
- Tablet

## Supported features

- Show list card product for mobile
- Show list card product for tablet
- On Scroll can add more list card product (pagination scroll)
- Responsive card product in any devices

## Documentation

For help with Flutter, view [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Installation

Install Flutter v2.10.5

You can choose one for download Flutter [V2.10.5](https://github.com/flutter/flutter/tree/2.10.5)

- Clone Flutter Repository

```bash
  git clone https://github.com/flutter/flutter.git
```

- Stable channel V2.10.5 for windows
  [download](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.10.5-stable.zip)

- Stable channel V2.10.5 for macos
  [download](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_2.10.5-stable.zip)

## Run Locally

Clone the project

```bash
  git clone https://github.com/shidiqfebrianto/flutter-ui-list-product.git
```

Go to the project directory

```bash
  cd flutter-ui-list-product
```

Install dependencies

```bash
  flutter pub get
```

Start the debug

```bash
  flutter run --debug
```

## Deployment

Tag a release commit first!

```
$ git tag -a <tagname>
e.g.
$ git tag -a v1.0.1+1
```

To deploy this project run

```bash
  flutter run --release
```

or

```bash
  flutter build apk --release
```

### Rollback

Checkout to the tagged commit, then build from there.

```
$ git checkout <tagname>
e.g.
$ git checkout v1.0.0+1
$ <run the build script as mentioned below>
```

## Flutter for Apple M1 Users

Inside your _iOS Folder_ follow these commands in terminal:

```
$ sudo arch -x86_64 gem install ffi
$ arch -x86_64 pod install
```

If doesn't work try this:

```
$ arch -x86_64 pod install --repo-update
```

## Acknowledgements

- [Figma Desain](https://www.figma.com/file/Cbtn4r70KVbcLZemq5jLaJ/Flutter-UI-Test)
- [Api](https://fakestoreapi.com/products)

## Tech Stack

**UI/UX:** Figma

**Client:** Flutter, Dart

**Server:** Dumy Server

## Feedback

If you have any feedback, please reach out to us at shidiq.febrianto@binus.ac.id

## Authors

- [Shidiq Febrianto](https://www.github.com/shidiqfebrianto)

## FAQ

#### Flutter Version

`Flutter v2.10.5`
