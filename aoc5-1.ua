# still wip

$ seeds: 79 14 55 13
$ 
$ seed-to-soil map:
$ 50 98 2
$ 52 50 48
$ 
$ soil-to-fertilizer map:
$ 0 15 37
$ 37 52 2
$ 39 0 15
$ 
$ fertilizer-to-water map:
$ 49 53 8
$ 0 11 42
$ 42 0 7
$ 57 7 4
$ 
$ water-to-light map:
$ 88 18 7
$ 18 25 70
$ 
$ light-to-temperature map:
$ 45 77 23
$ 81 45 19
$ 68 64 13
$ 
$ temperature-to-humidity map:
$ 0 69 1
$ 1 0 69
$ 
$ humidity-to-location map:
$ 60 56 37
$ 56 93 4
Example ←
Input ← &fras "day5.txt"

Lines ← |1 ⊜□≠@\n.
Seeds ← |1 ⊜⋕≠@ . ↘+1⊗@:. °□⊢
MapLines ← |1 ⊜(□≡(⊜⋕≠@ .°□)) ≡(≠@:⊢⇌).°□ ↘1
NextValue ← |2 +/-⊏1_0: ⊙°□
MapMatches ← |2 ↧⊃(≥⊏1|</+⊏1_2)
ReduceMap ← ≡(
  ≡(MapMatches ⊃(↘1|⊢).)
  (NextValue ⊃(⊢|↘1)⊏|⊡0_0;): ⊙=.⊗1 :⧻.
) ⊠(⊂)
Solve ← |1 ⊢⊏⍏. ∧(ReduceMap:⊐°□) ⊃MapLines Seeds Lines
Solve Input

---
⍤. =1 MapMatches [52 50 48] 79
⍤. =1 MapMatches [50 98 2] 98
⍤. =1 MapMatches [50 98 2] 98
⍤. =0 MapMatches [50 98 2] 97
⍤. =0 MapMatches [50 98 2] 100
⍤. ≍[81 53] NextValue: [52 50 48] [79 51]
⍤. ≍[81 14 57 13] ReduceMap [79 14 55 13] [[50 98 2] [52 50 48]]
---
