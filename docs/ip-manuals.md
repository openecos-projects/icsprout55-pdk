# Optional IP manuals

The standard-cell and IO PDF manuals are provided as a Release attachment.
Cloning the repository, `make download`, and `make unzip` do not download them.

From the repository root, download and extract all 65 manuals with:

```sh
make docs PROXY_USE=true TOOL=wget
```

The manuals are restored to their original `IP/.../doc/` directories. Downloaded
PDFs are ignored by Git; the README files in those directories are retained.

| Library | Manuals | Installation directory |
| --- | ---: | --- |
| SC9T HVT | 16 corner manuals | `IP/STD_cell/ICsprout55_SC9T_BASIC_HVT/doc/` |
| SC9T LVT | 16 corner manuals | `IP/STD_cell/ICsprout55_SC9T_BASIC_LVT/doc/` |
| SC9T SVT | 16 corner manuals | `IP/STD_cell/ICsprout55_SC9T_BASIC_SVT/doc/` |
| GPIO/PAD | 1 user guide and 16 corner manuals | `IP/IO/doc/` |

For a manual download, get
[`v2-docs.tar.bz2`](https://github.com/openecos-projects/icsprout55-pdk/releases/download/v2-2026.10.28/v2-docs.tar.bz2)
from the [v2 Release](https://github.com/openecos-projects/icsprout55-pdk/releases/tag/v2-2026.10.28).
The archive contains paths relative to the repository root:

```sh
sha256sum --check release-docs.sha256
tar -xjf v2-docs.tar.bz2
sha256sum --check release-doc-files.sha256
```

`make download-docs` downloads the archive without extracting it. `make docs`
checks the archive checksum, extracts to a temporary directory, and checks all
65 PDF checksums before installing them. Successful installation removes the
downloaded archive. The Release also includes `DOCS.sha256` and `DOC-FILES.sha256`
for independent verification.
