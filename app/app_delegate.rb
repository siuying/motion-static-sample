class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    setup_timer
    true
  end

  def setup_timer
    count = 0
    @timer = EM.add_periodic_timer 1.0 do
      count = count + 1
      puts "Hi (#{count})!"
      (count < 10) || EM.cancel_timer(@timer)
    end
  end
end
