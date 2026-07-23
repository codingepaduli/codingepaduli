#!/usr/bin/env bats

# Fai download da git e poi
##  cp -r bats-assert /usr/lib/bats-libs/bats-assert
##  cp -r bats-file /usr/lib/bats-libs/bats-file
##  cp -r bats-support /usr/lib/bats-libs/bats-support

load '/usr/lib/bats-libs/bats-support/load.bash'  # path di bats-assert
load '/usr/lib/bats-libs/bats-assert/load.bash'  # path di bats-assert
load '/usr/lib/bats-libs/bats-file/load.bash'  # path di bats-assert

setup() {
  : # eseguito prima di ogni test
  # # shellcheck disable=SC1091
  # source ./script.sh
}

teardown() {
  : # eseguito dopo ogni test
}

@test "ok" {
  run bash -c "source ../bash_functions.sh && echo ok"
  assert_success
}

@test "Separatore '-n' trattato come testo" {
  run bash -c "source ../bash_functions.sh && joinArrayBySeparator '-n' a b"
  assert_success
  assert_output "a-nb"
}

@test "Separatore '\\n' stampato letteralmente (non interpretato come newline)" {
  run bash -c "source ../bash_functions.sh && sep=\$(printf '\\\\n') && joinArrayBySeparator \"\$sep\" a b"
  assert_success
  assert_output "a\\nb"
}

@test "Separatore newline reale" {
  # $'\''\n'\'' stringa ANSI-C quoted : un modo di inserire apici in una stringa racchiusa da apici singoli, dentro questi apici \n viene interpretato come newline reale
  run bash -c 'source ../bash_functions.sh; joinArrayBySeparator $'\''\n'\'' a b'
  assert_success
  assert_output $'a\nb'
}

@test "separatore ed un solo parametro" {
  run bash -c "source ../bash_functions.sh && joinArrayBySeparator '__' 'X'"
  assert_success
  assert_output "X"
}

@test "separatore e lista di parametri vuoti" {
  run bash -c "source ../bash_functions.sh && joinArrayBySeparator 'A' '' '' '' '' "
  assert_success
  assert_output "AAA"
}

@test "(separatore vuoto e lista parametri" {
  run bash -c "source ../bash_functions.sh && joinArrayBySeparator '' 'A' 'B' "
  assert_success
  assert_output "AB"
}

@test "solo il separatore" {
  run bash -c "source ../bash_functions.sh && joinArrayBySeparator 'A' "
  assert_failure
}

@test "separatore vuoto" {
  run bash -c "source ../bash_functions.sh && joinArrayBySeparator ''"
  assert_failure
}

@test "senza parametri" {
  run bash -c "source ../bash_functions.sh && joinArrayBySeparator"
  assert_failure
}