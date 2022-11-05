FROM wordpress:latest
# wp-cliをインストール
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# 実行権限を付与
RUN chmod +x wp-cli.phar
# pathが通ってるディレクトリに移動
RUN mv wp-cli.phar /usr/local/bin/wp
# セットアップ
COPY wp-setup.sh /wp-setup.sh
RUN chmod +x /wp-setup.sh
# CMD ["/wp-setup.sh"]
