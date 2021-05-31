Create new users and passwords for every user


If there is one user

# create new user called foo
useradd foo
# foo will store at /home/
ls /home/ 
# create password for foo, but it is interactive
passwd foo # then type in password

# for this script. using non interactive command
echo 123 |passwd --stdin username  # -- must have two dash

# $RANDOM to create a number randomly
# md5sum command to change output
$RANDOM | md5sum

# get substringh from output
cut -c 1-8  # -c get chars 1-8 means from index 1 to index 8 



