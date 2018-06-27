grep indian cv-valid-dev.csv > cv-valid-dev-indian.csv
grep indian cv-valid-train.csv >> cv-valid-dev-indian.csv
mkdir cv-valid-dev-indian
cut -d',' -f1 cv-valid-dev-indian.csv | xargs -I'{}' cp {} cv-valid-dev-indian


grep ',us,' cv-valid-dev.csv > cv-valid-dev-us.csv
grep ',us,' cv-valid-train.csv >> cv-valid-dev-us.csv
mkdir cv-valid-dev-us
cut -d',' -f1 cv-valid-dev-us.csv | xargs -I'{}' cp {} cv-valid-dev-us
