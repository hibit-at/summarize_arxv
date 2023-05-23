# ベースとなる Docker イメージを指定します。 
FROM python:3.9

# ワーキングディレクトリを設定します。
WORKDIR /usr/src/app

# requirements.txt を Docker コンテナ内にコピーします。
COPY requirements.txt ./

# requirements.txt にリストされたパッケージをインストールします。
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/bin/bash" ]

# ビルド及びコンテナ内シェル実行のコマンド例
# docker build -t summerize_arxv .
# docker run -it -v "$(pwd):/usr/src/app" summerize_arxv