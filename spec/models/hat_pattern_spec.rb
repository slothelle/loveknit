require 'spec_helper'

describe HatPattern do
  it { should be_instance_of(HatPattern) }
  it { should belong_to(:pattern) }
  it { should allow_mass_assignment_of(:title) }
  it { should allow_mass_assignment_of(:pattern) }
  it { should allow_mass_assignment_of(:needle) }
  it { should allow_mass_assignment_of(:yarn_weight) }
  it { should allow_mass_assignment_of(:gauge_row_inch) }
  it { should allow_mass_assignment_of(:gauge_per_inch) }
  it { should allow_mass_assignment_of(:circumference) }
  it { should allow_mass_assignment_of(:needle_id) }
  it { should allow_mass_assignment_of(:pattern_id) }
  it { should allow_mass_assignment_of(:yarn_weight_id) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:gauge_row_inch) }
  it { should validate_presence_of(:gauge_per_inch) }
  it { should validate_presence_of(:circumference) }
  it { should validate_presence_of(:needle_id) }
  it { should validate_presence_of(:pattern_id) }
  it { should validate_presence_of(:yarn_weight_id) }
  it { should validate_uniqueness_of(:pattern_id) }
end