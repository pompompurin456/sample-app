# 環境構築

## 前提条件

- Dartがインストールされていること
- fvmがインストールされていること
- Xcodeがインストールされていること
- Xcodeで新規作成したネイティブiOSアプリがビルドできること
- Android Studioがインストールされていること
- Android Studioで新規作成したネイティブAndroidアプリがビルドできること
- Android StudioのPlugin2つ(Flutterとdart)がインストールされていること

## 手順

1. fvmを使用しFlutterSDKをインストール

```
$ fvm install 3.0.5
$ fvm use 3.0.5
```

2. Android Studio/Preference/Language & Frameworks/DartとFlutterのSDK Pathを設定する