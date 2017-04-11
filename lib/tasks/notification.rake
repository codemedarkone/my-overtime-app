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

    desc "Sends Maile notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    #1. Iterate over the list of pending overtime requests
    #2. check to see if there are any requests
    #3 Iterate over the list of admin users/manager
    #4. send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
