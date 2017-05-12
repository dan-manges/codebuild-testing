require_relative './hello_world'

RSpec.describe HelloWorld do
  it 'says hello' do
    hw = HelloWorld.new
    result = hw.say_hello
    expect(result).to eq "Hello, world!"
  end
end
