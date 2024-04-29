Solution: fix-mytinytodo
========================

The lab contains the following issues:

  * `MYSQL_PASSWORD` is empty
  * `MYSQL_ROOT_PASSWORD` is empty
  * The two contianers are not on the same network
  * Re-create network `fix-mytinytodo-network without option `--disable-dns`
  * Wrong port mapping `8090:8081`; correct: `8090:8080`
  * You may wanna open a port in your firewall to reach port 8090/tcp
