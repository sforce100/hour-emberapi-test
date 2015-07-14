class Api::V1::ProductsController < ApplicationController

  def index 
    render json: {products: [{id: 1, name: 'product1', description: 'description1'}, {id: 2, name: 'product2', description: 'description2'}]}
  end

  def update
    render json: {product: {id: 3, name: 'product1', description: 'description1'}}
  end

  def create
    render json: {product: {id: 3, name: 'product1', description: 'description1'}}
  end
end
