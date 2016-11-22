require_relative '../model/assertions'
require_relative '../model/gwt_syntax'
require_relative '../model/test_results'
require_relative '../model/report'

class MrSpec

  def getMrSpecTests klass
    klass.instance_methods.select {|method| self.isMrSpecTest method}
  end

  def isMrSpecTest method
    method.to_s.end_with? '_MrSpec'
  end

  def self.test
    runner = MrSpec.new
    classes = ObjectSpace.each_object(Class).select { | klass| klass.to_s.end_with? 'mr_spec'}
    classes.each {|klass| runner.runTests klass}
  end

  def runTests klass
    tests = self.getMrSpecTests klass
    results = tests.map{|test| self.run_test klass,test}
    report = Report.new
    report.addResults results
    report.report
    report
  end

  def run_test klass, test
    sut = klass.new.extend(Assertions).extend(GwtSyntax)
    begin
      call_method sut, :before
      sut.send test
      call_method sut, :after
    rescue AssertionException => e
      return TestFailed.new test, klass, e
    end
    TestSucceded.new test, klass, nil
  end

  def call_method sut, selector
    if sut.respond_to? selector
      sut.send selector
    end
  end
end