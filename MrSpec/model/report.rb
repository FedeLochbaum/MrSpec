class Report
  attr_accessor :results, :beginning_time, :end_time

  def initialize
    @beginning_time = Time.now
    @end_time = @beginning_time
    @results = []
  end

  def addResult result
    @results.push result
    @end_time = Time.now
  end

  def getSuccessResult
    @results.select {|result| result.success?}
  end

  def getFailureResult
    @results.select {|result| result.failure?}
  end

  def timeLapse
    ((@end_time - @beginning_time) * 24 * 60 * 60).to_f
  end


end