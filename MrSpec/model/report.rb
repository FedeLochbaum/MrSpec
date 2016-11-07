class Report
  attr_accessor :results, :beginning_time, :end_time

  def initialize
    @beginning_time = Time.now
    @end_time = @beginning_time
    @results = []
  end

  def addResult result
    @results.push result
  end

  def addResults results
    @results.concat results
  end

  def getSuccessResult
    @results.select {|result| result.success?}
  end

  def getFailureResult
    @results.select {|result| result.failure?}
  end

  def success?
    @results.all? {|result | result.success?}
  end

  def timeLapse
    ((@end_time - @beginning_time) * 24 * 60 * 60).to_f
  end

  def putsMrSpecMessage
    puts("................................................................................".colorize(:black).bold)
    puts("MMMMM...MMMMM.MMMMMMMMMM.........MMMMMMMMM.MMMMMMMMM.....MMMMMMMMM...MMMMMMMMM..".colorize(:black).bold)
    puts("MM.ZMM.MMM.MM.........IMM......MMM.........MM......MMM..MM$........,MM:.........".colorize(:black).bold)
    puts("MM.M8MMMM7MMM.MMMMMMMMM.MM....ZMOMMMMMMMMM.MMMMMMMMMMM.DM=MMMMMMMM.MM.MMMMMMMM.".colorize(:black).bold)
    puts("MM.M~MMM.MMMM.MMMMMMMMM$MM....8MIMMMMMZ....MMMM.MMMMMM.MM.MMMMMMM..MM.MM........".colorize(:black).bold)
    puts("MM.MM.M.MMMMM.MMMMMMMM.MM7.....MMD~MMMMMM..MMMM.MMIMMM.MM.MMMMMMM..MM.MM........".colorize(:black).bold)
    puts("MM.MMM.MMMMMM.MM.MMM$MMM........DMMMMMM$MM.MMMM.MMMM~..MM.MMMMMMM..MM.MM........".colorize(:black).bold)
    puts("MM.MMMMMDMMMM.MM.MMMM.MM......MMMMMMMMM.MM.MMMM........MM.MMMMMMMM.MM.MMMMMMMM..".colorize(:black).bold)
    puts("MM.MMMMM.MMMM.MM.MM.MM,MM.....MMMMMMMM.MM,.MMMM........,MM.MMMMMMM.MMM=MMMMMMM..".colorize(:black).bold)
    puts("MM.MM.M..MMMM.MM.MM..MMMM,.MM.MMMMMMMMMM...MMMM.........NMMMMMMMMM..MMMMMMMMMM..".colorize(:black).bold)
    puts("................................................................................".colorize(:black).bold)
  end

  def report
    putsMrSpecMessage
    @end_time = Time.now
    self.results.each do |result|
      puts result.message
    end

    puts (self.results.length.to_s + " tests").colorize(:blue).bold
     puts (self.getSuccessResult.length.to_s + " tests ejecutados correctamente").colorize(:blue).underline.bold
     puts (self.getFailureResult.length.to_s +  " tests fallidos").colorize(:blue).bold
     puts ("Tests ejecutados en " + self.timeLapse.to_s + " segundos").colorize(:blue).bold
    puts String.colors
  end

end