require 'spec_helper'

describe Tag do
  subject { Tag.new(name: 'dummy name') }

  it { should respond_to(:name) }
  it { should be_valid }

  context 'when name is not present' do
    before { subject.name = ' ' }
    it { should_not be_valid }
  end

  context 'when name is already taken' do
    before do
      tag_with_same_name = subject.dup
      tag_with_same_name.name = subject.name.upcase
      tag_with_same_name.save
    end

    it { should_not be_valid }
  end
end
