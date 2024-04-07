import subprocess

recipient = "shidongbo@sjtu.edu.cn"
subject = "Test Email"
body = "This is assignment_10_email ."

command = f"""\
msmtp -a default {recipient} <<EOF
From: Qing <zhuqingmail@whu.edu.cn>
To: {recipient}
Subject: {subject}

{body}
EOF
"""