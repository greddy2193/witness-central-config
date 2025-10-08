package witness.verify

default allow = false

allow {
  #input._type == "https://witness.dev/attestation/build"
  input.predicate.builder.id == "maven"
}
