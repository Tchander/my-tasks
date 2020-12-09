Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4200',
            'https://my-tasks-frontend.herokuapp.com'

    resource '*',
             headers: :any,
             credentials: true,
             methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
