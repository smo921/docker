The duplicity rsync based backup utility.  It's in docker so it's cool.

Local Backups
-------------
docker run -ti --rm -h backup -v $HOME/tmp:/src -v $HOME/foo:/dst smo921/duplicity /usr/local/bin/duplicity /src file:///dst

Remote SSH Backups
------------------
docker run -ti --rm -h backup -v $HOME/tmp:/src -v $HOME/foo:/dst \
  -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK \
  smo921/duplicity /usr/local/bin/duplicity /src sftp://smo@vm1.smolabs.com/dst


