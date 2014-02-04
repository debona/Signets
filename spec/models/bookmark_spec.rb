require 'spec_helper'

describe Bookmark do
  subject { Bookmark.new(title: 'dummy title', url:'http://www.dummy.com') }

  it { should respond_to(:title) }
  it { should respond_to(:url) }
  it { should be_valid }

  context 'when title is not present' do
    before { subject.title = ' ' }
    it { should_not be_valid }
  end

  context 'when url is not present' do
    before { subject.url = ' ' }
    it { should_not be_valid }
  end


end
