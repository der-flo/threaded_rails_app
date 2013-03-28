Threaded::Application.routes.draw do

  get 'cpu', to: 'test#cpu_bound'
  get 'io', to: 'test#io_bound'
end
