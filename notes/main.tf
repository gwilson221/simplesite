resource "google_cloudbuild_trigger" "test-trigger" {

  project = "sponge-recruit-gordon"

  github {
    owner = "gwilson221"
    name = "simplesite"
    push {
      branch = "^master$"
    }
  }

  included_files = ["notes/tf-build-trigger"]

  build {
    step {
      name = "ubuntu"
      args = ["echo", "Executed build step"]
    }
  }

}
