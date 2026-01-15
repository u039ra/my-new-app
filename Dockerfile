# 開発用の軽量なPythonイメージを使用
FROM python:3.11-slim

# コンテナ内の作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージ（OSレベル）をインストール
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# コンテナ起動時に実行されるコマンド（今は何もせず待機）
CMD ["tail", "-f", "/dev/null"]
