require_relative '../model/assertions'
require_relative '../model/test_results'

class MrSpec

  def getMrSpecTests klass
    klass.instance_methods.select {|method| self.isMrSpecTest method}
  end

  def isMrSpecTest method
    method.to_s.end_with? '_MrSpec'
  end

  def run_test test_suite, test
    test_case = test_suite.new.extend(Assertions)
    begin
      test_case.send test
    rescue AssertionException => e
      return TestFailed.new test, e
    end
    TestSucceded.new test
  end
end