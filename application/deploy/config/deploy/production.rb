set :branch, "master"

server 'itaptest-kaz29.japanwest.cloudapp.azure.com',
    roles: %w{app},
    user: 'azureuser',
    group: 'azureuser',
   	ssh_options: {
   	}
