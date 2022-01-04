sh prepare.sh
atune-adm tuning --project cifar_train --detail cifar_train_client.yaml
atune-adm tuning --restore --project cifar_train
