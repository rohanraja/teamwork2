require 'rails_helper'

RSpec.describe Tester::Iexecutor, type: :component do

  before() do
    @execu =  Tester::Iexecutor.new
  end

  context "Interface test" do
    it "should respond to Run()" do
      expect(@execu).to respond_to(:Run)
    end
    it "should respond to Stop()" do
      expect(@execu).to respond_to(:Stop)
    end
    it "should respond to Stop()" do
      expect(@execu).to respond_to(:Status)
    end

  end
end
