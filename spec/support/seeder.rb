module SeederHelper
  def seed
    FactoryGirl.create(:garment)
    FactoryGirl.create(:needle)
    FactoryGirl.create(:another_needle)
    FactoryGirl.create(:yarn_weight)
  end
end