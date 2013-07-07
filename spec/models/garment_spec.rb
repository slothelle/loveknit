require 'spec_helper'

describe Garment do
  it { should be_instance_of(Garment) }
  it { should allow_mass_assignment_of(:category) }
  it { should have_many(:patterns) }
end