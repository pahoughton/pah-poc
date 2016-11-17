# 2016-11-16 (cc) <paul4hough@gmail.com>
#

module Wirde
  class Agent
    def self.test
      puts self.inspect
    end
  end
end

Wirde::Agent.test
