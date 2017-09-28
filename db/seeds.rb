puts "creating investments"
[{"code"=>"COP523","description"=>"Acciones Copec","investment_type"=>"stock", id: 1},
 {"code"=>"FAL931","description"=>"Acciones Falabella","investment_type"=>"stock", id: 2},
 {"code"=>"LAT352","description"=>"Acciones LATAM","investment_type"=>"stock", id: 3}].each do |data|
  Investment.create(data) unless Investment.exists?(code: data['code'])
end


puts "creating movements"
[{"amount"=>"130","value"=>"27000","operation_type"=>"buy","date"=>"2017-03-02","investment_id"=>"1"},
 {"amount"=>"520","value"=>"15000","operation_type"=>"sell","date"=>"2017-01-02","investment_id"=>"2"},
 {"amount"=>"20","value"=>"9000","operation_type"=>"buy","date"=>"2017-02-02","investment_id"=>"3"},
 {"amount"=>"130","value"=>"27000","operation_type"=>"buy","date"=>"2017-04-02","investment_id"=>"3"},
 {"amount"=>"520","value"=>"15000","operation_type"=>"sell","date"=>"2017-01-02","investment_id"=>"2"},
 {"amount"=>"20","value"=>"9000","operation_type"=>"buy","date"=>"2017-02-10","investment_id"=>"2"}].each do |data|
  Movement.create(data)
end

puts "creating investments"
[{"email"=>"andres@jfa.com","role"=>"admin"},
 {"email"=>"jc@jfa.com","role"=>"admin"},
 {"email"=>"fel@jfa.com","role"=>"admin"},
 {"email"=>"quiko@qh.cl","role"=>"manager"},
 {"email"=>"horacio@qh.cl","role"=>"manager"},
 {"email"=>"panchito@qh.cl","role"=>"worker"}].each do |data|
  AdminUser.create(data) unless AdminUser.exists?(email: data['email'])
end

