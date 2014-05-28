#Author: Matt Olson
#Matt's silly excuse to play around in ruby.

require 'net/smtp'

excuse_array = ["the inclement weather.", "the fact that I didn't sleep well.", "the fact that my parents are no longer able to watch my children today.", "outright laziness.", "the fact that I'm not feeling well."]

excuse = excuse_array.sample

puts "Welcome to the excusifier!"

print "Please type your name: "
user_name = gets.chomp

print "Please enter email address: "
user_address = gets.chomp

print "Please type today's date (suggested format = Friday, March 1st): "
date = gets.chomp

print "Please enter the comma-deliminted email addresses of the folks that you wish to receive your excuse: "
email_recepients = gets.chomp

message = <<MESSAGE_END
From: #{user_name} <#{user_address}>
To: <#{email_recepients}>
Subject: I will be out of the office on #{date} 

Co-workers,

I will be out of the office due to #{excuse}

If anything urgent comes up, feel free to contact me through all the normal means.

MESSAGE_END

Net::SMTP.start('iowacrelay.ic.ncs.com') do |smtp|
  smtp.send_message message, '#{user_address}', '#{email_recepients}'
end                                                      