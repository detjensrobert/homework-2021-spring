---
header-includes:
- \usepackage{setspace}
- \doublespacing
fontsize: 11pt

title: Analysis of Unethical Commits to the Linux Kernel from the University of Minnesota
date: 21 April 2021
author: Robert Detjens

bibliography: hw1.bib
csl: apa.csl
---

# Description of Events

On April 7, 2021, Aditya Pakki, a researcher from the University of Minnesota, posted a patch to the `Linux-NFS`
mailing list that supposedly fixes a possible double `free()` [@bad-patch]. Upon inspection and review by the kernel
maintainers, namely J. Bruce Fields, Trond Myklebust, and Greg Kroah-Hartman, the patch was found to be invalid and was
attempting to fix an issue that was not possible to have happen.

Kroah-Hartman went on to fruther call out Pakki and their supervising research professor Kangjie Lu for submitting
"known-invalid" patches, ultimately deciding to ban any further patches from a University of Minnesota email address,
as patches submitted from them were "submitted in bad-faith with the intent to cause problems" [@ban-response].
Kroah-Hartman further decided to revert all previous patches accepted into the kernel source tree for the same reason
[@revert-announcement].

Previously, Lu and other researchers and grad students have attempted to introduce known-buggy patches as part of
previous research efforts including an unpublished paper [@hypocrite-commits]. Vulnerable patches were accepted into
the kernel despite the paper claiming "[they] did not introduce or intend to introduce any bug or vulnerability in the
Linux kernel" [@hypocrite-commits].

Some drawbacks of the decision to ban and revert all commits from `@umn.edu` addresses included the possibility that
some patches submitted were in fact legitimate and correctly identified and fixed a bug, or if a different department
has some legitimate patch to propose. However, pending a more in-depth investigation and review as part of the ban and
revert announcement, reverting all of the patches assuming that they were all submitted with intent to introduce
vulnerabilities will improve the security of the kernel.

# Analysis via Ethical Theories

## Utilitarianism

Under Utilitarianism, an action is "right" if it serves to increase the utility of the whole. Using this with respect
to these intentionally bad patches, the end result is a net decrease in utility. Security vulnerabilities introduced
into the Linux kernel have the possibility to affect billions of devices with the widespread ubiquity of Linux across
countless platforms. The outcome of proposing these patches was ultimately negative, as not only are new
vulnerabilities a problem, but all patches from the submitting party were reverted and removed from the source tree.
This provides extra burden on the maintainers, as their time is spent dealing with the revert and fallout instead of
reviewing new patches and other maintainer tasks.

## Kantianism

Under Kantianism, an action is "right" if it follows universal moral rules; examples of which include *follow moral
rules that you think everyone should adopt* and *respect other people as people equal to yourself and not as a means to
an end*. Motivation is greatly important, as that is the main factor for deciding the moral worth of an action.

The motivation behind the series of trojan commits appears to be to draw attention to the ease at which "hypocrite
commits" can be introduced to software when proposing patches [@hypocrite-faq]. This is an admiral goal, as improving
the security of software benefits all users of said software. The researchers in question here are looking to improve
the state of the kernel by introducing these malicious patches and publishing their findings to call attention to the
flaws in the process.

## ACM Code of Ethics

Evaluating the malicious patches and resulting exchange in accordance with the ACM Code of Ethics reveals two
violations:

- 1.2 Avoid harm

  Although submitted with the intent to revoke, some of these patches were approved and introduced into the kernel
  source tree. Knowingly letting these patches in -- ergo, knowingly introducing insecure code into the kernel -- does
  harm to the kernel and violates this clause.

- 1.3 Be honest and trustworthy

  As patches submitted by the University of Minnesota researchers were done so under the guise of legitimate patches
  and were not wholly disclosed to maintainers after the fact, this breaks the trust that the kernel community has in
  patch submitters that submitted patches are acting in good faith to improve the kernel.

# Future Impacts

There has been discussion around what to do when accepting trivial patches in the kernel sparked by the malicious
patches proposed by the University of Minnesota researchers. Proposed changes to the patch review processes discussed
in the Linux Kernel Maintainer Summit mailing list [@trivial-patches] include looking at trivial patches with greater
scrutiny and requiring patches that fix bugs to link to the corresponding bug report or static checker report.

University of Minnesota's Institutional Review Board may also undergo some changes as to what they consider "human
testing". The IRB reviewed the research study that the malicious commits were a part of and found that it was not human
research and issued an exemption letter [@hypocrite-faq]. However, Wu and Lu were urged to get a further review from
their IRB upon publishing the abstract of @hypocrite-commits prior to the intended release of the full paper later this
year.

$\pagebreak$

# References

::: {#refs}
:::
