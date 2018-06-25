require 'rails_helper'
RSpec.describe SongsController, type: :request do
  
  it 'check size songs' do
    get '/song/html'
    expect(assigns[:songs].length) == 3
  end

  it 'check be_an_instance_of' do
    get '/song/json'
    :songs.instance_of?(Song)
  end
end


RSpec.describe SongsController, :type => :request do
    describe "GET html check song name, band name, album" do
      before :each do
        get '/song/html'
      end

      

      it "renders name" do
        expect(response.body).to match /<th>Name/
      end

      it "renders band" do
        expect(response.body).to match /<th>Band/
      end

      it "renders song" do
        expect(response.body).to match /<th>Album/
      end
    end
end
