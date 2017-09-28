
puts "creating admin users"
[{"email"=>"andres@jfa.com","role"=>"admin", password: 'password'},
 {"email"=>"jc@jfa.com","role"=>"admin", password: 'password'},
 {"email"=>"fel@jfa.com","role"=>"admin", password: 'password'},
 {"email"=>"quiko@qh.cl","role"=>"manager", password: 'password'},
 {"email"=>"horacio@qh.cl","role"=>"manager", password: 'password'},
 {"email"=>"panchito@qh.cl","role"=>"worker", password: 'password'}].each do |data|
  AdminUser.create!(data) unless AdminUser.exists?(email: data['email'])
end

puts "creating investments"
[{"code"=>"AAPL","description"=>"Acciones Copec","investment_type"=>"stock", id: 1, admin_user: AdminUser.take},
 {"code"=>"GOOG","description"=>"Acciones Falabella","investment_type"=>"stock", id: 2, admin_user: AdminUser.take},
 {"code"=>"MSFT","description"=>"Acciones LATAM","investment_type"=>"stock", id: 3, admin_user: AdminUser.take}].each do |data|
  Investment.create!(data) unless Investment.exists?(code: data['code'])
end


puts "creating movements"
[{"amount"=>"130","value"=>"27000","operation_type"=>"buy","date"=>"2017-03-02","investment"=>Investment.all.sample},
 {"amount"=>"520","value"=>"15000","operation_type"=>"sell","date"=>"2017-01-02","investment"=>Investment.all.sample},
 {"amount"=>"20","value"=>"9000","operation_type"=>"buy","date"=>"2017-02-02","investment"=>Investment.all.sample},
 {"amount"=>"130","value"=>"27000","operation_type"=>"buy","date"=>"2017-04-02","investment"=>Investment.all.sample},
 {"amount"=>"520","value"=>"15000","operation_type"=>"sell","date"=>"2017-01-02","investment"=>Investment.all.sample},
 {"amount"=>"20","value"=>"9000","operation_type"=>"buy","date"=>"2017-02-10","investment"=>Investment.all.sample}].each do |data|
  Movement.create!(data)
end


