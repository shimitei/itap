set :branch, "master"

server 'itaptest-decrjp.japanwest.cloudapp.azure.com',
    roles: %w{app},
    user: 'azureuser',
    group: 'azureuser',
   	ssh_options: {
   	}
