(defn insertion-sort [coll]
  (defn insert [elem [x & xs]]
    (if x
      (if (< elem x)
        (concat [elem] [x] xs)
        (concat [x] (insert elem xs)))
      [elem]))
  (if (empty? coll) [] (insert (first coll) (insertion-sort (rest coll)))))

