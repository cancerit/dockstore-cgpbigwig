#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: CommandLineTool

id: "cgpbigwig-bwcat"

label: "cgpbigwig-bwcat"

requirements:
  - class: DockerRequirement
    dockerPull: "docker pull drjsanger/randomtesting:cgpbigwig01"

baseCommand: bwcat

inputs:
  input_path:
    type: File
    inputBinding:
      prefix: --input-path
      position: 1
  include_na:
    type: boolean?
    inputBinding:
      prefix: --include-na
  output_path:
    type: File
    inputBinding:
      prefix: --output
  region:
    type: string?
    inputBinding:
      prefix: --region

outputs:
  output:
    type: File
    outputBinding:
      glob: $(inputs.output_path)

$schemas:
    - http://schema.org/docs/schema_org_rdfa.html

$namespaces:
    s: http://schema.org/

s:codeRepository: https://github.com/cancerit/dockstore-cgpbigwig
s:license: https://spdx.org/licenses/GPL-3.0

s:author:
  - class: s:Person
    s:identifier: https://orcid.org/0000-0002-0407-0386
    s:email: mailto:drj@sanger.ac.uk
    s:name: David Jones

dct:creator:
  "@id": "https://orcid.org/0000-0002-0407-0386"
  foaf:name: David Jones
  foaf:mbox: "drj@sanger.ac.uk"

doc: |
  ![build_status](https://quay.io/repository/wtsicgp/dockstore-cgpbigwig/status)

  A wrapper for the cgpBigWig bwcat tool.

  See the [dockstore-cgpbigwig](https://github.com/cancerit/dockstore-cgpbigwig)
  website for more information about this wrapper.

  For queries relating to the underlying software see [cgpBigWig](https://github.com/cancerit/cgpBigWig).
