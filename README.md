# dockstore-cgpbigwig

**`dockstore-cgpbigwig` Has been retired**.

All components can now be found in the [cgpBigWig](https://github.com/cancerit/cgpBigWig)

`dockstore-cgpbigwig` provides a suite of commandline tools written in C to manupulate [BigWig] files. These has been packaged specifically for use with the [Dockstore.org](https://dockstore.org/) framework.

[![Gitter Badge][gitter_svg]][gitter_badge]

[![Quay Badge][quay-status]][quay-repo]

| Master                                        | Develop                                         |
| --------------------------------------------- | ----------------------------------------------- |
| [![Master Badge][travis-master]][travis-base] | [![Develop Badge][travis-develop]][travis-base] |

## Supported Tools

Tools available in [cgpBigWig] supported in this docker:

* [bwcat] - Read the contents of a bigwig (.bw) file
* [bam2bw] - Generate bigwig (.bw) coverage file from bam
* [bam2bedgraph] - Generate a coverage bedgraph from bam
* [bg2bw] - Generate bigwig (.bw) coverage file from bedgraph (.bed) format
* [bam2bwbases] - Generate bigwig (.bw) proportion file of each base at a position from bam
* [bwjoin] - Concatenate bigwig files together

## Test Data

The `examples/` directory contains test data in `.json` files that can be used to verify the tools available.

## Example reference files

In order to use the test examples for `bam2bw`, `bam2bwbases`, `bg2bw`, `bwjoin` reference information for
Human GRCh37d5 is required. This can be downloaded and unpacked from our ftp site [here][ftpref]. The reference paths in the `.json` example file should be updated to the location you have unpacked

```
wget ftp://ftp.sanger.ac.uk/pub/cancer/dockstore/human/core_ref_GRCh37d5.tar.gz

mkdir GRCh37d5

tar -C GRCh37d5 --strip 1 -zxf core_ref_GRCh37d5.tar.gz
```

## Release process

This project is maintained using [HubFlow].

1. Make appropriate changes
1. Bump version in `Dockerfile` and `Dockstore.cwl`
1. Push changes
1. Check state on Travis
1. Generate the release (add notes to GitHub)
1. Confirm that image has been built on [quay.io][quay-builds]
1. Update the [dockstore] entry, see [their docs][dockstore_intro].

## LICENCE

```
Copyright (c) 2016-2019 Genome Research Ltd.

Author: Cancer, Ageing and Somatic Mutation <cgphelp@sanger.ac.uk>

This file is part of dockstore-cgpbigwig.

dockstore-cgpbigwig is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation; either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.

1. The usage of a range of years within a copyright statement contained within
this distribution should be interpreted as being equivalent to a list of years
including the first and last year specified and all consecutive years between
them. For example, a copyright statement that reads ‘Copyright (c) 2005, 2007-
2009, 2011-2012’ should be interpreted as being identical to a statement that
reads ‘Copyright (c) 2005, 2007, 2008, 2009, 2011, 2012’ and a copyright
statement that reads ‘Copyright (c) 2005-2012’ should be interpreted as being
identical to a statement that reads ‘Copyright (c) 2005, 2006, 2007, 2008,
2009, 2010, 2011, 2012’."
```

<!-- References -->
[BigWig]: https://genome.ucsc.edu/goldenpath/help/bigWig.html
[HubFlow]: https://datasift.github.io/gitflow/
[dockstore]: https://dockstore.org/containers/quay.io/wtsicgp/dockstore-cgpbigwig
[dockstore_intro]: https://dockstore.org/docs/getting-started-with-dockstore
[cgpBigWig]: https://github.com/cancerit/cgpBigWig
[bwcat]: https://github.com/cancerit/cgpBigWig#bwcat
[bwjoin]: https://github.com/cancerit/cgpBigWig#bwjoin
[bam2bw]: https://github.com/cancerit/cgpBigWig#bam2bw
[bg2bw]: https://github.com/cancerit/cgpBigWig#bg2bw
[bam2bwbases]: https://github.com/cancerit/cgpBigWig#bam2bwbases
[bam2bedgraph]: https://github.com/cancerit/cgpBigWig#bam2bedgraph
[ftpref]: ftp://ftp.sanger.ac.uk/pub/cancer/dockstore/human/core_ref_GRCh37d5.tar.gz

<!-- Travis -->
[travis-base]: https://travis-ci.org/cancerit/dockstore-cgpbigwig
[travis-master]: https://travis-ci.org/cancerit/dockstore-cgpbigwig.svg?branch=master
[travis-develop]: https://travis-ci.org/cancerit/dockstore-cgpbigwig.svg?branch=develop

<!-- Quay -->
[quay-status]: https://quay.io/repository/wtsicgp/dockstore-cgpbigwig/status
[quay-repo]: https://quay.io/repository/wtsicgp/dockstore-cgpbigwig
[quay-builds]: https://quay.io/repository/wtsicgp/dockstore-cgpbigwig?tab=builds

<!-- Gitter -->
[gitter_svg]: https://badges.gitter.im/dockstore-cgp/Lobby.svg
[gitter_badge]: https://gitter.im/dockstore-cgp/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
