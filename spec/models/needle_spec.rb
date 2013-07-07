require 'spec_helper'

describe Needle do
  it { should be_instance_of(Needle) }
  it { should allow_mass_assignment_of(:size) }
end