require_relative '../model/assertions'
require_relative '../model/test_results'
require_relative '../model/report'

class MrSpec

  def getMrSpecTests klass
    klass.instance_methods.select {|method| self.isMrSpecTest method}
  end

  def isMrSpecTest method
    method.to_s.end_with? '_MrSpec'
  end

  def runTests klass
    tests = self.getMrSpecTests klass
    results = tests.map{|test| self.run_test klass,test}
    report = Report.new
    report.addResults results
    report.report
    report
  end

  def run_test test_suite, test
    test_case = test_suite.new.extend(Assertions)
    begin
      call_method test_case, :before
      test_case.send test
      call_method test_case, :after
    rescue AssertionException => e
      return TestFailed.new test, test_suite, e
    end
    TestSucceded.new test, test_suite, nil
  end

  def call_method test_case, selector
    if test_case.respond_to? selector
      test_case.send selector
    end
  end
end