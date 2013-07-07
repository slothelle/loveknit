require 'spec_helper'

describe YarnWeight do
  it { should be_instance_of(YarnWeight) }
  it { should allow_mass_assignment_of(:weight) }
  it { should allow_mass_assignment_of(:yardage_factor) }
end