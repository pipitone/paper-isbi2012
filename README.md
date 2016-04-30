How many atlases do you really need for accurate multi-atlas segmentation?
--------------------------------------------------------------------------
Authors: Jon Pipitone, Jason P. Lerch, Miriam Friedel, Aristotle N. Voineskos, M. Mallar Chakravarty 

Abstract:

> Neuroimaging research often relies on automated anatomical segmentations of
> MR images of the brain. Current multi-atlas based approaches provide accurate
> segmentations of brain images by propagating manually derived segmentations
> of specific neuroanatomical structures to unlabelled data. These approaches
> often rely on a large number of such manually segmented atlases that take
> significant time and expertise to produce. We present an algorithm for the
> automatic segmentation of the hippocampus that minimizes the number of
> atlases needed while still achieving similar accuracy to multi-atlas
> approaches. We perform repeated random subsampling validation on the
> International Brain Segmentation Repository (IBSR) dataset to compare our
> approach to basic multi-atlas segmentation using the full IBSR dataset, and
> to single-atlas (model-based) segmentation. Our results show that with only 8
> input atlases, MAGeT brain can achieve to within 2.0% segmentation accuracy
> of the basic multi-atlas approach using 17 input atlases (mean κ = 0.775 vs.
> κ = 0.791). These results compare favourably to those of other investigators
> who have used the IBSR data for validation.

This paper was submitted to ISBR 2012, but was not accepted.

To build this paper, you will need a LaTeX distribution, R, and the R knitr and
ggplot2 packages. On Ubuntu 14.04, this will get you started:

```
    $ sudo apt-get install texlive-latex-base texlive-latex-extra \
        texlive-fonts-extra texlive-fonts-recommended r-core r-cran-plyr \
        r-cran-ggplot2
    $ echo "install.packages('knitr')" | R
    $ make clean && make
```
