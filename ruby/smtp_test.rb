require 'net/smtp'

print "Please enter user name: "
user_name = gets.chomp

print "Please enter email address: "
user_address = gets.chomp


message = <<MESSAGE_END
From: #{user_name} <#{user_address}>
To: <ubiquitous@gmail.com>
Subject: Another test, with variables

Co-workers,

I will be out of the office due to something.

If anything urgent comes up, feel free to contact me through all the normal means.

Thanks,

MESSAGE_END

Net::SMTP.start('iowacrelay.ic.ncs.com') do |smtp|
  smtp.send_message message, '#{user_address}', 
                             'ubiquitous@gmail.com'
end