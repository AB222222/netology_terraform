# netology_terraform

##Задача 1.

IAM политика - тут у меня не получилось.

Остальное всё вроде заработало, даже смог подключиться к своему созданному через веб-интерфейс инстансу.

```
me@me-HP-260-G3-DM:~$ ssh -i ~/Downloads/mykeypar1.pem ubuntu@18.219.105.40
Welcome to Ubuntu 20.04.2 LTS (GNU/Linux 5.4.0-1037-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Sat Feb 27 11:20:36 UTC 2021

  System load:  0.0               Processes:             102
  Usage of /:   21.5% of 7.69GB   Users logged in:       0
  Memory usage: 26%               IPv4 address for eth0: 172.31.35.112
  Swap usage:   0%


0 updates can be installed immediately.
0 of these updates are security updates.


*** System restart required ***
Last login: Sat Feb 27 11:06:41 2021 from 95.165.144.160
ubuntu@ip-172-31-35-112:~$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9001 qdisc fq_codel state UP group default qlen 1000
    link/ether 0a:8d:7c:1d:ac:58 brd ff:ff:ff:ff:ff:ff
    inet 172.31.35.112/20 brd 172.31.47.255 scope global dynamic eth0
       valid_lft 2151sec preferred_lft 2151sec
    inet6 fe80::88d:7cff:fe1d:ac58/64 scope link 
       valid_lft forever preferred_lft forever
ubuntu@ip-172-31-35-112:~$ exit
logout
Connection to 18.219.105.40 closed.
me@me-HP-260-G3-DM:~$ 


me@me-HP-260-G3-DM:~$ aws configure
AWS Access Key ID [****************GP4F]: 
AWS Secret Access Key [****************TdSC]: 
Default region name [us-east-2]: 
Default output format [None]: 
me@me-HP-260-G3-DM:~$ 
```


##Задача 2.

Вроде всё получилось:

```
me@me-HP-260-G3-DM:~/netology/DZ_AWS_20210227$ terraform apply
aws_instance.mytest: Refreshing state... [id=i-0e0d6b08b3946c6a0]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:

Terraform will perform the following actions:

Plan: 0 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + aws_instance_network_interface_id = "eni-0758c2cd7bac70ca1"
  + aws_instance_private_ip           = "172.31.5.151"
  + aws_instance_public_ip            = "18.191.192.98"

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes


Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

account_id = "441673418860"
aws_instance_network_interface_id = "eni-0758c2cd7bac70ca1"
aws_instance_private_ip = "172.31.5.151"
aws_instance_public_ip = "18.191.192.98"
aws_region = {
  "description" = "US East (Ohio)"
  "endpoint" = "ec2.us-east-2.amazonaws.com"
  "id" = "us-east-2"
  "name" = "us-east-2"
}
caller_user = "AIDAWNVOJRBWEUYTYANA6"
me@me-HP-260-G3-DM:~/netology/DZ_AWS_20210227$ 
```

