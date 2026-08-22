 "id" = 

"name" = "compute-eng+presistanceDisk"

"description" = ""

"version" = 1

"projectId" = 

"provider" = "gcp"

"providerVersions" = {
  "gcp" = "6.0.0"
}

"terraformVersion" = ">=1.5.0"

"region" = "us-central1"

"components" = {
  "id" = "container-region-1786082192195"

  "type" = "container"

  "name" = "region-1kyv32"

  "position" = {
    "x" = 159.4999771118164

    "y" = 100.16926765441895
  }

  "style" = {
    "width" = 1000

    "height" = 800
  }

  "data" = {
    "type" = "container-region"

    "name" = "region-1kyv32"

    "config" = {
      "projectId" = "infraglide-testing"

      "region" = "us-central1"

      "regionName" = "us-central1"
    }

    "isConfigValid" = true

    "parentId" = 

    "nestingLevel" = 0

    "label" = "us-central1"

    "isTainted" = false

    "scalingMode" = "none"

    "validationError" = false

    "deploymentStatus" = "success"
  }
}

"components" = {
  "id" = "container-zone-1786082194654"

  "type" = "container"

  "name" = "zone-ie13kl"

  "position" = {
    "x" = 201.2356773480268

    "y" = 196.4240607701912
  }

  "style" = {
    "width" = 400

    "height" = 600
  }

  "data" = {
    "type" = "container-zone"

    "name" = "zone-ie13kl"

    "config" = {
      "zone" = "us-central1-a"

      "region" = "us-central1"
    }

    "isConfigValid" = true

    "parentId" = "container-region-1786082192195"

    "nestingLevel" = 1

    "label" = "us-central1-a"

    "configModifiedByUser" = true

    "hasIncompleteConfig" = false

    "isTainted" = false

    "scalingMode" = "none"

    "validationError" = false

    "deploymentStatus" = "success"
  }
}

"components" = {
  "id" = "gcp-disk-1786082559647"

  "type" = "cloudComponent"

  "name" = "GCP-DISK-qk40i6"

  "position" = {
    "x" = 357.94051707308984

    "y" = 565.1404949752297
  }

  "style" = {}

  "data" = {
    "componentType" = "gcp-disk"

    "type" = "gcp-disk"

    "name" = "GCP-DISK-qk40i6"

    "config" = {
      "projectId" = "infraglide-testing"

      "region" = "us-central1"

      "zone" = "us-central1-a"

      "encryption" = "Google-managed"

      "diskType" = "pd-balanced"

      "size" = 100

      "diskName" = "presistance-disk-test-001"

      "labels" = {
        "owner" = "kamal"
      }
    }

    "validationError" = false

    "isConfigValid" = true

    "parentId" = "container-zone-1786082194654"

    "nestingLevel" = 2

    "configModifiedByUser" = true

    "hasIncompleteConfig" = false

    "deploymentStatus" = "success"

    "isTainted" = false

    "scalingMode" = "none"
  }
}

"components" = {
  "id" = "gcp-compute-1786082728678"

  "type" = "cloudComponent"

  "name" = "GCP-COMPUTE-b0cigm"

  "position" = {
    "x" = 360.55432719942996

    "y" = 381.08782154251026
  }

  "style" = {}

  "data" = {
    "componentType" = "gcp-compute"

    "type" = "gcp-compute"

    "name" = "GCP-COMPUTE-b0cigm"

    "config" = {
      "projectId" = "infraglide-testing"

      "region" = "us-central1"

      "zone" = "us-central1-a"

      "machineFamily" = "General-purpose"

      "osFamily" = "debian"

      "bootDiskType" = "pd-balanced"

      "shieldedSecureBoot" = false

      "provisioningModel" = "STANDARD"

      "bootDiskSize" = 20

      "shieldedVtpm" = true

      "onHostMaintenance" = "MIGRATE"

      "bootDiskAutoDelete" = true

      "enableIntegrityMonitoring" = true

      "enableOpsAgent" = false

      "automaticRestart" = true

      "enableOsLogin" = false

      "blockProjectSshKeys" = false

      "allowStoppingForUpdate" = true

      "enableCpuOvercommit" = false

      "instanceName" = "compute-eng-instance-test-001"

      "series" = "E2"

      "machineType" = "e2-micro"

      "bootDiskImage" = "debian-12-bookworm-arm64-v20260804"

      "networkInterfaces" = {
        "network" = "vpc-test-final-1"

        "subnetwork" = "vpc-subnet-final-2"

        "nicType" = "VIRTIO_NET"

        "ipStackType" = "IPV4_ONLY"

        "internalIp" = ""

        "externalIp" = "None"

        "externalIpName" = ""
      }

      "serviceAccount" = "infraglide-testing@appspot.gserviceaccount.com"

      "accessScopes" = "https://www.googleapis.com/auth/devstorage.read_write"

      "_connectedDiskId" = "gcp-disk-1786082559647"
    }

    "validationError" = false

    "isConfigValid" = true

    "parentId" = "container-zone-1786082194654"

    "nestingLevel" = 2

    "configModifiedByUser" = true

    "hasIncompleteConfig" = false

    "deploymentStatus" = "success"

    "isTainted" = false

    "scalingMode" = "none"
  }
}

"connections" = {
  "id" = "reactflow__edge-gcp-disk-1786082559647top-source-gcp-compute-1786082728678bottom-target"

  "source" = "gcp-disk-1786082559647"

  "target" = "gcp-compute-1786082728678"

  "type" = "deletable"
}

"snapshot" = "data:image/png;base64,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"

"isTemplate" = false

"status" = "draft"

"createdAt" = "2026-08-07T07:07:58.691Z"

"updatedAt" = "2026-08-07T07:07:58.691Z"