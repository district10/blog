---
title: Probability and Statistics
date: 2016-05-02
keywords:
tags:
    - math
    - probability
    - statistics
...

Probability and Statistics
==========================

MISC Notes

  - 全概率：原因 -> 结果
  - 贝叶斯：结果 -> 原因
  - P(A|B) > P(A)
  - P(A|B) = P(A)
  - P(A|B) < P(A)
  - 相关（线性相关）

Probability theory

:   Probability theory is the branch of mathematics concerned with probability,
    the analysis of random phenomena. The central objects of probability theory
    are random variables, stochastic processes, and events: mathematical
    abstractions of non-deterministic events or measured quantities that may
    either be single occurrences or evolve over time in an apparently random
    fashion.

    Classical definition

    Modern definition

    :   (Discrete) The modern definition starts with a finite or countable set
        called the **sample space**, which relates to the set of all possible
        outcomes in classical sense, denoted by $\Omega$. It is then assumed
        that for each element $x \in \Omega\,$, an intrinsic "probability"
        value $f(x)\,$ is attached, which satisfies the following properties:

          - $f(x)\in[0,1]\mbox{ for all }x\in \Omega\,$;
          - $\sum_{x\in \Omega} f(x) = 1\,$.

        (Continuous) If the outcome space of a random variable X is the set of
        real numbers ($\mathbb{R}$) or a subset thereof, then a function called
        the cumulative distribution function (or cdf) $F\,$ exists, defined by
        $F(x) = P(X\le x) \,$. That is, $F(x)$ returns the probability that X will
        be less than or equal to x.

        The cdf necessarily satisfies the following properties.

          - $F\,$ is a monotonically non-decreasing, right-continuous function;
          - $\lim_{x\rightarrow -\infty} F(x)=0\,$;
          - $\lim_{x\rightarrow \infty} F(x)=1\,$.

    Classical probability distributions

    :   Certain random variables occur very often in probability theory because
        they well describe many natural or physical processes. Their
        distributions therefore have gained special importance in probability
        theory. Some fundamental discrete distributions are the discrete uniform,
        Bernoulli, binomial, negative binomial, Poisson and geometric
        distributions. Important continuous distributions include the
        continuous uniform, normal, exponential, gamma and beta distributions.

Uniform distribution (discrete)

:   The discrete uniform distribution itself is inherently non-parametric. It
    is convenient, however, to represent its values generally by an integer
    interval [a,b], so that a,b become the main parameters of the distribution
    (often one simply considers the interval [1,n] with the single parameter
    n).  With these conventions, the cumulative distribution function (CDF) of
    the discrete uniform distribution can be expressed, for any k ∈ [a,b], as

    $$F(k;a,b)=\frac{\lfloor k \rfloor -a + 1}{b-a+1}$$

    pmf & CDF

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Uniform_discrete_pmf_svg.svg/488px-Uniform_discrete_pmf_svg.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Dis_Uniform_distribution_CDF.svg/488px-Dis_Uniform_distribution_CDF.svg.png){width=45%}

    --------    ----------------------------------
    pmf         $\frac{1}{n}$
    CDF         $\frac{\lfloor k \rfloor -a+1}{n}$
    Mean        $\frac{a+b}{2}\,$
    Variance    $\frac{(b-a+1)^2-1}{12}$
    --------    ----------------------------------

Probability mass function

Cumulative distribution function

Bernoulli distribution

:   If X is a random variable with this distribution, we have:

    $$\Pr(X=1) = 1 - \Pr(X=0) = 1 - q = p.\!$$

    The probability mass function f of this distribution, over possible outcomes k, is

    $$f(k;p) = \begin{cases} p & \text{if }k=1, \\[6pt] 1-p & \text {if }k=0.\end{cases}$$

    This can also be expressed as

    $$f(k;p) = p^k (1-p)^{1-k}\!\quad \text{for }k\in\{0,1\}.$$

    The Bernoulli distribution is a special case of the binomial distribution with n = 1.

    -------------------   ---------------------------------------------------------------------------------
    Parameters            0<p<1, $p\in\mathbb{R}$
    Support               $k \in \{0,1\}\,$
    pmf                   $\begin{cases} q=(1-p) & \text{for }k=0 \\ p & \text{for }k=1 \end{cases}$
    CDF                   $\begin{cases} 0 & \text{for }k<0 \\ 1 - p & \text{for }0\leq k<1 \\ 1 & \text{for }k\geq 1 \end{cases}$
    Mean                  $p\,$
    Median                $\begin{cases} 0 & \text{if } q > p\\ 0.5 & \text{if } q=p\\ 1 & \text{if } q<p \end{cases}$
    Mode                  $\begin{cases} 0 & \text{if } q > p\\ 0, 1 & \text{if } q=p\\ 1 & \text{if } q < p \end{cases}$
    Variance              $p(1-p) (=pq)\,$
    Skewness              $\frac{1-2p}{\sqrt{pq}}$
    Ex. kurtosis          $\frac{1-6pq}{pq}$
    Entropy               $-q\ln(q)-p\ln(p)\,$
    MGF                   $q+pe^t\,$
    CF                    $q+pe^{it}\,$
    PGF                   $q+pz\,$
    Fisher information    $\frac{1}{p(1-p)}$
    -------------------   ---------------------------------------------------------------------------------

Binomial distribution

:   In probability theory and statistics, the binomial distribution with
    parameters n and p is the discrete probability distribution of the number
    of successes in a sequence of n independent yes/no experiments, each of
    which yields success with probability p. A success/failure experiment is
    also called a Bernoulli experiment or Bernoulli trial; when n = 1, the
    binomial distribution is a Bernoulli distribution. The binomial
    distribution is the basis for the popular binomial test of statistical
    significance.

    pdf & CDF

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Binomial_distribution_pmf.svg/450px-Binomial_distribution_pmf.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Binomial_distribution_cdf.svg/450px-Binomial_distribution_cdf.svg.png){width=45%}

    ----------------------      --------------------------------------------------------------------------
    Parameters                  n ∈ N0 — number of trials, p ∈ [0,1] — success probability in each trial
    Support                     $k ∈ { 0, …, n }$ — number of successes
    pmf                         $\textstyle {n \choose k}\, p^k (1-p)^{n-k}$
    CDF                         $\textstyle I_{1-p}(n - k, 1 + k)$
    Mean                        $np$
    Median                      $\lfloor np \rfloor or \lceil np \rceil$
    Mode                        $\lfloor (n + 1)p \rfloor or \lceil (n + 1)p \rceil - 1$
    Variance                    $np(1 - p)$
    Skewness                    $\frac{1-2p}{\sqrt{np(1-p)}}$
    Ex. kurtosis                $\frac{1-6p(1-p)}{np(1-p)}$
    Entropy                     $\frac12 \log_2 \big( 2\pi e\, np(1-p) \big) + O \left( \frac{1}{n} \right)$ in shannons. For nats, use the natural log in the log.
    MGF                         $(1-p + pe^t)^n \!$
    CF                          $(1-p + pe^{it})^n \!$
    PGF                         $G(z) = \left[(1-p) + pz\right]^n.$
    Fisher information          $g_n(p) = \frac{n}{p(1-p)} (for fixed n)$
    ----------------------      --------------------------------------------------------------------------

    Poisson approximation

    :   the Poisson distribution with parameter λ = np can be used as an
        approximation to B(n, p) of the binomial distribution if n is sufficiently
        large and p is sufficiently small.

    Limiting distributions

       - **Poisson limit theorem**: As n approaches ∞ and p approaches 0, then the
         Binomial(n, p) distribution approaches the Poisson distribution with
         expected value λ

       - **de Moivre–Laplace theorem**: As n approaches ∞ while p remains fixed, the distribution of
         $$\frac{X-np}{\sqrt{np(1-p)}}$$

         approaches the normal distribution with expected value 0 and variance
         1. This result is sometimes loosely stated by saying that the
         distribution of X is asymptotically normal with expected value np and
         variance np(1 − p). This result is a specific case of the central
         limit theorem.

Poisson limit theorem

:   The law of rare events or Poisson limit theorem gives a Poisson
    approximation to the binomial distribution, under certain conditions.
    The theorem was named after Siméon Denis Poisson (1781–1840).

    If

    $$n \rightarrow \infty, p \rightarrow 0, \text{such that} np \rightarrow \lambda$$

    then

    $$\frac{n!}{(n-k)!k!} p^k (1-p)^{n-k} \rightarrow e^{-\lambda}\frac{\lambda^k}{k!}.$$

Negative binomial distribution

:   Different texts adopt slightly different definitions for the negative binomial
    distribution. They can be distinguished by whether the support starts at k = 0
    or at k = r, whether p denotes the probability of a success or of a failure,
    and whether r represents success or failure, so it is crucial to identify
    the specific parametrization used in any given text.

    ---------           ----------------------
    Notation            $\mathrm{NB}(r,\,p)$
    Parameters          r > 0 — number of failures until the experiment is stopped, p ∈ (0,1) — success probability in each experiment (real)
    Support             k ∈ { 0, 1, 2, 3, … } — number of successes
    pmf                 ${k+r-1 \choose k}\cdot (1-p)^r p^k,\!$ involving a binomial coefficient[^neg-binom-pmf]
    CDF                 $1-I_p(k+1,\,r)$, the regularized incomplete beta function
    Mean                $\frac{pr}{1-p}$
    Mode                $\begin{cases}\big\lfloor\frac{p(r-1)}{1-p}\big\rfloor & \text{if}\ r>1 \\ 0 & \text{if}\ r\leq 1\end{cases}$
    Variance            $\frac{pr}{(1-p)^2}$
    Skewness            $\frac{1+p}{\sqrt{pr}}$
    ---------           ----------------------

    Suppose there is a sequence of independent Bernoulli trials. Thus, each
    trial has two potential outcomes called “success” and “failure”. In each
    trial the probability of success is p and of failure is (1 − p). We are
    observing this sequence until a predefined number r of failures has
    occurred. Then the random number of successes we have seen, X, will have
    the negative binomial (or Pascal) distribution:

    $$X\sim\operatorname{NB}(r; p)$$

[^neg-binom-pmf]: $$\binom{k+r-1}{k} = \frac{(k+r-1)!}{k!\,(r-1)!} = \frac{(k+r-1)(k+r-2)\dotsm(r)}{k!}.$$

    see more at [Binomial coefficient - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Binomial_coefficient).

Poisson distribution

:   Poisson distribution (`/ˈpwɑːsɒn/`), named after French mathematician
    Siméon Denis Poisson, is a discrete probability distribution that expresses
    the probability of a given number of events occurring in a fixed interval
    of time and/or space if these events occur with a known average rate and
    independently of the time since the last event.[1] The Poisson distribution
    can also be used for the number of events in other specified intervals such
    as distance, area or volume.


    ![**pmf**: The horizontal axis is the index k, the number of occurrences. λ is the
        expected value. The function is defined only at integer values of k. The
        connecting lines are only guides for the eye.](https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Poisson_pmf.svg/488px-Poisson_pmf.svg.png)

    ![**CDF**: The horizontal axis is the index k, the number of occurrences. The CDF is
        discontinuous at the integers of k and flat everywhere else because a variable
        that is Poisson distributed takes on only integer values.](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Poisson_cdf.svg/488px-Poisson_cdf.svg.png)

    A discrete random variable X  is said to have a Poisson distribution with
    parameter λ > 0, if, for k = 0, 1, 2, ..., the probability mass function of X
    is given by:

    $$\!f(k; \lambda)= \Pr(X = k)= \frac{\lambda^k e^{-\lambda}}{k!},$$

    The positive real number λ is equal to the expected value of X and also to its variance

    $$\lambda=\operatorname{E}(X)=\operatorname{Var}(X).$$

    -------------------     --------------------------------------------------------------------
    Parameters              $λ > 0 (real)$
    Support                 $k ∈ ℤ*$
    pmf                     $\frac{\lambda^k e^{-\lambda}}{k!}$
    CDF                     $\frac{\Gamma(\lfloor k+1\rfloor, \lambda)}{\lfloor k\rfloor !}$, or
                            $e^{-\lambda} \sum_{i=0}^{\lfloor k\rfloor} \frac{\lambda^i}{i!}$, or
                            $Q(\lfloor k+1\rfloor,\lambda)$ (for $k\ge 0$, where
                            $\Gamma(x, y)$ is the incomplete gamma function, $\lfloor k\rfloor$
                            is the floor function, and Q is the regularized gamma function)
    Mean                    $\lambda$
    Median                  $\approx\lfloor\lambda+1/3-0.02/\lambda\rfloor$
    Mode                    $\lceil\lambda\rceil - 1, \lfloor\lambda\rfloor$
    Variance                $\lambda$
    Skewness                $\lambda^{-1/2}$
    Ex. kurtosis            $\lambda^{-1}$
    Entropy                 $\lambda[1 - \log(\lambda)] + e^{-\lambda}\sum_{k=0}^\infty \frac{\lambda^k\log(k!)}{k!} (for large \lambda)$
                            $\frac{1}{2}\log(2 \pi e \lambda) - \frac{1}{12 \lambda} - \frac{1}{24 \lambda^2} - \qquad \frac{19}{360 \lambda^3} + O\left(\frac{1}{\lambda^4}\right)$
    MGF                     $\exp(\lambda (e^{t} - 1))$
    CF                      $\exp(\lambda (e^{it} - 1))$
    PGF                     $\exp(\lambda(z - 1))$
    Fisher information      $\lambda^{-1}$
    -------------------     --------------------------------------------------------------------

Geometric distribution

:   These two different geometric distributions should not be confused with
    each other. Often, the name shifted geometric distribution is adopted for
    the former one (distribution of the number X); however, to avoid ambiguity,
    it is considered wise to indicate which is intended, by mentioning the
    support explicitly.

    It’s the probability that the first occurrence of success requires k number
    of independent trials, each with success probability p. If the probability
    of success on each trial is p, then the probability that the kth trial (out
    of k trials) is the first success is

    $$\Pr(X = k) = (1-p)^{k-1}\,p\,$$

    for k = 1, 2, 3, ....

    The above form of geometric distribution is used for modeling the number of
    trials up to and including the first success. By contrast, the following
    form of the geometric distribution is used for modeling the number of
    failures until the first success:

    $$\Pr(Y=k) = (1 - p)^k\,p\,$$

    for k = 0, 1, 2, 3, ....

    pmf & CDF

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Geometric_pmf.svg/675px-Geometric_pmf.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Geometric_cdf.svg/675px-Geometric_cdf.svg.png){width=45%}

    ---------------------   ---------------------------------------------------    -------------------------------------------
    Parameters              0< p $\leq$ 1 success probability (real)               0< p $\leq$ 1 success probability (real)
    Support                 k trials where $k \in \{1,2,3,\dots\}\!$               k failures where $k \in \{0,1,2,3,\dots\}\!$
    pmf                     $(1 - p)^{k-1}\,p\!$                                   $(1 - p)^{k}\,p\!$
    CDF                     $1-(1 - p)^k\!$                                        $1-(1 - p)^{k+1}\!$
    Mean                    $\frac{1}{p}\!$                                        $\frac{1-p}{p}\!$
    Median                  $\left\lceil \frac{-1}{\log_2(1-p)} \right\rceil\!$    $\left\lceil \frac{-1}{\log_2(1-p)} \right\rceil\! - 1$
    Mode                    1                                                      0
    Variance                $\frac{1-p}{p^2}\!$                                    $\frac{1-p}{p^2}\!$
    Skewness                $\frac{2-p}{\sqrt{1-p}}\!$                             $\frac{2-p}{\sqrt{1-p}}\!$
    Excess kurtosis         $6+\frac{p^2}{1-p}\!$                                  $6+\frac{p^2}{1-p}\!$
    Entropy                 $\tfrac{-(1-p)\log_2 (1-p) - p \log_2 p}{p}\!$         $\tfrac{-(1-p)\log_2 (1-p) - p \log_2 p}{p}\!$
    mgf                     $\frac{pe^t}{1-(1-p) e^t}\!, for t<-\ln(1-p)\!$        $\frac{p}{1-(1-p)e^t}\!$
    Characteristic function $\frac{pe^{it}}{1-(1-p)\,e^{it}}\!$                    $\frac{p}{1-(1-p)\,e^{it}}\!$
    ---------------------   ---------------------------------------------------    -------------------------------------------

    The expected value of a geometrically distributed random variable X is 1/p and the variance is (1 − p)/p2:

    $$\mathrm{E}(X) = \frac{1}{p}, \qquad\mathrm{var}(X) = \frac{1-p}{p^2}.$$

Uniform distribution (continuous)

:   In probability theory and statistics, the continuous uniform distribution
    or rectangular distribution is a family of symmetric probability
    distributions such that for each member of the family, all intervals of the
    same length on the distribution's support are equally probable. The support
    is defined by the two parameters, a and b, which are its minimum and
    maximum values. The distribution is often abbreviated U(a,b). It is the
    maximum entropy probability distribution for a random variate X under no
    constraint other than that it is contained in the distribution's support.

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Uniform_Distribution_PDF_SVG.svg/375px-Uniform_Distribution_PDF_SVG.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Uniform_cdf.svg/375px-Uniform_cdf.svg.png){width=45%}

    -----------------       -----------------------------------------
    Notation                $\mathcal{U}(a, b) or \mathrm{unif}(a,b)$
    Parameters              $-\infty < a < b < \infty \,$
    Support                 $x \in [a,b]$
    PDF                     $\begin{cases} \frac{1}{b - a} & \text{for } x \in [a,b] \\ 0 & \text{otherwise} \end{cases}$
    CDF                     $\begin{cases} 0 & \text{for } x < a \\ \frac{x-a}{b-a} & \text{for } x \in [a,b) \\ 1 & \text{for } x \ge b \end{cases}$
    Mean                    $\tfrac{1}{2}(a+b)$
    Median                  $\tfrac{1}{2}(a+b)$
    Mode                    $any value in (a,b)$
    Variance                $\tfrac{1}{12}(b-a)^2$
    Skewness                0
    Ex. kurtosis            $-\tfrac{6}{5}$
    Entropy                 $\log(b-a) \,$
    MGF                     $\begin{cases} \frac{\mathrm{e}^{tb}-\mathrm{e}^{ta}}{t(b-a)} &\text{for } t \neq 0 \\ 1 &\text{for } t = 0 \end{cases}$
    CF                      $\frac{\mathrm{e}^{itb}-\mathrm{e}^{ita}}{it(b-a)}$
    -----------------       -----------------------------------------

Normal distribution

:   The probability density of the normal distribution is:

    $$f(x \; | \; \mu, \sigma^2) = \frac{1}{\sigma\sqrt{2\pi} } \; e^{ -\frac{(x-\mu)^2}{2\sigma^2} }$$

    Where:

      - $\mu$ is mean or expectation of the distribution (and also its median and mode).
      - $\sigma$ is standard deviation
      - $\sigma^2$ is variance

    pdf & CDF

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Normal_Distribution_PDF.svg/525px-Normal_Distribution_PDF.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Normal_Distribution_CDF.svg/525px-Normal_Distribution_CDF.svg.png){width=45%}

    -------------           -----------------------------------------------------------
    Notation                $\mathcal{N}(\mu,\,\sigma^2)$
    Parameters              $μ ∈ R — mean (location), σ2 > 0 — variance (squared scale)$
    Support                 $x ∈ R$
    PDF                     $\frac{1}{\sigma\sqrt{2\pi}}\, e^{-\frac{(x - \mu)^2}{2 \sigma^2}}$
    CDF                     $\frac12\left[1 + \operatorname{erf}\left( \frac{x-\mu}{\sigma\sqrt{2}}\right)\right]$
    Quantile                $\mu+\sigma\sqrt{2}\,\operatorname{erf}^{-1}(2F-1)$
    Mean                    μ
    Median                  μ
    Mode                    μ
    Variance                $\sigma^2\,$
    Skewness                0
    Ex. kurtosis            0
    Entropy                 $\tfrac12 \ln(2\pi\,e\,\sigma^2)$
    MGF                     $\exp\{ \mu t + \frac{1}{2}\sigma^2t^2 \}$
    CF                      $\exp \{ i\mu t - \frac{1}{2}\sigma^2 t^2 \}$
    Fisher information      $\begin{pmatrix}1/\sigma^2&0\\0&1/(2\sigma^4)\end{pmatrix}$
    -------------           -----------------------------------------------------------

    Standard normal distribution

    :   $$\phi(x) = \frac{e^{- \frac{\scriptscriptstyle 1}{\scriptscriptstyle 2} x^2}}{\sqrt{2\pi}}\,$$

    Standard deviation and tolerance intervals

    :   ![For the normal distribution, the values less than one standard deviation away
            from the mean account for 68.27% of the set; while two standard deviations
            from the mean account for 95.45%; and three standard deviations account for
            99.73%.](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Empirical_Rule.PNG/525px-Empirical_Rule.PNG)

        the probability that a normal deviate lies in the range μ − nσ and μ + nσ is given by

        $$F(\mu+n\sigma) - F(\mu-n\sigma) = \Phi(n)-\Phi(-n) = \mathrm{erf}\left(\frac{n}{\sqrt{2}}\right),$$

    refs and see also

      - [Monte Carlo method - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Monte_Carlo_method)

Exponential distribution

:   The exponential distribution (a.k.a. negative exponential distribution) is
    the probability distribution that describes the time between events in a
    Poisson process, i.e. a process in which events occur continuously and
    independently at a constant average rate. It is a particular case of the
    gamma distribution. It is the continuous analogue of the geometric
    distribution, and it has the key property of being memoryless. In addition
    to being used for the analysis of Poisson processes, it is found in various
    other contexts.

    The exponential distribution is not the same as the class of exponential
    families of distributions, which is a large class of probability
    distributions that includes the exponential distribution as one of its
    members, but also includes the normal distribution, binomial distribution,
    gamma distribution, Poisson, and many others.

    pdf & CDF

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Exponential_pdf.svg/488px-Exponential_pdf.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Exponential_cdf.svg/488px-Exponential_cdf.svg.png){width=45%}

    The probability density function (pdf) of an exponential distribution is

    $$
        f(x;\lambda) = \begin{cases} \lambda e^{-\lambda x} & x \ge 0, \\ 0 & x < 0. \end{cases}
    $$

    Alternatively, this can be defined using the right-continuous Heaviside step function, H(x) where H(0)=1:

    $$
        f(x;\lambda) = \mathrm \lambda e^{-\lambda x} H(x)
    $$

    -------------       ---------------------------
    Parameters          λ > 0 rate, or inverse scale
    Support             $x ∈ [0, ∞)$
    PDF                 $λ e−λx$
    CDF                 $1 − e−λx$
    Quantile            $-ln(1-F)/λ$
    Mean                $λ−1 (=β)$
    Median              $λ−1 ln(2)$
    Mode                0
    Variance            $λ−2 (=β2)$
    Skewness            2
    Ex. kurtosis        6
    Entropy             $log(e/λ)$
    MGF                 $\frac{\lambda}{\lambda-t}, \text{ for } t < \lambda$
    CF                  $\frac{\lambda}{\lambda-it}$
    Fisher information  $\lambda^{-2} $
    -------------       ---------------------------

Gamma distribution

:   In probability theory and statistics, the gamma distribution is a
    two-parameter family of continuous probability distributions. The common
    exponential distribution and chi-squared distribution are special cases of
    the gamma distribution. There are three different parametrizations in
    common use:

      - With a shape parameter k and a scale parameter θ.
      - With a shape parameter α = k and an inverse scale parameter β = 1/θ, called a rate parameter.
      - With a shape parameter k and a mean parameter μ = k/β.

    pdf & CDF

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Gamma_distribution_pdf.svg/488px-Gamma_distribution_pdf.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Gamma_distribution_cdf.svg/488px-Gamma_distribution_cdf.svg.png){width=45%}

    -----------     --------------------------------------------------------------------      -----------------------------------------------------------------------
    Parameters      $k > 0 shape, θ > 0 scale$                                                $α > 0 shape, β > 0 rate$
    Support         $\scriptstyle x \;\in\; (0,\, \infty)$                                    $\scriptstyle x \;\in\; (0,\, \infty)$
    pdf             $\frac{1}{\Gamma(k) \theta^k} x^{k \,-\, 1} e^{-\frac{x}{\theta}}$        $\frac{\beta^\alpha}{\Gamma(\alpha)} x^{\alpha \,-\, 1} e^{- \beta x }[1]$
    CDF             $\frac{1}{\Gamma(k)} \gamma\left(k,\, \frac{x}{\theta}\right)$            $\frac{1}{\Gamma(\alpha)} \gamma(\alpha,\, \beta x)$
    Mean            $\scriptstyle \mathbf{E}[ X] = k \theta$                                  $\scriptstyle\mathbf{E}[ X] = \frac{\alpha}{\beta}$
                    $\scriptstyle \mathbf{E}[\ln X] = \psi(k) +\ln(\theta)$                   $\scriptstyle \mathbf{E}[\ln X] = \psi(\alpha) -\ln(\beta)$
    Median          No simple closed form                                                   $No simple closed form$
    Mode            $\scriptstyle (k \,-\, 1)\theta \text{ for } k \;{\geq}\; 1$              $\scriptstyle \frac{\alpha \,-\, 1}{\beta} \text{ for } \alpha \;{\geq}\; 1$
    Variance        $\scriptstyle\operatorname{Var}[ X] = k \theta^2$                         $\scriptstyle \operatorname{Var}[ X] = \frac{\alpha}{\beta^2}$
                    $\scriptstyle\operatorname{Var}[\ln X] = \psi_1(k)$                       $\scriptstyle\operatorname{Var}[\ln X] = \psi_1(\alpha)$
    Skewness        $\scriptstyle \frac{2}{\sqrt{k}}$                                         $\scriptstyle \frac{2}{\sqrt{\alpha}}$
    Excess kurtosis $\scriptstyle \frac{6}{k}$                                                $\scriptstyle \frac{6}{\alpha}$
    -----------     --------------------------------------------------------------------      -----------------------------------------------------------------------

Beta distribution

:   In probability theory and statistics, the beta distribution is a family of
    continuous probability distributions defined on the interval `[0, 1]`
    parametrized by two positive shape parameters, denoted by α and β, that
    appear as exponents of the random variable and control the shape of the
    distribution.

    The beta distribution has been applied to model the behavior of random
    variables limited to intervals of finite length in a wide variety of
    disciplines. For example, it has been used as a statistical description of
    allele frequencies in population genetics; time allocation in project
    management / control systems; sunshine data; variability of soil
    properties; proportions of the minerals in rocks in stratigraphy; and
    heterogeneity in the probability of HIV transmission.

    In Bayesian inference, the beta distribution is the conjugate prior
    probability distribution for the Bernoulli, binomial, negative binomial and
    geometric distributions. For example, the beta distribution can be used in
    Bayesian analysis to describe initial knowledge concerning probability of
    success such as the probability that a space vehicle will successfully
    complete a specified mission. The beta distribution is a suitable model for
    the random behavior of percentages and proportions.

    The usual formulation of the beta distribution is also known as the beta
    distribution of the first kind, whereas beta distribution of the second
    kind is an alternative name for the beta prime distribution.

    pdf & CDF

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Beta_distribution_pdf.svg/488px-Beta_distribution_pdf.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Beta_distribution_cdf.svg/488px-Beta_distribution_cdf.svg.png){width=45%}

    -----------------       ---------------------------------------------
    Notation                Beta(α, β)
    Parameters              α > 0 shape (real), β > 0 shape (real)
    Support                 $x \in (0, 1)\!$
    PDF                     $\frac{x^{\alpha-1}(1-x)^{\beta-1}} {\Beta(\alpha,\beta)}\!$  where $\Beta(\alpha,\beta) = \frac{\Gamma(\alpha)\Gamma(\beta)}{\Gamma(\alpha + \beta)}$
    CDF                     $I_x(\alpha,\beta)\!$
    Mean                    $\operatorname{E}[X] = \frac{\alpha}{\alpha+\beta}\!$, $\operatorname{E}[\ln X] = \psi(\alpha) - \psi(\alpha + \beta)\!$
    Median                  $\begin{matrix}I_{\frac{1}{2}}^{[-1]}(\alpha,\beta)\text{ (in general) }\\[0.5em] \approx \frac{ \alpha - \tfrac{1}{3} }{ \alpha + \beta - \tfrac{2}{3} }\text{ for }\alpha, \beta >1\end{matrix}$
    Mode                    $\frac{\alpha-1}{\alpha+\beta-2}\!$ for α, β >1
    Variance                $\operatorname{var}[X] = \frac{\alpha\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}\!$, $\operatorname{var}[\ln X] = \psi_1(\alpha) - \psi_1(\alpha + \beta)\!$
    Skewness                $\frac{2\,(\beta-\alpha)\sqrt{\alpha+\beta+1}}{(\alpha+\beta+2)\sqrt{\alpha\beta}}$
    Ex. kurtosis            $\frac{6[(\alpha - \beta)^2 (\alpha +\beta + 1) - \alpha \beta (\alpha + \beta + 2)]}{\alpha \beta (\alpha + \beta + 2) (\alpha + \beta + 3)}$
    Entropy                 $\begin{matrix}\ln\Beta(\alpha,\beta)-(\alpha-1)\psi(\alpha)-(\beta-1)\psi(\beta)\\[0.5em] +(\alpha+\beta-2)\psi(\alpha+\beta)\end{matrix}$
    MGF                     $1 +\sum_{k=1}^{\infty} \left( \prod_{r=0}^{k-1} \frac{\alpha+r}{\alpha+\beta+r} \right) \frac{t^k}{k!}$
    CF                      ${}_1F_1(\alpha; \alpha+\beta; i\,t)\!$
    Fisher information      $\begin{matrix}\\ \operatorname{var}[\ln X] &\operatorname{cov}[\ln X, \ln(1-X)] \\ \operatorname{cov}[\ln X, \ln(1-X)] & \operatorname{var}[\ln (1-X)]\end{matrix}$
    -----------------       ---------------------------------------------

Tolerance interval

:   A tolerance interval is a statistical interval within which, with some
    confidence level, a specified proportion of a sampled population falls.

    "More speciﬁcally, a 100×p%/100×(1−α) tolerance interval provides limits
    within which at least a certain proportion (p) of the population falls with
    a given level of conﬁdence (1−α)."

    "A (p, 1−α) tolerance interval (TI) based on a sample is constructed so
    that it would include at least a proportion p of the sampled population
    with conﬁdence 1−α; such a TI is usually referred to as p-content −(1−α)
    coverage TI."

    "A (p, 1−α) upper tolerance limit (TL) is simply an 1−αupper confidence
    limit for the 100 p percentile of the population."

    A tolerance interval can be seen as a statistical version of a probability
    interval. "In the parameters-known case, a 95% tolerance interval and a 95%
    prediction interval are the same." If we knew a population's exact
    parameters, we would be able to compute a range within which a certain
    proportion of the population falls. For example, if we know a population is
    normally distributed with mean \mu and standard deviation \sigma, then the
    interval \mu \pm 1.96\sigma includes 95% of the population (1.96 is the
    z-score for 95% coverage of a normally distributed population).

---

refs and see also

  - [Bernoulli distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Bernoulli_distribution)
  - [Beta distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Beta_distribution)
  - [Binomial distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Binomial_distribution)
  - [Exponential distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Exponential_distribution)
  - [Gamma distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Gamma_distribution)
  - [Negative binomial distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Negative_binomial_distribution)
  - [Normal distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Normal_distribution)
  - [Poisson distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Poisson_distribution)
  - [Poisson limit theorem - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Poisson_limit_theorem)
  - [Probability - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Probability)
  - [Probability theory - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Probability_theory)
  - [Tolerance interval - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Tolerance_interval)
  - [Uniform distribution (continuous) - Wikipedia, the free encyclopedia]
  - [Uniform distribution (discrete) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Uniform_distribution_(discrete))

[Uniform distribution (continuous) - Wikipedia, the free encyclopedia]: https://en.wikipedia.org/wiki/Uniform_distribution_(continuous)
