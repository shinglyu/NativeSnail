mkdir data
for s in dev test train; do
    mkdir data/$s
    
    grep indian cv-valid-$s.csv > cv-valid-$s-indian.csv
    mkdir data/$s/indian
    cut -d',' -f1 cv-valid-$s-indian.csv | xargs -I'{}' ln -s ${PWD}/{} data/$s/indian

    grep ',us,' cv-valid-$s.csv > cv-valid-$s-us.csv
    mkdir data/$s/us
    cut -d',' -f1 cv-valid-$s-us.csv | xargs -I'{}' ln -s ${PWD}/{} data/$s/us
done
