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
    (@end_time - @beginning_time).to_f
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

  def putsMrRobotMessage
    list = ["Our democracy has been hacked",
        "The world is a dangerous place, Elliott, not because of those who do evil, but because of those who look on and do nothing.",
        "Oh, I don't know. Is it that we collectively thought Steve Jobs was a great man, even when we knew he made billions off the backs of children?.",
        "Fuck society.",
        "A bug is never just a mistake. It represents something bigger. An error of thinking that makes you who you are.",
        "I never want to be right about my hacks, but people always find a way to disappoint.",
        "Hello friend.",
        "Hello friend? That's lame.", 
        "You're only in my head, we have to remember that.",
        "What I'm about to tell you is top secret. A conspiracy bigger than all of us."
        "I'm good at reading people. My secret? I look for the worst in them.",
        "I wanted to save the world.",
        "The bug forces the software to adapt, evolve into something new because of it. Work around it or work through it. No matter what, it changes. It becomes something new.",
        "Most coders think debugging software is about fixing a mistake, but that’s bullshit. Debugging’s actually all about finding the bug, about understanding why the bug was there to begin with, about knowing that its existence was no accident.",
         "How do we know if we’re in control? That we’re not just making the best of what comes at us, and that’s it.",
         "I’ll give you the illusion of choice.",
         "Sure, there are grays, but when you come right down to it, at its core, beneath every choice, there’s either a one or a zero.",
         "You either do something or you don’t.",
         "Are you a one or a zero?", 
         "Every hacker loves attention.",
         "Don’t ever make decisions when you’re on morphine.",
         "If you died, would anyone care? Would they really care? Maybe, they’d cry for a day. But, let’s be honest, no one would give a shit.",
         "The world is a dangerous place, not because of those who do evil, but because of those who look on and do nothing.",
         "We're all living in each other's paranoia.",
         "The concept of waiting bewilders me. There are always deadlines. There are always ticking clocks.",
         "Even extraordinary people, and I believe you are, are driven by human banalities.",
         "You're never sure about anything unless there's something to be sure about.",
         "Give a man a gun and he can rob a bank, but give a man a bank, and he can rob the world.",
         "True courage is about being honest with yourself. Especially when it’s difficult.",
         "The moth don't care when he sees the flame.",
         "Are you a giraffe or a seagull?"]
    puts (list.sample)
  end

  def report
    putsMrSpecMessage
    putsMrRobotMessage
    @end_time = Time.now
    self.results.each do |result|
      puts result.message
    end

     puts (self.results.length.to_s + " tests").colorize(:light_blue).bold
     puts (self.getSuccessResult.length.to_s + " tests ejecutados correctamente").colorize(:light_blue).underline.bold
     puts (self.getFailureResult.length.to_s +  " tests fallidos").colorize(:light_blue).bold
     puts ("Tests ejecutados en " + self.timeLapse.to_s + " segundos").colorize(:light_blue).bold

  end

end