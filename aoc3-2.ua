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

# split lines
⊜(
  # drop to colon
  ↘+1⊗@:.
  # partition by pipe
  ⊜(
    # parse each number separated by space
    □⊜(parse)≠@ .
  ) ≠@|.
  # find the intersection of the two parts of the card
  ▽∊,⊃(⊔⊢⇌)(⊔⊢)
  # the cards score is its length
  ⧻
) ≠@\n. Input

∧(
  # put the current cards score into an array
  ↯+1⧻,
  # the magic
  ⊏⊝⊚.⊂⊙(-1)
  # keep a running total on the back of the stack
  ⊙(+):+1⧻.
):[]:0
⊙;;
&p $"Solution Day 3 part 2: _"
