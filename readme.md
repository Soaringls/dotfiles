### client setting
1. sudo  bash go.sh
2. 使用config_client.json替换/etc/v2ray/config.json
3. system config->Network->NetworkProxy
   ```sh
   设置为manual
   socks Host 设置为127.0.0.1  1080  #与config.json中inbounds的listen、port一致
   ```
4. 重启即可