module API
  module V1
    class Products < Grape::API
      resource :products do
        get '/' do
          {products: [{id: 1, name: 'product1', description: 'description1'}, {id: 2, name: 'product2', description: 'description2'}]}
        end


        post '/' do
          {product: {id: 3, name: 'product1', description: 'description1'}}
        end

        get '/:id' do
          {product: {id: 1, name: 'product show', description: 'description show'}}
        end

        put '/:id' do
          {}
        end
      end
    end
  end
end
