require 'spec_helper'

describe PagesController do
  describe 'routing' do

    it 'root' do
      get('/').should route_to('pages#index')
    end

    it 'routes to /about' do
      get('/about').should route_to('pages#about')
    end

  end
end
