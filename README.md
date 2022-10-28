# Foxy_dev

ROS2-Foxy 開発用Dockerコンテナ

## 起動

### Dockerイメージのビルド

```console
bash prebuild.sh
bash build.sh
```

### コンテナの起動(Linux)

```console
bash run4linux.sh
```

### コンテナの起動(Windows)

```console
bash run4windows.sh
```

## コンテナへの接続(VSCode)

(ローカルのVSCodeにDockerの拡張機能(ms-azuretools.vscode-docker)をインストール済みであることが前提)

コンテナ起動後、Docker拡張機能から起動中のコンテナを選択し、'Attach Visual Studio Code' を選択

~/ros2_ws , ~/ros2_ws/src/tirobot にはvscode 用の設定ファイルがおいてあるので、そこで作業するのが良い

## パッケージの追加

prebuildには時間がかかるので、Dockerfileに書き足してパッケージ等の追加を行う

Dockerfileに追記 → Build → Run の流れで追記をイメージに反映させる
