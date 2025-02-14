/**
 * Copyright 2022 The Sigstore Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

terraform {
  required_version = ">= 1.1.3, < 1.2.0"

  required_providers {
    google = {
      version = ">= 4.11.0, < 4.12.0"
      source  = "hashicorp/google-beta"
    }
    google-beta = {
      version = ">= 4.11.0, < 4.12.0"
      source  = "hashicorp/google-beta"
    }
    random = {
      version = ">= 3.1.0, < 3.2.0"
      source  = "hashicorp/random"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.13.1"
    }
    helm = {
      // Using custom built version for proxy access.
      // Switch to public instance once https://github.com/hashicorp/terraform-provider-helm/pull/834 lands.
      source  = "nsmith5/helm"
      version = "2.4.3"
    }
  }
}
