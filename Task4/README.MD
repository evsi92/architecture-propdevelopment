# Accounts Description 
- anna - tech lead of development team for owners domain services
- ben - tech lead of development team for clients domain services
- chris - tech lead of development team for finance domain services
- den - the persons with secrets management responsibilities 
- elen - support team member
- fedor - sre or cluster manager

# Roles Description
| Роль                                                          | Права роли                                          | Группы пользователей                                                             |
|---------------------------------------------------------------|-----------------------------------------------------|----------------------------------------------------------------------------------|
| Название роли, которое отвечает требованиям RBAC в Kubernets. | Укажите права, которые необходимо выдать этой роли. | Выделите группы пользователей в организации, которые нужно связать с этой ролью. |
| owners-domain-manager                                         | Чтение и запись в owners namespace                  | Разработчики домена Owners Services                                              |
| clients-domain-manager                                        | Чтение и запись в clients namespace                 | Разработчики домена Clients Services                                             |
| finance-domain-manager                                        | Чтение и запись в finance namespace                 | Разработчики домена Finance Services                                             |
| secret-keys-managers                                          | Права на менеджмент паролей                         | Cluster admin                                                                    |
| cluster-viewer                                                | Права на кластер: только read                       | Support Team                                                                     |
| cluster-manager                                               | Права на кластер: и read и write                    | Cluster admins, SRE                                                              |

# How To Run

## Clean (if required)
```bash
./clean.sh
```

## Setup
```bash
./setup.sh
```