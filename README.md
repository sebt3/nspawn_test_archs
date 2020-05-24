# Tests d'architectures

Ceci est un playbook qui sert à tester des architectures d'infra stocké en containers nspawn

## Setup
Monter 3 VMs avec 2 disques (vda et vdb) et modifier l'inventaire (inv/test.yaml) en fonction

## run
```
ansible-playbook -i inv/test.yaml play-full.yaml
```

## Pour recommencer :
(editer le script pour changer les IP au besoin)
```
./restart.sh
```

