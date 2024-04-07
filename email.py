import subprocess

# 设置邮件参数
recipient = "shidongbo@sjtu.edu.cn"
subject = "Test Email"
body = "This is a test email sent from Python script using msmtp."

# 构造发送邮件的命令
command = f"""\
msmtp -a default {recipient} <<EOF
From: Qing <zhuqingmail@whu.edu.cn>
To: {recipient}
Subject: {subject}

{body}
EOF
"""