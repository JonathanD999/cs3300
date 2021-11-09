require "rails_helper"

#constant test to try out rspec functionality, doesn't actually test anything related to project
RSpec.describe "The math below is wrong..." do
  it "should equal 42 but we said 43" do
    expect(6 * 7).to eq(42)
  end
end