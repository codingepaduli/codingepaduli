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
}

teardown() {
  : # eseguito dopo ogni test
}

@test "ok" {
  run bash -c "source ../bash_functions.sh && echo ok"
  assert_success
}

@test "rimuove slash finale, /dir/ -> /dir" {
  run bash -c "source ../bash_functions.sh && getBaseDirWithoutSlash /tmpdir/sub/"
  assert_success
  assert_output "/tmpdir/sub"
}

@test "root non viene modificata, / -> /" {
  run bash -c "source ../bash_functions.sh && getBaseDirWithoutSlash /"
  assert_success
  assert_output "/"
}

@test "i percorsi relativi con '.' funzionano, ./ -> ." {
  run bash -c "source ../bash_functions.sh && getBaseDirWithoutSlash ./"
  assert_success
  assert_output "."
}

@test "parametro vuoto, '' ->x '' " {
  run bash -c "source ../bash_functions.sh && getBaseDirWithoutSlash ''"
  assert_success
  assert_output ""
}

@test "senza parametri" {
  run bash -c "source ../bash_functions.sh && getBaseDirWithoutSlash"
  assert_failure
}