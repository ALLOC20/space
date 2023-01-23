docker run -d \
    --name filebrowser \
    --restart=always \
    --user $(id -u):$(id -g) \
    -p 8088:8080 \
    -v /workspaces/space:/data \
    -v /workspaces/space/filebrowser/config:/config \
    -e FB_BASEURL=/filebrowser \
    hurlenko/filebrowser:latest