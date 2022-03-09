RSpec.describe 'GET /api/cars', type: :request do
  let!(:car) { create_list(:car, 6) }

  before do
    get '/api/cars'
  end

  subject { response }

  it { is_expected.to have_http_status 200 }

  it 'is expected to return a list of cars' do
    expect(response_json['cars'].count).to eq 6
  end
end
