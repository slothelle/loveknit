require 'spec_helper'

describe User do
  it { should be_instance_of(User) }
  it { should have_many(:patterns) }
  it { should allow_mass_assignment_of(:first_name) }
  it { should allow_mass_assignment_of(:last_name) }
  it { should allow_mass_assignment_of(:ravelry_name) }
  it { should allow_mass_assignment_of(:email) }
  it { should allow_mass_assignment_of(:password) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password) }
  it { should_not allow_value("blah").for(:email) }
  it { should allow_value("liz@liz.com").for(:email) }

  context 'with valid input' do
    it 'should create a user' do
      person = FactoryGirl.create(:user)
      expect(person).to be_instance_of(User)
    end
  end
end