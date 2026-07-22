#!/usr/bin/env bats

# Esegui con bats bash_functions_unit_test.sh

load '/usr/lib/bats/bats-support/load.bash'  # path di bats-assert
load '/usr/lib/bats/bats-assert/load.bash'  # path di bats-assert
load '/usr/lib/bats/bats-file/load.bash'  # path di bats-assert

setup() {
  : # eseguito prima di ogni test
}

teardown() {
  : # eseguito dopo ogni test
}

@test "rimuove le lettere accentate" {
  run bash -c "source ../bash_functions.sh && echo 'testo1àèéìòù' | grepRgReplaceAccentedCharacters"
  assert_success
  assert_output "testo1aeeiou"
}

@test "sostituisce l'accento con l'apostrofo" {
  # la sequenza '' significa concatenazione stringhe
  run bash -c "source ../bash_functions.sh && echo 'ciao'\''ciao' | grepRgReplaceAccentedCharacters"
  assert_success
  assert_output "ciao ciao"
}

@test "rimuove le lettere accentate in file multi-line" {
  # la sequenza $'...' significa stringa ANSI-C ed escape tipo \n vengono interpretati
  run bash -c "source ../bash_functions.sh && printf '%s\n' $'ciao\nàèéìòù' | grepRgReplaceAccentedCharacters"
  assert_success
  assert_output $'ciao\naeeiou'
}

@test "sostituisce l'apostrofo e rimuove le lettere accentate in file multi-line" {
  # la sequenza $'...' significa stringa ANSI-C ed escape tipo \' e \n vengono interpretati
  run bash -c "source ../bash_functions.sh && printf '%s\n' $'ci\'ao\nàèéìòù' | grepRgReplaceAccentedCharacters"
  assert_success
  assert_output $'ci ao\naeeiou'
}


@test "non modifica i caratteri normali" {
  run bash -c "source ../bash_functions.sh && echo 'testo2' | grepRgReplaceAccentedCharacters"
  assert_success
  assert_output "testo2"
}

@test "non modifica stringa vuota" {
  run bash -c "source ../bash_functions.sh && echo '' | grepRgReplaceAccentedCharacters"
  assert_success
  assert_output ""
}