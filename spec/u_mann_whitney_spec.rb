require "spec_helper"

RSpec.describe UMannWhitney do
  it "has a version number" do
    expect(UMannWhitney::VERSION).not_to be nil
  end

  describe UMannWhitney do
    describe "with valid values" do
      before do
        @v1 = Daru::Vector.new([1, 2, 3, 4, 7, 8, 9, 10, 14, 15])
        @v2 = Daru::Vector.new([5, 6, 11, 12, 13, 16, 17, 18, 19])
        @u = UMannWhitney.new(@v1, @v2)
      end

      it 'has same result using class or Test#u_mannwhitney' do
        expect(UMannWhitney.u_mannwhitney(@v1, @v2).u).to eq @u.u
      end

      it 'has correct U values' do
        expect(@u.r1).to eq 73
        expect(@u.r2).to eq 117
        expect(@u.u).to eq 18
      end

      it 'has correct value for z' do
        expect(@u.z).to be_within(0.001).of(-2.205)
      end

      it 'has correct value for z and exact probability' do
        expect(@u.probability_z).to be_within(0.001).of(0.027)
        expect(@u.probability_exact).to be_within(0.001).of(0.028)
      end
    end

    describe "with invalid values" do
      before do
        @v1 = Daru::Vector.new([])
        @v2 = Daru::Vector.new([])
        @u = UMannWhitney.new(@v1, @v2)
      end

      it 'returns zero confidence' do
        expect(@u.u).to eq 0
      end
    end
  end
end
