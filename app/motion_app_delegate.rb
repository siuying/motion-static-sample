class MotionAppDelegate
  def self.setup
    @delegate ||= MotionAppDelegate.new
    @observer = App.notification_center.observe UIApplicationDidBecomeActiveNotification do |notification|
      @delegate.setup_timer
    end
  end

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    true
  end

  def setup_timer
    @count = 0
    @timer = EM.add_periodic_timer 1.0 do
      @count = @count + 1
      puts "Hi (#{@count})!"
      (@count < 10) || EM.cancel_timer(@timer)
    end
  end
end

# this will be run in the RubyMotionInit() call in main.m
MotionAppDelegate.setup