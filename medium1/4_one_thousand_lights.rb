# you have a bank of switches before you numbered 1 - n
# each switch is connected to one light that is initially off
# you walk down the row of switches and toggle every one of them
# you go back to the beggining and on this second pass you toggle 2,4,6 etc
# on the third pass you go back from the begging and toggle 3, 6, 9 and so on
# you repeat this process until you have been through n repetitions.

# take one argument: the total number of switches
# return an array that identifies which lights are on after n reptitions

def switch_lights(n)
  lights = Array.new(n, false)
  # flip values of lights
  1.upto(n) do |i|
    lights.map!.with_index { |light, j| ((j + 1) % i).zero? ? !light : light }
  end
  # return array of lights that are on
  lights.each_with_object([]).with_index do |(light, on_lights), i|
    on_lights << (i + 1) if light
  end
end

# Example n = 5
# round 1: all lights are on
# round 2: lights 2,4 are off; 1,3,5 are on
# round 3: lights 2,3,4 are off; 1,5 are on
# round 4: lights 2,3 are off; 1,4,5 are on
# round 5: lights 2,3,5 are off; 1,4 are on

# The result is 2 lights on. The return values is [1,4]
# with 10 lights, 3 lights are on. The return value is [1,4,9]

p switch_lights(5) == [1, 4]
p switch_lights(10) == [1, 4, 9]
p switch_lights(1000) ==
  [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289] +
  [324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
