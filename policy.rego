package witness.verify

default allow = false

# A function to find a specific predicate type inside the collections attestation
get_predicate(predicate_type) = result {
    some i
    attestation_item := input.predicate.attestations[i]
    attestation_item.type == predicate_type
    result := attestation_item
}

# Rule to allow verification if all necessary checks pass
allow {
    input.cmd == ["mvn", "-f", "pom.xml", "clean", "package", "-DskipTests"]
    input.exitcode == 0
}
