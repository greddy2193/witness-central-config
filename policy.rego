package witness.verify

default allow = false

# Rule to allow verification if all necessary checks pass
allow {
    input.cmd == ["mvn", "-f", "pom.xml", "clean", "package", "-DskipTests"]
    input.exitcode == 0
}
