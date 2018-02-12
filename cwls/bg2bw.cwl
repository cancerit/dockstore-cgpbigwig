#!/usr/bin/env cwl-runner
$namespaces:
    dct: http://purl.org/dc/terms/
    foaf: http://xmlns.com/foaf/0.1/
    s: http://schema.org/

$schemas:
    - http://schema.org/docs/schema_org_rdfa.html
    - http://xmlns.com/foaf/0.1/foaf.rdf
    - http://purl.org/dc/terms/dcterms.rdf

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

cwlVersion: v1.0

class: CommandLineTool

id: "cgpbigwig-bg2bw"
label: "cgpbigwig-bg2bw"

baseCommand: bg2bw

requirements:
  - class: DockerRequirement
    dockerPull: "docker pull drjsanger/randomtesting:cgpbigwig01"

inputs:
  input_path:
    type: File
    inputBinding:
      prefix: --input
      position: 1
  output_path:
    type: string
    inputBinding:
      prefix: --outfile
  chrom_list:
    type: File
    inputBinding:
      prefix: --chromList

outputs:
  output:
    type: File
    outputBinding:
      glob: $(inputs.output_path)

doc: |
  ![build_status](https://quay.io/repository/wtsicgp/dockstore-cgpbigwig/status)

  A wrapper for the cgpBigWig bg2bw tool.

  See the [dockstore-cgpbigwig](https://github.com/cancerit/dockstore-cgpbigwig)
  website for more information about this wrapper.

  For queries relating to the underlying software see [cgpBigWig](https://github.com/cancerit/cgpBigWig).
