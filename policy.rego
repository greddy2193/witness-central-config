package witness.verify

default allow = false

allow {
    some i
    attestation_item := input.predicate.attestations[i]
    attestation_item.type == "https://witness.dev/attestations/command-run/v0.1"
    
    # Check that the command matches the expected array of arguments
    attestation_item.attestation.cmd == ["mvn", "-f", "pom.xml", "clean", "package", "-DskipTests"]
    
    # Additionally, check for a successful exit code
    attestation_item.exitcode.exitcode == 0
}
