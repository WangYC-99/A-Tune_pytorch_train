path=$(
  cd "$(dirname "$0")"
  pwd
)

echo "update the client and server yaml files"
sed -i "s#python3 .*/cifar_train.py#python3 $path/cifar_train.py#g" $path/cifar_train_client.yaml
sed -i "s#cat .*/cifar_train.py#cat $path/cifar_train.py#g" $path/cifar_train_server.yaml
sed -i "s#' .*/cifar_train.py#' $path/cifar_train.py#g" $path/cifar_train_server.yaml

echo "copy the server yaml file to /etc/atuned/tuning/"
cp $path/cifar_train_server.yaml /etc/atuned/tuning/


