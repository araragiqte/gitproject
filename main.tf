terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "AQAAAAAFLyDgAATuwdNpYtF8OUDmmz35G22owbQ"
  cloud_id  = "b1gvf7fve1ph2h20thp4"
  folder_id = "b1gnl2epu24n1qirknph"
  zone      = "ru-central1-a"
}

resource "yandex_storage_object" "test-object" {
  access_key = "YCAJEmaF4C2Y0dZl2BCUFIGlt"
  secret_key = "YCNtcR48UZw4O0fYT1uzIFX2OOZ9dpjVAcilPWhN"
  bucket = "araragitestbucket"
  key    = "index.html"
  source = "index.html"
}
