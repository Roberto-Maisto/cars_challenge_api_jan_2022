RSpec.describe 'POST /api/cars', type: :request do
  # let!(:car) { create(:car, brand: 'Maserati') }
  # let!(:car2) { create(:car, brand: 'Ferrari') }

  before do
    post '/api/cars', params: {
      car: { brand: 'Maserati', model: 'Levante Hybrid', colour: 'grey', year: 2021, price: 84.000 }
    }
  end
  
  subject { response }
  
  it {is_expected.to have_http_status 201}

  it 'is exptected to return success message' do
    expect(response_json['message']).to eq 'The car was successfully added to your shopping cart'
  end
end
