package witness.verify

default allow = false

allow {
  #input._type == "https://in-toto.io/Statement/v0.1"
}
