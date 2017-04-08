namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # Schedule to run at Sunday at 5pm
    # Iterate over all employees
    # skip adminusers
    # Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # number: "8018677059"
    # no spaces or dashes
    # exactly 10 characters
    # all characters have to be a number
  end

end
