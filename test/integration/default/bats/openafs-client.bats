#!/usr/bin/env bats

@test "AFS module is loaded" {
    run grep afs /proc/modules
    [ "$status" -eq 0 ]
}

@test "Check AFS path /afs/grand.central.org exists" {
    run stat /afs/grand.central.org
    [ "$status" -eq 0 ]
}

@test "Check AFS path /afs/andrew.cmu.edu exists" {
    run stat /afs/andrew.cmu.edu
    [ "$status" -eq 0 ]
}
