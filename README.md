<div align="justify">

# ICsprout55 Open Source PDK

## Todo

- RAMs, DRC/LVS Rules, SPICE Models, PDN, RC, etc
- User Guide, Tutorials, Datasheets, etc

## Usage

Download the repository and obtain large files by executing make script (please install `bzip2` tool first).

```bash
git clone https://github.com/openecos-projects/icsprout55-pdk
cd icsprout55-pdk
make unzip
```

If you cannot download large files, try the following command (make script use `curl` as the default tool).

```bash
make unzip TOOL=wget
```

If your download process is very slow, try the following command to speed up.

```bash
make unzip PROXY_USE=true
```

```bash
make unzip PROXY_USE=true TOOL=wget
```

## Introduction

The **ICsprout 55nm Open Source PDK** (ICS55 for short) is an open source [Process Design Kit](https://en.wikipedia.org/wiki/Process_design_kit) independently developed by ICsprout Integrated Circuit Co., Ltd. (hereinafter referred to as ICsprout) and College of Integrated Circuits Zhejiang University, and released in October 2025 with the assistance of **ECOS Team, Institute of Computing Technology, Chinese Academy of Sciences (hereinafter referred to as ECOS Team).** A significant breakthrough in the global open source chip ecosystem, **ICS55 represents the industry's most advanced open source process node at the time of its release**. Built on mature 55nm CMOS process technology, it provides a complete and production-proven design rule files, device models, standard cell libraries, and parameterized cells. It fully supports the backend physical design flow of digital integrated circuits, including key steps such as logic synthesis, place and route, and physical verification, etc. Ultimately, it can be taped out on ICsprout's own production lines.

The open-source release of ICS55 revolutionizes the traditional challenges of **high barriers and high costs** in chip design. By providing universities, research institutions, and the open-source community with a complete path from chip design to tapeout, it empowers researchers and developers to transform their wildest ideas into physical silicon. Furthermore, thanks to the advanced nature of the 55nm process node within the open-source chip field, the complexity and flexibility of future open-source chip designs will be significantly enhanced, providing a powerful boost to the development of an open-source chip ecosystem and the cultivation of chip talent.

<p align="center">
    <a href="http://www.icsprout.com" target="_blank">
        <img alt="" src="https://raw.githubusercontent.com/openecos-projects/website-res/main/img/pdk/icsprout.webp" width="45%" align="middle">
    </a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="https://ic.zju.edu.cn" target="_blank">
        <img alt="" src="https://raw.githubusercontent.com/openecos-projects/website-res/main/img/pdk/zjuic.webp" width="50%" align="middle">
    </a>
</p>

## Status

</div>

> [!WARNING]
> ICsprout currently offers the PDK contents as a preview release only!

<div align="justify">

ICS55 is currently still in the development verification and iterative optimization phase and has not yet passed full silicon testing and reliability certification. **Therefore, it is strictly prohibited for use in any form of commercial mass production tapeout projects!** According to internal decisions by ICsprout and ECOS Team, the first engineering batch tapeout shuttle of ICS55 is tentatively scheduled for December 2025. The data obtained from this tapeout will provide critical data for evaluating the PDK's process performance and reliability. Furthermore, it is important to note that **​​even after multiple successful tapeouts in the future, there is still no guarantee that the PDK has reached commercial mass production.** For the foreseeable future, ICS55 will only support small-batch test tapeouts for talent development and academic research. Currently, the ECOS Team is closely collaborating with ICsprout to continuously fix and optimize potential issues in ICS55, and is committed to improving its compatibility and stability with mainstream open source EDA tool chains. We sincerely thanks global open source communities for their continued attention and support, and will promptly share the latest progress of ICS55 with communities after the first round of tapeout.

## Contents

The ICsprout55 Open Source PDK contents:

```
├── IP
│   ├── IO
│   │   └── ICsprout_55LLULP1233_IO_251013   # Specific IO library
│   │       ├── cdl
│   │       ├── cell_list
|   |       |── doc
|   |       |── gds
│   │       ├── lef
│   │       ├── liberty
│   │       └── verilog
│   └── STD_cell                             # Standard cell library
│       └── ics55_LLSC_H7C_V1p10C100         # 55nm LLSC H7C standard cell library version 1.10
│           ├── ics55_LLSC_H7CH              # HVT standard cells
│           │   ├── cdl
│           │   ├── cell_list
│           │   ├── doc
│           │   ├── gds
│           │   ├── lef
│           │   ├── liberty
│           │   └── verilog
│           ├── ics55_LLSC_H7CL              # LVT standard cells
│           │   ├── cdl
│           │   ├── cell_list
│           │   ├── doc
│           │   ├── gds
│           │   ├── lef
│           │   ├── liberty
│           │   └── verilog
│           └── ics55_LLSC_H7CR              # RVT standard cells
│               ├── cdl
│               ├── cell_list
│               ├── doc
│               ├── gds
│               ├── lef
│               ├── liberty
│               └── verilog
└── prtech                                   # Place & Route technology files
    └── techLEF
```

## About

### ICsprout

ICsprout is a semiconductor foundry co-founded in 2021 by the Zhejiang Provincial Government and Zhejiang University. Leveraging an advanced 12-inch wafer pilot line, the company has built a process portfolio covering multiple nodes and categories. **​It not only offers mature 180nm and 55nm CMOS processes but also possesses specialized process capabilities such as 55nm embedded Flash (eFlash) and 180nm BCD (Bipolar-CMOS-DMOS)​**, these can extensively meet diverse manufacturing needs for analog, mixed-signal, power devices, IoT chips, etc. As a rising star and key player in China's domestic semiconductor ecosystem, ICsprout is actively promoting in-depth communication and collaboration among universities, research institutions, and open source communities in the fields of open source PDK and chip foundry services. Guided by the principles of ​​**open-source sharing**​​ and **​​independent innovation​**​, the company is committed to building a comprehensive technology platform centered on talent development and scientific research , contributing significantly to addressing the shortage of semiconductor talent and leading the development of the open source chip ecosystem.

### ECOS Team

ECOS Team's name, derived from the initials of EDA, Chip, OneStudentOneChip, and System, also represents the first four letters of Ecosystem, signifying "ecosystem". The ECOS Team was formed by the merger of the original "One Student One Chip" Team and the original "iEDA" Team. Its members primarily come from the [Frontier System Laboratory, Center for Advanced Computer Systems, Institute of Computing Technology, Chinese Academy of Sciences](https://acs.ict.ac.cn/english) and [Beijing Institute of Open Source Chip](https://www.bosc.ac.cn), etc. ECOS Team are committed to building open-source chip design solutions and its supporting technology ecosystem, using the concept of **"open source"** to innovate chip design methods, and realizing the ultimate vision of **"lowering the threshold of chip design with open source and empowering thousands of industries".**

## Contribution

The ICsprout and ECOS Team sincerely invite open source teams, experts, scholars, and enthusiasts from fields such as open source PDKs, open source EDA tools, digital IP and SoC design, backend design flows, and chip design cloud platforms to participate in the subsequent iterations and optimizations of ICS55. **We firmly believe that the successful experience of cross-domain, multi-party collaboration worldwide is applicable not only to open-source software but also to hardcore projects like open-source PDKs.​** ​Therefore, if you are passionate about this or have any questions or valuable ideas, please do not hesitate to contact us at any time. Thank you! Finally, **the ​ICsprout and ECOS Team express their highest respect to the pioneers of open-source PDKs (such as SkyWater/Google, GlobalFoundries/Google, IHP, etc.) for their outstanding contributions to the development of open-source chips!** We will do our best to apply the valuable experiences we have learned from them to the maintenance of ICS55, so that more people can freely and cost-effectively complete chip design using the 55nm process.

ICS55 is licensed under the Apache 2.0 Open Source License, which primarily **allows users to modify the code and use it as either closed-source or open-source products (i.e., commercially friendly). However, it requires that copyright, patent, trademark, and attribution notices in the original code be retained when distributing the software, and that the modifications be noted in the header comments of the modified files.** The release, use, and distribution of ICS55 are governed by the terms of the [Apache 2.0 Open Source License](https://github.com/openecos-projects/icsprout55-pdk/blob/main/LICENSE). To strictly comply with the license requirements and ensure legal enforceability extends to every component file, each source file in ICS55 contains an Apache 2.0 license header information. **This measure is intended to provide clear licensing guidance to all users, ensuring that they can freely use, modify, and distribute the relevant design files in compliance with the terms of the license.**

```
Copyright 2025 ICsprout Integrated Circuit Co., Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

## Contact Us

| Name | Company | E-mail | Roles |
| - | - | - | - |
| ECOS Team | Institute of Computing Technology, Chinese Academy of Sciences | [ecos-all@ict.ac.cn](mailto:ecos-all@ict.ac.cn) | Project management, Document maintenance |

</div>
