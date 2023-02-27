require './lib/visitor'
require './lib/ride'
require './lib/carnival'

RSpec.describe do

  it 'exists' do
    carnival1 = Carnival.new({hours: "2-10pm", rides_list: "Carousel, Ferris Wheel, Roller Coaster"})
    
    expect(carnival1).to be_a(Carnival)
    expect(carnival1.hours).to eq("2-10pm")
    expect(carnival1.rides_list).to eq("Carousel, Ferris Wheel, Roller Coaster")
  end
  
  it 'checks most popular ride' do
    carnival1 = Carnival.new({hours: "2-10pm", rides_list: "Carousel, Ferris Wheel, Roller Coaster"})
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
    ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')
    visitor3 = Visitor.new('Penny', 64, '$15')

    expect(carnival1.most_popular).to eq()
  end
end