package witness.verify

default allow = false

# Rule to allow verification if all necessary checks pass
allow {
    input._type == "https://in-toto.io/Statement/v0.1
}
