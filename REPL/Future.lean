import Lean

namespace List

def flatten : List (List α) → List α
  | []      => []
  | a :: as => a ++ flatten as

def flatMap {α : Type u} {β : Type v} (a : List α) (b : α → List β) : List β := flatten (map b a)

end List
