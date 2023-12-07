$ Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53
$ Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19
$ Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1
$ Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83
$ Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36
$ Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11
Ex ←
Input ← &fras "day3.txt"

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

# calculate the number of copies of the next card, where
# the argument is [[copies cardscore]]
Copies ← |1 +1∧(+⊢):0

;∧(
  # put the current cards score into an array
  # this value will look like [[copies cardscore]]
  ¤⊟Copies,
  # decrement fold accumulator and join to current card score
  ⊂⊙(≡(-[0 1]))
  # filter out cards with zero value
  ⊏⊝⊚≡(⊢⇌).
  # keep a running total on the back of the stack
  ⊙(+):Copies.
)⊙([]0) # shove an accumulator and running total on the back of the stack

&p $"Solution Day 3 part 2: _"
