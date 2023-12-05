Input ← &fras "day3.txt"

# split lines
⊜(
  # drop card number
  ↘+2⊗@:.
  # partition by pipe
  ⊜(
    # parse each number separated by space
    □⊜(parse)≠@ .
  ) ≠@|.
  # find the intersection of the two parts of the card
  ▽∊,⊃(⊔⊢⇌)(⊔⊢)
  # score
  ⌊ⁿ:2-1⧻
) ≠@\n. Input
&p $"Solution Day 3 part 1: _" /+
