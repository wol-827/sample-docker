# ベースになるイメージをタグ付きで
FROM node:12.16.0-buster

# 作成したユーザ名(maintener)を記述 他にも色々ラベル付けできそう
# ドキュメントにはMAINTENER っていう命令もあったんですがdeprecatedでした
LABEL maintainer=wol

# 作業ディレクトリを指定
WORKDIR /usr/src/app

# RUN: docker build時に実行するコマンド
RUN echo "=== build image ==="
RUN git clone https://github.com/wol-827/first-step.git .
RUN npm i

# CMD: docker run時に実行されるコマンド
CMD [ "npm", "start" ]
