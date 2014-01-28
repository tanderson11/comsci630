require 'spec_helper'

describe Order do

  before do
    @order = Order.new(form_first: "Example", form_last: "Example", form_email: "user@andover.edu", issue: "foobar", description: "also foobar", time: "fooooobar")
  end

  subject { @order}

  it { should respond_to(:form_first) }
  it { should respond_to(:form_last) }
  it { should respond_to(:form_email) }
  it { should respond_to(:issue) }
  it { should respond_to(:description) }
  it { should respond_to(:time) }

  it { should be_valid }

  describe "when name is not present" do
    before { @order.form_first = " " }
    it { should_not be_valid }
  end
    describe "when name is not present" do
    before { @order.form_last = " " }
    it { should_not be_valid }
  end
    describe "when email is not present" do
    before { @order.form_email = " " }
    it { should_not be_valid }
  end
    describe "when issue is not present" do
    before { @order.issue = " " }
    it { should_not be_valid }
  end
    describe "when description is not present" do
    before { @order.description = " " }
    it { should_not be_valid }
  end
    describe "when time is not present" do
    before { @order.time = " " }
    it { should_not be_valid }
  end
end