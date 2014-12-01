count_a = 0
count_b = 0

5000.times do
  ## Initialize
  doors = Array.new(3)
  doors[rand(3)] = true

  ## Choose a door
  choice = rand(3)

  ## Open a door
  arr = (0..2).to_a.shuffle
  arr.delete(choice)
  open_at = doors[0] ? arr[1] : arr[0]

  ## Check the answer
  # change
  count_a += 1 unless doors[choice] && doors[open_at]

  # not change
  count_b += 1 if doors[choice]
end

p count_a.to_f / count_b.to_f