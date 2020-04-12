Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  get 'home/index'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
end
