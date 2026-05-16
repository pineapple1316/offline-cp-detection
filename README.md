# Efficient change point detection and estimation in high-dimensional correlation matrices
This paper considers the problems of detecting a change point and estimating the location in the correlation matrices of a sequence of high dimensional vectors, where the dimension is large enough to be comparable
to the sample size or even much larger. A new break test is proposed based on signflip parallel analysis to detect the existence of change points. Furthermore, a two-step approach combining a signflip permutation dimension
reduction step and a CUSUM statistic is proposed to estimate the change point’s location and recover the support of changes. The consistency of the estimator is constructed. Simulation examples and real data applications illustrate the superior empirical performance of the proposed methods. Especially, the proposed methods outperform existing ones for non-Gaussian data and the change point in the extreme tail of a sequence and become more accurate as the dimension p increases. Supplementary materials for this article are available online.

We propose a threshold selection procedure based on signflip parallel analysis. When there is no change point, the statistics based on $\boldsymbol{w}$ and $\tilde{\boldsymbol{w}}$ exhibit similar patterns. In contrast, when a change point exists, $\boldsymbol{w}$ is consistently larger than $\tilde{\boldsymbol{w}}$. We also observe that $\tilde{\boldsymbol{w}}$ remains stable regardless of whether a change point exists, suggesting that the signflip procedure can break the correlation-change signal.
<img width="571" height="261" alt="image" src="https://github.com/user-attachments/assets/02ac608b-6222-44a7-b355-3d63f7a93162" />


# Reference
If you find the code useful for your research, please consider citing
```bibtex
@article{li2024efficient,
  title={Efficient change point detection and estimation in high-dimensional correlation matrices},
  author={Li, Zhaoyuan and Gao, Jie},
  journal={Electronic Journal of Statistics},
  volume={18},
  number={1},
  pages={942--979},
  year={2024},
  publisher={The Institute of Mathematical Statistics and the Bernoulli Society}
}
```
This work is built upon some previous papers which might also interest you:

Dette, H., G. Pan, and Q. Yang. 2022. “Estimating a change point in a sequence of very high-dimensional covariance matrices.” Journal of the American Statistical Association 117(537): 444–454.

Cabrieto, J., F. Tuerlinckx, P. Kuppens, F.H. Wilhelm, M. Liedlgruber, and E. Ceulemans. 2018. “Capturing correlation changes by applying kernel change point detection on the running correlations.” Information Sciences 447: 117–139.

Hong, D., Sheng, Y. and Dobriban, E. (2020). Selecting the number of components in PCA via random signflips. arXiv preprint arXiv:2012.02985.
