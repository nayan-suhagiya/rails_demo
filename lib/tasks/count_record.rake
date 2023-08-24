namespace :count_record do
  desc "Count total number of employees!!"
  task count_employee: :environment do
    puts "Total employee = #{Employee.count}"
  end

  desc "Count total number of users!!"
  task count_user: :environment do
    puts "Total user = #{User.count}"
  end

end
