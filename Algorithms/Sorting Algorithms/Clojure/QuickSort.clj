(defn quick-sort [[pivot & remaining]]
  (if pivot
    (concat (quick-sort (filter #(< % pivot) remaining))
            [pivot]
            (quick-sort (filter #(>= % pivot) remaining)) 
            ) 
    []))
