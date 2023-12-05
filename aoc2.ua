Input ← &fras "day2.txt"

RGB ← [@r @g @b]
RGBify ← |1 ≡(⊂⊃(⊢⊢)(⊢⇌))
Triplet ← |1 ⊔⬚0⊏ ⊙(≡(parse⊔⊢⇌))⊗RGB⊔≡(⊔⊢) .
Round ← |1 Triplet RGBify⊜(⊕□∊:+@0⇡10.) ≠@,.
Line ← |1 /↥⊜(Round)≠@;.
Lines ← |1 /+⊜(/×Line↘+1⊗@:.) ≠@\n. ⊏⊚ ≠@ .
&p $"Solution Day 2 Part 2: _" Lines Input
