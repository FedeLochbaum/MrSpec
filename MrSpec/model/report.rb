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
    list = ["The world is a dangerous place, Elliott, not because of those who do evil, but because of those who look on and do nothing. ", "Oh, I don't know. Is it that we collectively thought Steve Jobs was a great man, even when we knew he made billions off the backs of children? Or maybe it's that it feels like all our heroes are counterfeit? The world itself's just one big hoax. Spamming each other with our running commentary of bullshit, masquerading as insight, our social media faking as intimacy. Or is it that we voted for this? Not with our rigged elections, but with our things, our property, our money. I'm not saying anything new. We all know why we do this, not because Hunger Games books makes us happy, but because we wanna be sedated. Because it's painful not to pretend, because we're cowards. Fuck society. ", "A bug is never just a mistake. It represents something bigger. An error of thinking that makes you who you are. ", "I never want to be right about my hacks, but people always find a way to disappoint. ", "Hello friend. Hello friend? That's lame. Maybe I should give you a name. But that's a slippery slope, you're only in my head, we have to remember that. Shit, this actually happened, I'm talking to an imaginary person. What I'm about to tell you is top secret. A conspiracy bigger than all of us. There's a powerful group of people out there that are secretly running the world. I'm talking about the guys no one knows about, the ones that are invisible. The top 1% of the top 1%, the guys that play God without permission. And now I think they're following me.", "Though she's a psychologist she's really bad at reading people but I'm good at reading people. My secret? I look for the worst in them.", "I wanted to save the world. ", "The bug forces the software to adapt, evolve into something new because of it. Work around it or work through it. No matter what, it changes. It becomes something new. The next version. The inevitable upgrade.", "Most coders think debugging software is about fixing a mistake, but that’s bullshit. Debugging’s actually all about finding the bug, about understanding why the bug was there to begin with, about knowing that its existence was no accident. It came to you to deliver a message, like an unconscious bubble floating to the surface, popping with a revelation you’ve secretly known all along.", "How do we know if we’re in control? That we’re not just making the best of what comes at us, and that’s it. Trying to constantly pick between two options. Like your two paintings in the waiting room. Or Coke and Pepsi. McDonald’s or Burger King? Hyundai or Honda? It’s all part of the same blur, right? Just out of focus enough. It’s the illusion of choice. Half of us can’t even pick our own our cable, gas, electric. The water we drink, our health insurance. Even if we did, would it matter? You know, if our only option is Blue Cross or Blue Shield, what the fuck is the difference? In fact, aren’t they the same? No, man, our choices are prepaid for us, long time ago.", "Choices. Maybe Mr. Robot’s right. That’s what this is all about, the yesses and nos of life. But do we decide them or do they decide us?", "The lock pick. Every hacker’s favorite sport. The perfect system to crack, mostly because unlike virtual systems, when you break it, you can feel it. You can see it. You can hear it.", "Sure, there are grays, but when you come right down to it, at its core, beneath every choice, there’s either a one or a zero. You either do something or you don’t. You walk out that door, you’ve decided to do nothing, to say no, which means you do not come back. You leave, you are no longer a part of this. You become a zero. If you stay, if you want to change the world, you become a yes. You become a one. So, I’ll ask you again: are you a one or a zero?", "The world is a dangerous place, Elliot, not because of those who do evil, but because of those who look on and do nothing.", "You don’t take down a conglomerate by shooting them in the heart. That’s the thing about conglomerates, they don’t have hearts. You take them down limb by limb. And as they unravel, their illusion of control unravels.", "You think people out there are getting exactly what they deserve? No. They’re getting paid over or under, but someone in the chain always gets bamboozled.", "Every hacker loves attention.", "Don’t ever make decisions when you’re on morphine.", "Am I crazy not to like this guy? Among some of his Facebook likes are George W. Bush’s Decision Points, Transformers 2: Revenge of the Fallen, and the music of Josh Groban. Must I really justify myself any further?", "Is it that we collectively thought Steve Jobs was a great man, even when we knew he made billions off the backs of children? Or maybe it’s that it feels like all our heroes are counterfeit. The world itself’s just one big hoax. Spamming each other with our running commentary of bullshit masquerading as insight, our social media faking as intimacy. Or is it that we voted for this? Not with our rigged elections, but with our things, our property, our money. I’m not saying anything new, we all know why we do this, not because Hunger Games books makes us happy but because we wanna be sedated. Because it’s painful not to pretend, because we’re cowards. Fuck society.", "What I’m about to tell you is top secret, a conspiracy bigger than all of us. There’s a powerful group of people out there that are secretly running the world. I’m talking about the guys no one knows about, the guys that are invisible. The top 1% of the top 1%, the guys that play God without permission. And now I think they’re following me.", "Hello, friend. Hello, friend. That’s lame. Maybe I should give you a name. But that’s a slippery slope. You’re only in my head. We have to remember that."]
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