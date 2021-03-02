# Ansible playbook Fedora Workstation 28+
This ansible playbook is for running Fedora 28+ or higher with i3 on your workstation.
The playbook will replace i3status with polybar and setup polybar for you.

In the playbook are some settings and features that i find usefull for my own workflow.
Feel free to fork this repository and set things up the way you like.

This will run on localhost with a local connection, make sure you have sudo rights.

##### Prequisites
The following software is required for this ansible playbook to work.

- git
- ansible

##### Run the playbook
Use the following command to run this playbook:

`ansible-playbook -i inventory/host  -K workstation.yml -e 'user=yourusername ansible_python_interpreter=/usr/bin/python3'`

##### Extras
There is also an backup and restore playbook for your prescious data.
Set the location and fstype of your backup disk and start

`ansible-playbook -i inventory/host -K backup.yml -e user=$username -e disk=$disk -e fstype=$fstype`
