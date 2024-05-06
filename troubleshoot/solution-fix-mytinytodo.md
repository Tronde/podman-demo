Solution: fix-mytinytodo
========================

The lab contains the following issues:

  * `MYSQL_PASSWORD` is empty
  * `MYSQL_ROOT_PASSWORD` is empty
  * The two containers are not on the same network
  * Re-create network `fix-mytinytodo-network without option `--disable-dns`
  * Wrong port mapping `8090:8081`; correct: `8090:8080`
  * You may wanna open a port in your firewall to reach port 8090/tcp
  * When `config.php` is not writeable you need to run 
    * `podman volume inspect <VOLUME NAME>` to get the path of the volume
    * `podman unshare chown 1001 <VOLUME_PATH>` to set correct ownership in namespace
