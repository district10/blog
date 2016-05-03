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
  - binomial, `[baɪ'nomɪəl]`
  - bernoulli, `[bə:'nu:li]`
  - poisson, `/ˈpwɑːsɒn/`
  - deviation, `['divɪ'eʃən]`

Probability theory

:   Probability theory is the branch of mathematics concerned with probability,
    the analysis of random phenomena. The central objects of probability theory
    are **random variables**, **stochastic processes**, and **events**: mathematical
    abstractions of non-deterministic events or measured quantities that may
    either be single occurrences or evolve over time in an apparently random
    fashion.

    Mode, mean, median

    :   ![Geometric visualisation of the mode, median and mean of an arbitrary
            probability density function.](https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Visualisation_mode_median_mean.svg/150px-Visualisation_mode_median_mean.svg.png)

    Standard error

    :   The standard error (SE) is the standard deviation of the sampling
        distribution of a statistic, most commonly of the mean. The term may
        also be used to refer to an estimate of that standard deviation,
        derived from a particular sample used to compute the estimate.

        ![For a value that is sampled with an unbiased normally distributed
            error, the above depicts the proportion of samples that would fall
            between 0, 1, 2, and 3 standard deviations above and below the
            actual value.](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Standard_deviation_diagram.svg/488px-Standard_deviation_diagram.svg.png)

        For example, the sample mean is the usual estimator of a population
        mean. However, different samples drawn from that same population would
        in general have different values of the sample mean, so there is a
        distribution of sampled means (with its own mean and variance). The
        standard error of the mean (SEM) (i.e., of using the sample mean as a
        method of estimating the population mean) is the standard deviation of
        those sample means over all possible samples (of a given size) drawn
        from the population. Secondly, the standard error of the mean can refer
        to an estimate of that standard deviation, computed from the sample of
        data being analyzed at the time.

        The standard error of the mean (SEM) is the standard deviation of the
        sample-mean's estimate of a population mean.

        $$\text{SE}_\bar{x}\ = \frac{s}{\sqrt{n}}$$

        where

          - s is the sample standard deviation (i.e., the sample-based estimate
            of the standard deviation of the population), and
          - n is the size (number of observations) of the sample

        This estimate may be compared with the formula for the true standard
        deviation of the sample mean:

        $$\text{SD}_\bar{x}\ = \frac{\sigma}{\sqrt{n}}$$

    Independent and identically distributed random variables

    :   The abbreviation i.i.d. is particularly common in statistics (often as
        iid, sometimes written IID), where observations in a sample are often
        assumed to be effectively i.i.d. for the purposes of statistical
        inference. The assumption (or requirement) that observations be i.i.d.
        tends to simplify the underlying mathematics of many statistical
        methods (see mathematical statistics and statistical theory). However,
        in practical applications of statistical modeling the assumption may or
        may not be realistic. To test how realistic the assumption is on a
        given data set, the autocorrelation can be computed, lag plots drawn or
        turning point test performed. The generalization of exchangeable
        random variables is often sufficient and more easily met.

        White noise is a simple example of IID.

    Cumulative distribution function (CDF)

    :   ![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Normal_Distribution_CDF.svg/450px-Normal_Distribution_CDF.svg.png)

        Every cumulative distribution function F is **non-decreasing** and
        **right-continuous**, which makes it a càdlàg function. Furthermore,

        $$\lim_{x\to -\infty}F(x)=0, \quad \lim_{x\to +\infty}F(x)=1.$$

    Probability density function (pdf)

    :   ![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Boxplot_vs_PDF.svg/525px-Boxplot_vs_PDF.svg.png)

        If $F_X$ is the cumulative distribution function of $X$, then:

        $$F_X(x) = \int_{-\infty}^x f_X(u) \, du ,$$

        and (if $f_X$ is continuous at x)

        $$f_X(x) = \frac{d}{dx} F_X(x).$$

    Probability mass function (pmf)

    :   ![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Discrete_probability_distrib.svg/330px-Discrete_probability_distrib.svg.png)

        $$f_X(x) = \Pr(X = x) = \Pr(\{s \in S: X(s) = x\}).$$

        Suppose that S is the sample space of all outcomes of a single toss of
        a fair coin, and X is the random variable defined on S assigning 0 to
        "tails" and 1 to "heads". Since the coin is fair, the probability mass
        function is

        $$f_X(x) = \begin{cases}\frac{1}{2}, &x \in \{0, 1\},\\0, &x \notin \{0, 1\}.\end{cases}$$

    Expected value

    :   Univariate discrete random variable, countable case

        $$\operatorname{E}[X] = \sum_{i=1}^\infty x_i\, p_i,$$

        Univariate continuous random variable

        $$\operatorname{E}[X] = \int_{-\infty}^\infty x f(x)\, \mathrm{d}x.$$

        General definition

        In general, if X is a random variable defined on a probability space (Ω, Σ, P),
        then the expected value of X, denoted by $E[X]$ (or $〈X〉$, $X$),
        is defined as the [Lebesgue integral](https://en.wikipedia.org/wiki/Lebesgue_integration)

        $$\operatorname{E} [X] = \int_\Omega X \, \mathrm{d}P = \int_\Omega X(\omega) P(\mathrm{d}\omega) $$

        When this integral exists, it is defined as the expectation of X. **Not
        all random variables have a finite expected value, since the integral
        may not converge absolutely; furthermore, for some it is not defined at
        all (e.g., Cauchy distribution).** Two variables with the same
        probability distribution will have the same expected value, if it is
        defined.

        Expectation of matrices

        If X is an m × n matrix, then the expected value of the matrix is defined as the matrix of expected values:

        $$
            \operatorname{E}[X] =
            \operatorname{E} \left [ \begin{pmatrix}
                x_{1,1} & x_{1,2} & \cdots & x_{1,n} \\
                x_{2,1} & x_{2,2} & \cdots & x_{2,n} \\
                \vdots & \vdots & \ddots & \vdots \\
                x_{m,1} & x_{m,2} & \cdots & x_{m,n}
            \end{pmatrix} \right ] = \begin{pmatrix}
                \operatorname{E}[x_{1,1}] & \operatorname{E}[x_{1,2}] & \cdots & \operatorname{E}[x_{1,n}] \\
                \operatorname{E}[x_{2,1}] & \operatorname{E}[x_{2,2}] & \cdots & \operatorname{E}[x_{2,n}] \\
                \vdots & \vdots & \ddots & \vdots \\
                \operatorname{E}[x_{m,1}] & \operatorname{E}[x_{m,2}] & \cdots & \operatorname{E}[x_{m,n}]
            \end{pmatrix}.
        $$

        This is utilized in covariance matrices.

    Variance

    :   The variance of a random variable X is the expected value of the
        squared deviation from the mean μ = E[X]:

        $$\operatorname{Var}(X) = \operatorname{E}\left[(X - \mu)^2 \right].$$

        The variance can also be thought of as the covariance of a random
        variable with itself:

        $$\operatorname{Var}(X) = \operatorname{Cov}(X, X).$$

        Continuous random variable

        $$\operatorname{Var}(X) =\sigma^2 =\int (x-\mu)^2 \, f(x) \, dx\, =\int x^2 \, f(x) \, dx\, - \mu^2$$

        where $\mu$ is the expected value,

        $$\mu = \int x \, f(x) \, dx\,$$

        Discrete random variable

        If the generator of random variable X is discrete with probability mass function x1 ↦ p1, ..., xn ↦ pn, then

        $$\operatorname{Var}(X) = \sum_{i=1}^n p_i\cdot(x_i - \mu)^2,$$

        or equivalently

        $$\operatorname{Var}(X) = \sum_{i=1}^n p_i x_i ^2- \mu^2,$$

        where $\mu$ is the expected value, i.e.

        $$\mu = \sum_{i=1}^n p_i\cdot x_i.$$

        Sum of uncorrelated variables (Bienaymé formula)

        One reason for the use of the variance in preference to other measures
        of dispersion is that the variance of the sum (or the difference) of
        uncorrelated random variables is the sum of their variances:

        $$\operatorname{Var}\Big(\sum_{i=1}^n X_i\Big) = \sum_{i=1}^n \operatorname{Var}(X_i).$$

        This statement is called the **Bienaymé formula** (bienayme formula)
        and was discovered in 1853. It is often made with the stronger
        condition that the variables are independent, but being uncorrelated
        suffices. So if all the variables have the same variance σ2, then,
        since division by n is a linear transformation, this formula
        immediately implies that the variance of their mean is

        $$\operatorname{Var}\left(\overline{X}\right) = \operatorname{Var}\left(\frac {1} {n}\sum_{i=1}^n X_i\right) = \frac {1} {n^2}\sum_{i=1}^n \operatorname{Var}\left(X_i\right) = \frac {\sigma^2} {n}.$$

        That is, ** the variance of the mean decreases when n increases**. This
        formula for the variance of the mean is used in the definition of the
        standard error of the sample mean, which is used in the central limit
        theorem.

    Covariance

    :   In probability theory and statistics, covariance is a measure of how
        much two random variables change together. If the greater values of one
        variable mainly correspond with the greater values of the other
        variable, and the same holds for the lesser values, i.e., the variables
        tend to show similar behavior, the covariance is positive.

        A distinction must be made between

        1.  the covariance of two random variables, which is a population
            parameter that can be seen as a property of the joint probability
            distribution, and
        2.  the sample covariance, which serves as an estimated value of the
            parameter.

        The covariance between two jointly distributed real-valued random variables X and Y with finite second moments is defined as

        $$\operatorname{cov}(X,Y) = \operatorname{E}{\big[(X - \operatorname{E}[X])(Y - \operatorname{E}[Y])\big]},$$

        where E[X] is the expected value of X, also known as the mean of X. By
        using the linearity property of expectations, this can be simplified to

        $$
        \begin{align}
        \operatorname{cov}(X,Y)
        &= \operatorname{E}\left[\left(X - \operatorname{E}\left[X\right]\right) \left(Y - \operatorname{E}\left[Y\right]\right)\right] \\
        &= \operatorname{E}\left[X Y - X \operatorname{E}\left[Y\right] - \operatorname{E}\left[X\right] Y + \operatorname{E}\left[X\right] \operatorname{E}\left[Y\right]\right] \\
        &= \operatorname{E}\left[X Y\right] - \operatorname{E}\left[X\right] \operatorname{E}\left[Y\right] - \operatorname{E}\left[X\right] \operatorname{E}\left[Y\right] + \operatorname{E}\left[X\right] \operatorname{E}\left[Y\right] \\
        &= \operatorname{E}\left[X Y\right] - \operatorname{E}\left[X\right] \operatorname{E}\left[Y\right]. \end{align}
        $$

        However, when $\operatorname{E}[XY] \approx \operatorname{E}[X]\operatorname{E}[Y]$,
        this last equation is prone to catastrophic cancellation when computed
        with floating point arithmetic and thus should be avoided in computer
        programs when the data has not been centered before. Numerically stable
        algorithms should be preferred in this case.

        For random vectors $\mathbf{X} \in \mathbb{R}^m$ and $\mathbf{Y} \in \mathbb{R}^n$,
        the m×n cross covariance matrix (also known as **dispersion (`[dɪ'spɝʒn]`, 离差) matrix**
        or **variance–covariance matrix**, or simply called covariance matrix) is equal to

        $$
        \begin{align}
        \operatorname{cov}(\mathbf{X},\mathbf{Y})
        &= \operatorname{E} \left[(\mathbf{X} - \operatorname{E}[\mathbf{X}]) (\mathbf{Y} - \operatorname{E}[\mathbf{Y}])^\mathrm{T}\right]\\
        &= \operatorname{E}\left[\mathbf{X} \mathbf{Y}^\mathrm{T}\right] - \operatorname{E}[\mathbf{X}]\operatorname{E}[\mathbf{Y}]^\mathrm{T},
        \end{align}
        $$

        where $m^T$ is the transpose of the vector (or matrix) m.

        For a vector $\mathbf{X}= \begin{bmatrix}X_1 & X_2 & \dots & X_m\end{bmatrix}^\mathrm{T}$
        of m jointly distributed random variables with finite second moments,
        its covariance matrix is defined as

        $$\Sigma(\mathbf{X}) = \sigma(\mathbf{X},\mathbf{X}).$$

    Classical definition

    :   The probability of an event is the ratio of the number of cases
        favorable to it, to the number of all cases possible when nothing leads
        us to expect[clarification needed] that any one of these cases should
        occur more than any other, which renders them, for us, equally
        possible.

        This definition is essentially a consequence of the principle of
        indifference. If elementary events are assigned equal probabilities,
        then the probability of a disjunction of elementary events is just the
        number of events in the disjunction divided by the total number of
        elementary events.

        The classical definition of probability was called into question by
        several writers of the nineteenth century, including John Venn and
        George Boole.[2] The frequentist definition of probability became
        widely accepted as a result of their criticism, and especially through
        the works of R.A. Fisher.  The classical definition enjoyed a revival
        of sorts due to the general interest in Bayesian probability, because
        Bayesian methods require a prior probability distribution and the
        principle of indifference offers one source of such a distribution.
        Classical probability can offer prior probabilities that reflect
        ignorance which often seems appropriate before an experiment is
        conducted.

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
        theory. Some fundamental discrete distributions are the [discrete uniform](#discrete-uniform-distribution),
        [Bernoulli](#bernoulli-distribution), binomial, negative binomial, Poisson and geometric
        distributions. Important continuous distributions include the
        continuous uniform, normal, exponential, gamma and beta distributions.

Uniform distribution (discrete) `#`{#discrete-uniform-distribution}

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

Bernoulli distribution `#`{#bernoulli-distribution}

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
    also called a **Bernoulli experiment** or **Bernoulli trial**; when n = 1,
    the binomial distribution is a Bernoulli distribution. The binomial
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
    Fisher information          $g_n(p) = \frac{n}{p(1-p)}$ (for fixed n)
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

         approaches the normal distribution with expected value 0 and variance 1.
         This result is sometimes loosely stated by saying that the
         distribution of X is asymptotically normal with expected value np and
         variance np(1 − p). This result is a specific case of the central
         limit theorem.

Poisson limit theorem

:   The law of rare events or Poisson limit theorem gives a Poisson
    approximation to the binomial distribution, under certain conditions.
    The theorem was named after Siméon Denis Poisson (1781–1840).

    If $n \rightarrow \infty, p \rightarrow 0, \text{such that} np \rightarrow \lambda$,
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
    the probability of a given number of events **occurring in a fixed interval
    of time and/or space if these events occur with a known average rate and
    independently of the time since the last event**. The Poisson distribution
    can also be used for the number of events in other specified intervals such
    as distance, area or volume.

    A discrete random variable X  is said to have a Poisson distribution with
    parameter λ > 0, if, for k = 0, 1, 2, ..., the probability mass function of X
    is given by:

    $$\!f(k; \lambda)= \Pr(X = k)= \frac{\lambda^k e^{-\lambda}}{k!},$$

    The positive real number λ is equal to the expected value of X and also to its variance

    $$\lambda=\operatorname{E}(X)=\operatorname{Var}(X).$$

    ![**pmf**: The horizontal axis is the index k, the number of occurrences. λ is the
        expected value. The function is defined only at integer values of k. The
        connecting lines are only guides for the eye.](https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Poisson_pmf.svg/488px-Poisson_pmf.svg.png)

    ![**CDF**: The horizontal axis is the index k, the number of occurrences. The CDF is
        discontinuous at the integers of k and flat everywhere else because a variable
        that is Poisson distributed takes on only integer values.](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Poisson_cdf.svg/488px-Poisson_cdf.svg.png)

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

Hypergeometric distribution

:   A random variable X follows the hypergeometric distribution if its probability mass function (pmf) is given by

    $$
        P(X = k) = \frac{\binom{K}{k} \binom{N - K}{n-k}}{\binom{N}{n}},
    $$

    where

      - N is the population size,
      - K is the number of success states in the population,
      - n is the number of draws,
      - k is the number of observed successes,
      - $\textstyle {a \choose b}$ is a binomial coefficient.

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
    Notation                $\mathcal{U}(a, b)$ or $\mathrm{unif}(a,b)$
    Parameters              $-\infty < a < b < \infty \,$
    Support                 $x \in [a,b]$
    PDF                     $\begin{cases} \frac{1}{b - a} & \text{for } x \in [a,b] \\ 0 & \text{otherwise} \end{cases}$
    CDF                     $\begin{cases} 0 & \text{for } x < a \\ \frac{x-a}{b-a} & \text{for } x \in [a,b) \\ 1 & \text{for } x \ge b \end{cases}$
    Mean                    $\tfrac{1}{2}(a+b)$
    Median                  $\tfrac{1}{2}(a+b)$
    Mode                    any value in (a,b)
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

    Cumulative distribution function

    :   The cumulative distribution function (CDF) of the standard normal
        distribution, usually denoted with the capital Greek letter \Phi (phi),
        is the integral

        $$\Phi(x)\; = \;\frac{1}{\sqrt{2\pi}} \int_{-\infty}^x e^{-t^2/2} \, dt$$

        In statistics one often uses the related error function, or erf(x),
        defined as the probability of a random variable with normal
        distribution of mean 0 and variance 1/2 falling in the range [-x, x];
        that is

        $$\operatorname{erf}(x)\; =\; \frac{1}{\sqrt{\pi}} \int_{-x}^x e^{-t^2} \, dt$$

        These integrals cannot be expressed in terms of elementary functions,
        and are often said to be special functions. However, many numerical
        approximations are known; see below.

        The two functions are closely related, namely

        $$\Phi(x)\; =\; \frac12\left[1 + \operatorname{erf}\left(\frac{x}{\sqrt{2}}\right)\right]$$

        For a generic normal distribution f with mean μ and deviation σ, the
        cumulative distribution function is

        $$F(x)\;=\;\Phi\left(\frac{x-\mu}{\sigma}\right)\;=\; \frac12\left[1 +
        \operatorname{erf}\left(\frac{x-\mu}{\sigma\sqrt{2}}\right)\right]$$

    Standard score

    :   Standard scores are also called z-values, z-scores, normal scores, and
        standardized variables; the use of "Z" is because the normal
        distribution is also known as the "Z distribution".  They are most
        frequently used to compare a sample to a standard normal deviate,
        though they can be defined without assumptions of normality.

        ![Compares the various grading methods in a normal distribution.
            Includes: Standard deviations, cumulative percentages, percentile
            equivalents, Z-scores, T-scores, standard nine, percent in
            stanine](https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Normal_distribution_and_scales.gif/525px-Normal_distribution_and_scales.gif)

        The standard score of a raw score x is

        $$z = {x- \mu \over \sigma}$$

        In mathematical statistics, a random variable X is standardized by
        subtracting its expected value $\operatorname{E}[X]$ and dividing the
        difference by its standard deviation $\sigma(X) = \sqrt{\operatorname{Var}(X)}$:

        $$Z = {X - \operatorname{E}[X] \over \sigma(X)}$$

        Stanine

        :   Stanine (STAndard NINE) is a method of scaling test scores on a
            nine-point standard scale with a mean of five and a standard
            deviation of two.

            Calculating Stanines

            --------------------   ----------   --------------  -------------   ------------   -------------   ------------     ------------    -------------  --------------
            Result Ranking         4%           7%              12%             17%             20%             17%             12%             7%              4%
            Stanine                1            2               3               4               5               6               7               8               9
            Standard score         below -1.75  -1.75 to -1.25  -1.25 to -.75   -.75 to -.25    -.25 to +.25    +.25 to +.75    +.75 to +1.25   +1.25 to +1.75  above +1.75
            Wechsler scale score   below 74     74 to 81        81 to 89        89 to 96        96 to 104       104 to 111      111 to 119      119 to 126      above 126
            --------------------   ----------   --------------  -------------   ------------   -------------   ------------     ------------    -------------  --------------

            Today stanines are mostly used in educational assessment.

    t-statistic

    :   In statistics, the t-statistic is a ratio of the departure of an
        estimated parameter from its notional value and its standard error. It
        is used in hypothesis testing, for example in the Student’s t-test, in
        the augmented Dickey–Fuller test, and in bootstrapping.

        Let $\scriptstyle\hat\beta$ be an estimator of parameter β in some
        statistical model. Then a t-statistic for this parameter is any
        quantity of the form

        $$t_{\hat{\beta}} = \frac{\hat\beta - \beta_0}{\mathrm{s.e.}(\hat\beta)}$$

        where β0 is a non-random, known constant, and $\scriptstyle s.e.(\hat\beta)$
        is the standard error of the estimator $\scriptstyle\hat\beta$. By
        default, statistical packages report t-statistic with β0 = 0 (these
        t-statistics are used to test the significance of corresponding
        regressor). However, when t-statistic is needed to test the hypothesis
        of the form H0: β = β0, then a non-zero β0 may be used.

        If $\scriptstyle\hat\beta$ is an ordinary least squares estimator in the
        classical linear regression model (that is, with normally distributed
        and homoskedastic error terms), and if the true value of parameter β is
        equal to β0, then the sampling distribution of the t-statistic is the
        Student's t-distribution with (n − k) degrees of freedom, where n is
        the number of observations, and k is the number of regressors
        (including the intercept).

        In the majority of models the estimator \scriptstyle\hat\beta is
        consistent for β and distributed asymptotically normally. If the true
        value of parameter β is equal to β0 and the quantity $\scriptstyle
        s.e.(\hat\beta)$ correctly estimates the asymptotic variance of this
        estimator, then the t-statistic will have asymptotically the standard
        normal distribution.

        In some models the distribution of t-statistic is different from
        normal, even asymptotically. For example, when a time series with unit
        root is regressed in the augmented Dickey–Fuller test, the test
        t-statistic will asymptotically have one of the Dickey–Fuller
        distributions (depending on the test setting).

Error function

:   ![Plot of the error function](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Error_Function.svg/600px-Error_Function.svg.png)

    In mathematics, the error function (also called the Gauss error function)
    is a special function (non-elementary) of sigmoid shape that occurs in
    probability, statistics, and partial differential equations describing
    diffusion. It is defined as:

    $$\operatorname{erf}(x) = \frac{2}{\sqrt\pi}\int_0^x e^{-t^2}\,\mathrm dt.$$

    The complementary error function, denoted erfc, is defined as

    $$\begin{align} \operatorname{erfc}(x) & = 1-\operatorname{erf}(x) \\ & =
    \frac{2}{\sqrt\pi} \int_x^{\infty} e^{-t^2}\,\mathrm dt \\ & = e^{-x^2}
    \operatorname{erfcx}(x), \end{align}$$

    which also defines erfcx, the scaled complementary error function[3] (which
    can be used instead of erfc to avoid arithmetic underflow[3][4]). Another
    form of \operatorname{erfc}(x) is known as Craig's formula:

    $$\begin{align} \operatorname{erfc}(x) & = \frac{2}{\pi} \int_0^{\pi/2}
    \exp \left( - \frac{x^2}{\sin^2 \theta} \right) d\theta. \end{align}$$

    The error function is related to the cumulative distribution \Phi, the
    integral of the standard normal distribution, by

    $$\Phi (x) = \frac{1}{2}+ \frac{1}{2} \operatorname{erf} \left(x/
    \sqrt{2}\right) = \frac{1}{2} \operatorname{erfc} \left(-x/
    \sqrt{2}\right).$$

Q-function

:   ![A plot of the Q-function.](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Q-function.png/600px-Q-function.png)

    In statistics, the Q-function is the tail probability of the standard
    normal distribution \phi(x). In other words, Q(x) is the probability that a
    normal (Gaussian) random variable will obtain a value larger than x
    standard deviations above the mean.

    If the underlying random variable is y, then the proper argument to the
    tail probability is derived as:

    $$x=\frac{y - \mu}{\sigma}$$

    which expresses the number of standard deviations away from the mean.

    Because of its relation to the cumulative distribution function of the
    normal distribution, the Q-function can also be expressed in terms of the
    error function, which is an important function in applied mathematics and
    physics.

    Formally, the Q-function is defined as

    $$Q(x) = \frac{1}{\sqrt{2\pi}} \int_x^\infty \exp\left(-\frac{u^2}{2}\right) \, du.$$

    Thus,

    $$Q(x) = 1 - Q(-x) = 1 - \Phi(x)\,\!,$$

    where $\Phi(x)$ is the cumulative distribution function of the normal
    Gaussian distribution.

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
    Parameters      k > 0 shape, θ > 0 scale                                                  α > 0 shape, β > 0 rate
    Support         $\scriptstyle x \;\in\; (0,\, \infty)$                                    $\scriptstyle x \;\in\; (0,\, \infty)$
    pdf             $\frac{1}{\Gamma(k) \theta^k} x^{k \,-\, 1} e^{-\frac{x}{\theta}}$        $\frac{\beta^\alpha}{\Gamma(\alpha)} x^{\alpha \,-\, 1} e^{- \beta x }[1]$
    CDF             $\frac{1}{\Gamma(k)} \gamma\left(k,\, \frac{x}{\theta}\right)$            $\frac{1}{\Gamma(\alpha)} \gamma(\alpha,\, \beta x)$
    Mean            $\scriptstyle \mathbf{E}[ X] = k \theta$                                  $\scriptstyle\mathbf{E}[ X] = \frac{\alpha}{\beta}$
                    $\scriptstyle \mathbf{E}[\ln X] = \psi(k) +\ln(\theta)$                   $\scriptstyle \mathbf{E}[\ln X] = \psi(\alpha) -\ln(\beta)$
    Median          No simple closed form                                                     No simple closed form
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
    PDF                     $\frac{x^{\alpha-1}(1-x)^{\beta-1}} {\operatorname{Beta}(\alpha,\beta)}\!$  where $\operatorname{Beta}(\alpha,\beta) = \frac{\Gamma(\alpha)\Gamma(\beta)}{\Gamma(\alpha + \beta)}$
    CDF                     $I_x(\alpha,\beta)\!$
    Mean                    $\operatorname{E}[X] = \frac{\alpha}{\alpha+\beta}\!$, $\operatorname{E}[\ln X] = \psi(\alpha) - \psi(\alpha + \beta)\!$
    Median                  $\begin{matrix}I_{\frac{1}{2}}^{[-1]}(\alpha,\beta)\text{ (in general) }\\[0.5em] \approx \frac{ \alpha - \tfrac{1}{3} }{ \alpha + \beta - \tfrac{2}{3} }\text{ for }\alpha, \beta >1\end{matrix}$
    Mode                    $\frac{\alpha-1}{\alpha+\beta-2}\!$ for α, β >1
    Variance                $\operatorname{var}[X] = \frac{\alpha\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}\!$, $\operatorname{var}[\ln X] = \psi_1(\alpha) - \psi_1(\alpha + \beta)\!$
    Skewness                $\frac{2\,(\beta-\alpha)\sqrt{\alpha+\beta+1}}{(\alpha+\beta+2)\sqrt{\alpha\beta}}$
    Ex. kurtosis            $\frac{6[(\alpha - \beta)^2 (\alpha +\beta + 1) - \alpha \beta (\alpha + \beta + 2)]}{\alpha \beta (\alpha + \beta + 2) (\alpha + \beta + 3)}$
    Entropy                 $\begin{matrix}\ln\operatorname{Beta}(\alpha,\beta)-(\alpha-1)\psi(\alpha)-(\beta-1)\psi(\beta)\\[0.5em] +(\alpha+\beta-2)\psi(\alpha+\beta)\end{matrix}$
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

Chi-squared distribution

:   ![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Chi-square_pdf.svg/482px-Chi-square_pdf.svg.png){width=45%}
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Chi-square_cdf.svg/482px-Chi-square_cdf.svg.png){width=45%}

    Notation    \chi^2(k)\! or \chi^2_k\!
    Parameters  k \in \mathbb{N}_{>0}~~ (known as "degrees of freedom")
    Support     x ∈ [0, +∞)
    PDF     \frac{1}{2^{\frac{k}{2}}\Gamma\left(\frac{k}{2}\right)}\; x^{\frac{k}{2}-1} e^{-\frac{x}{2}}\,
    CDF     \frac{1}{\Gamma\left(\frac{k}{2}\right)}\;\gamma\left(\tfrac{k}{2},\,\frac{x}{2}\right)
    Mean    k
    Median  \approx k\bigg(1-\frac{2}{9k}\bigg)^3
    Mode    max{ k − 2, 0 }
    Variance    2k
    Skewness    \scriptstyle\sqrt{8/k}\,
    Ex. kurtosis    12 / k
    Entropy     \begin{align}\tfrac{k}{2}&+\ln(2\Gamma(\tfrac{k}{2})) \\ &\!+(1-\tfrac{k}{2})\psi(\tfrac{k}{2}) \,{\scriptstyle\text{(nats)}} \end{align}
    MGF     (1 − 2 t )−k/2   for  t  < ½
    CF  (1 − 2 i t )−k/2

    The probability density function (pdf) of the chi-squared distribution is

        f(x;\,k) = \begin{cases} \frac{x^{(k/2-1)} e^{-x/2}}{2^{k/2} \Gamma\left(\frac{k}{2}\right)}, & x > 0; \\ 0, & \text{otherwise}. \end{cases}

    where Γ(k/2) denotes the Gamma function, which has closed-form values for integer k.

    Its cumulative distribution function is:

        F(x;\,k) = \frac{\gamma(\frac{k}{2},\,\frac{x}{2})}{\Gamma(\frac{k}{2})} = P\left(\frac{k}{2},\,\frac{x}{2}\right),

    where γ(s,t) is the lower incomplete Gamma function and P(s,t) is the regularized Gamma function.

    In a special case of k = 2 this function has a simple form:

        F(x;\,2) = 1 - e^{-\frac{x}{2}}

Student's t-distribution

![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Student_t_pdf.svg/488px-Student_t_pdf.svg.png)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Student_t_cdf.svg/488px-Student_t_cdf.svg.png)

Parameters 	\nu > 0 degrees of freedom (real)
Support 	x ∈ (−∞; +∞)
PDF 	\textstyle\frac{\Gamma \left(\frac{\nu+1}{2} \right)} {\sqrt{\nu\pi}\,\Gamma \left(\frac{\nu}{2} \right)} \left(1+\frac{x^2}{\nu} \right)^{-\frac{\nu+1}{2}}\!
CDF 	\begin{matrix} \frac{1}{2} + x \Gamma \left( \frac{\nu+1}{2} \right) \times\\[0.5em] \frac{\,_2F_1 \left ( \frac{1}{2},\frac{\nu+1}{2};\frac{3}{2}; -\frac{x^2}{\nu} \right)} {\sqrt{\pi\nu}\,\Gamma \left(\frac{\nu}{2}\right)} \end{matrix}
where 2F1 is the hypergeometric function
Mean 	0 for \nu > 1, otherwise undefined
Median 	0
Mode 	0
Variance 	\textstyle\frac{\nu}{\nu-2} for \nu > 2, ∞ for 1 < \nu \le 2, otherwise undefined
Skewness 	0 for \nu > 3, otherwise undefined
Ex. kurtosis 	\textstyle\frac{6}{\nu-4} for \nu > 4, ∞ for 2 < \nu \le 4, otherwise undefined
Entropy

\begin{matrix} \frac{\nu+1}{2}\left[ \psi \left(\frac{1+\nu}{2} \right) - \psi \left(\frac{\nu}{2} \right) \right] \\[0.5em] + \ln{\left[\sqrt{\nu}B \left(\frac{\nu}{2},\frac{1}{2} \right)\right]}\,{\scriptstyle\text{(nats)}} \end{matrix}

    ψ: digamma function,
    B: beta function

MGF 	undefined
CF

\textstyle\frac{K_{\nu/2} \left(\sqrt{\nu}|t|\right) \cdot \left(\sqrt{\nu}|t| \right)^{\nu/2}} {\Gamma(\nu/2)2^{\nu/2-1}} for \nu > 0

    K_\nu(x): Modified Bessel function of the second kind[1]

Student's t-distribution has the probability density function given by

    f(t) = \frac{\Gamma(\frac{\nu+1}{2})} {\sqrt{\nu\pi}\,\Gamma(\frac{\nu}{2})} \left(1+\frac{t^2}{\nu} \right)^{\!-\frac{\nu+1}{2}},\!

where \nu is the number of degrees of freedom and \Gamma is the gamma function. This may also be written as

    f(t) = \frac{1}{\sqrt{\nu}\,\mathrm{B} (\frac{1}{2}, \frac{\nu}{2})} \left(1+\frac{t^2}{\nu} \right)^{\!-\frac{\nu+1}{2}}\!,

where B is the Beta function.

For \nu even,

    \frac{\Gamma(\frac{\nu+1}{2})} {\sqrt{\nu\pi}\,\Gamma(\frac{\nu}{2})} = \frac{(\nu -1)(\nu -3)\cdots 5 \cdot 3} {2\sqrt{\nu}(\nu -2)(\nu -4)\cdots 4 \cdot 2\,}\cdot

For \nu odd,

    \frac{\Gamma(\frac{\nu+1}{2})} {\sqrt{\nu\pi}\,\Gamma(\frac{\nu}{2})} = \frac{(\nu -1)(\nu -3)\cdots 4 \cdot 2} {\pi \sqrt{\nu}(\nu -2)(\nu -4)\cdots 5 \cdot 3\,}\cdot\!

F-distribution

The F-distribution, also known as Snedecor's F distribution or the Fisher–
Snedecor distribution (after Ronald Fisher and George W. Snedecor) is, in
probability theory and statistics, a continuous probability distribution.

The F-distribution arises frequently as the null distribution of a test
statistic, most notably in the analysis of variance; see F-test.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/F_pdf.svg/488px-F_pdf.svg.png)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/F_dist_cdf.svg/488px-F_dist_cdf.svg.png)

If a random variable X has an F-distribution with parameters d1 and d2, we write X ~ F(d1, d2). Then the probability density function (pdf) for X is given by

    \begin{align} f(x; d_1,d_2) &= \frac{\sqrt{\frac{(d_1\,x)^{d_1}\,\,d_2^{d_2}} {(d_1\,x+d_2)^{d_1+d_2}}}} {x\,\mathrm{B}\!\left(\frac{d_1}{2},\frac{d_2}{2}\right)} \\ &=\frac{1}{\mathrm{B}\!\left(\frac{d_1}{2},\frac{d_2}{2}\right)} \left(\frac{d_1}{d_2}\right)^{\frac{d_1}{2}} x^{\frac{d_1}{2} - 1} \left(1+\frac{d_1}{d_2}\,x\right)^{-\frac{d_1+d_2}{2}} \end{align}

for real x ≥ 0. Here \mathrm{B} is the beta function. In many applications, the parameters d1 and d2 are positive integers, but the distribution is well-defined for positive real values of these parameters.

The cumulative distribution function is

    F(x; d_1,d_2)=I_{\frac{d_1 x}{d_1 x + d_2}}\left (\tfrac{d_1}{2}, \tfrac{d_2}{2} \right) ,

where I is the regularized incomplete beta function.

The expectation, variance, and other details about the F(d1, d2) are given in the sidebox; for d2 > 8, the excess kurtosis is

    \gamma_2 = 12\frac{d_1(5d_2-22)(d_1+d_2-2)+(d_2-4)(d_2-2)^2}{d_1(d_2-6)(d_2-8)(d_1+d_2-2)}.

Parameters 	d1, d2 > 0 deg. of freedom
Support 	x ∈ [0, +∞)
PDF 	\frac{\sqrt{\frac{(d_1\,x)^{d_1}\,\,d_2^{d_2}} {(d_1\,x+d_2)^{d_1+d_2}}}} {x\,\mathrm{B}\!\left(\frac{d_1}{2},\frac{d_2}{2}\right)}\!
CDF 	I_{\frac{d_1 x}{d_1 x + d_2}} \left(\tfrac{d_1}{2}, \tfrac{d_2}{2} \right)
Mean 	\frac{d_2}{d_2-2}\!
for d2 > 2
Mode 	\frac{d_1-2}{d_1}\;\frac{d_2}{d_2+2}
for d1 > 2
Variance 	\frac{2\,d_2^2\,(d_1+d_2-2)}{d_1 (d_2-2)^2 (d_2-4)}\!
for d2 > 4
Skewness 	\frac{(2 d_1 + d_2 - 2) \sqrt{8 (d_2-4)}}{(d_2-6) \sqrt{d_1 (d_1 + d_2 -2)}}\!
for d2 > 6
Ex. kurtosis 	see text
MGF 	does not exist, raw moments defined in text and in [1][2]
CF 	see text

Characterization

:   A random variate of the F-distribution with parameters d1 and d2 arises as
    the ratio of two appropriately scaled chi-squared variates:

    $$X = \frac{U_1/d_1}{U_2/d_2}$$

    where

      - U1 and U2 have chi-squared distributions with d1 and d2 degrees of freedom respectively, and
      - U1 and U2 are independent.

Marginal distribution

:   ![Joint and marginal distributions of a pair of discrete, random variables X,Y
        having nonzero mutual information I(X; Y). The values of the joint
        distribution are in the 4×4 square, and the values of the marginal
        distributions are along the right and bottom
        margins.](http://whudoc.qiniudn.com/2016/marginal-distribution.png)

    The term marginal variable is used to refer to those variables in the
    subset of variables **being retained**. These terms are dubbed "marginal"
    because they used to be found by summing values in a table along rows or
    columns, and writing the sum in the margins of the table. The distribution
    of the marginal variables (the marginal distribution) is obtained by
    marginalizing over the distribution of the variables being discarded, and
    the discarded variables are said to have been marginalized out.

Joint probability distribution

:   ![Many sample observations (black) are shown from a joint probability
        distribution. The marginal densities are shown as well.](https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Multivariate_normal_sample.svg/450px-Multivariate_normal_sample.svg.png)

    The joint probability distribution can be expressed either in terms of a joint
    cumulative distribution function or in terms of a joint probability density
    function (in the case of continuous variables) or joint probability mass
    function (in the case of discrete variables). These in turn can be used to find
    two other types of distributions: the marginal distribution giving the
    probabilities for any one of the variables with no reference to any specific
    ranges of values for the other variables, and the conditional probability
    distribution giving the probabilities for any subset of the variables
    conditional on particular values of the remaining variables.

    Discrete case

    $$\begin{align} \mathrm{P}(X=x\ \mathrm{and}\ Y=y) = \mathrm{P}(Y=y \mid X=x) \cdot \mathrm{P}(X=x) = \mathrm{P}(X=x \mid Y=y) \cdot \mathrm{P}(Y=y) \end{align}$$

    Continuous case

    $$f_{X,Y}(x,y) = f_{Y\mid X}(y\mid x)f_X(x) = f_{X\mid Y}(x\mid y)f_Y(y)\;$$

    Mixed case

    $$\begin{align} f_{X,Y}(x,y) = f_{X \mid Y}(x \mid y)\mathrm{P}(Y=y)= \mathrm{P}(Y=y \mid X=x) f_X(x) \end{align}$$

    Joint distribution for independent variables

      - $\ P(X = x \ \mbox{and} \ Y = y ) = P( X = x) \cdot P( Y = y)$
      - $\ f_{X,Y}(x,y) = f_X(x) \cdot f_Y(y)$


Sampling (statistics)

:   In statistics, quality assurance, and survey methodology, sampling is
    concerned with the selection of a subset of individuals from within a
    statistical population to estimate characteristics of the whole population.
    Each observation measures one or more properties (such as weight, location,
    color) of observable bodies distinguished as independent objects or
    individuals. In survey sampling, weights can be applied to the data to
    adjust for the sample design, particularly stratified sampling. Results
    from probability theory and statistical theory are employed to guide the
    practice. In business and medical research, sampling is widely used for
    gathering information about a population.

    The sampling process comprises several stages:

      - Defining the population of concern
      - Specifying a sampling frame, a set of items or events possible to measure
      - Specifying a sampling method for selecting items or events from the frame
      - Determining the sample size
      - Implementing the sampling plan
      - Sampling and data collecting
      - Data which can be selected

Survey methodology

:   Statistical surveys are undertaken with a view towards making statistical
    inferences about the population being studied, and this depends strongly on
    the survey questions used. Polls about public opinion, public health
    surveys, market research surveys, government surveys and censuses are all
    examples of quantitative research that use contemporary survey methodology
    to answer questions about a population. Although censuses do not include a
    "sample", they do include other aspects of survey methodology, like
    questionnaires, interviewers, and nonresponse follow-up techniques. Surveys
    provide important information for all kinds of public information and
    research fields, e.g., marketing research, psychology, health professionals
    and sociology.

Confidence interval

:   In statistics, a confidence interval (CI) is a type of interval estimate of
    a population parameter. It is an observed interval (i.e., it is calculated
    from the observations), in principle different from sample to sample, that
    frequently includes the value of an unobservable parameter of interest if
    the experiment is repeated. How frequently the observed interval contains
    the parameter is determined by the confidence level or confidence
    coefficient. More specifically, the meaning of the term "confidence level"
    is that, if CI are constructed across many separate data analyses of
    replicated (and possibly different) experiments, the proportion of such
    intervals that contain the true value of the parameter will match the given
    confidence level. Whereas two-sided confidence limits form a
    confidence interval, their one-sided counterparts are referred to as
    lower/upper confidence bounds (or limits).

    Let X be a random sample from a probability distribution with statistical
    parameters θ, which is a quantity to be estimated, and ϕ, representing
    quantities that are not of immediate interest. A confidence interval for
    the parameter θ, with confidence level or confidence coefficient γ, is an
    interval with random endpoints (u(X), v(X)), determined by the pair of
    random variables u(X) and v(X), with the property:

    $${\Pr}_{\theta,\phi}(u(X)<\theta<v(X))=\gamma\text{ for all }(\theta,\phi).$$

Regression analysis

:   ![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Linear_regression.svg/330px-Linear_regression.svg.png)

    Least squares

    :   The minimum of the sum of squares is found by setting the gradient to
        zero. Since the model contains m parameters, there are m gradient equations:

        $$\frac{\partial S}{\partial \beta_j}=2\sum_i r_i\frac{\partial r_i}{\partial \beta_j}=0,\ j=1,\ldots,m,$$

        and since $r_i=y_i-f(x_i,\boldsymbol \beta)$, the gradient equations become

        $$-2\sum_i r_i\frac{\partial f(x_i,\boldsymbol \beta)}{\partial \beta_j}=0,\ j=1,\ldots,m.$$

        The gradient equations apply to all least squares problems. Each
        particular problem requires particular expressions for the model and
        its partial derivatives.

        - Linear least squares
        - Non-linear least squares
        - Weighted least squares

    Gauss–Markov theorem

    Linear regression

    :   In statistics, linear regression is an approach for modeling the
        relationship between a scalar dependent variable y and one or more
        explanatory variables (or independent variables) denoted X. The case of one
        explanatory variable is called simple linear regression. For more than one
        explanatory variable, the process is called multiple linear regression.
        (This term should be distinguished from multivariate linear regression,
        where multiple correlated dependent variables are predicted, rather than a
        single scalar variable.)

        Given a data set $\{y_i,\, x_{i1}, \ldots, x_{ip}\}_{i=1}^n$ of n
        statistical units, a linear regression model assumes that the
        relationship between the dependent variable yi and the p-vector of
        regressors xi is linear. This relationship is modeled through a
        disturbance term or error variable $ε_i$ — an unobserved random variable
        that adds noise to the linear relationship between the dependent
        variable and regressors. Thus the model takes the form

        $$y_i = \beta_1 x_{i1} + \cdots + \beta_p x_{ip} + \varepsilon_i = \mathbf{x}^{\rm T}_i\boldsymbol\beta + \varepsilon_i, \qquad i = 1, \ldots, n,$$

        where T denotes the transpose, so that xiTβ is the inner product between vectors xi and β.

        Often these n equations are stacked together and written in vector form as

        $$\mathbf{y} = \mathbf{X}\boldsymbol\beta + \boldsymbol\varepsilon, \,$$

        where

          - $\mathbf{y} = \begin{pmatrix} y_1 \\ y_2 \\ \vdots \\ y_n \end{pmatrix}, \quad$
          - $\mathbf{X} = \begin{pmatrix} \mathbf{x}^{\rm T}_1 \\
            \mathbf{x}^{\rm T}_2 \\ \vdots \\ \mathbf{x}^{\rm T}_n
            \end{pmatrix} = \begin{pmatrix} x_{11} & \cdots & x_{1p} \\ x_{21}
            & \cdots & x_{2p} \\ \vdots & \ddots & \vdots \\ x_{n1} & \cdots &
            x_{np} \end{pmatrix},$
          - $\boldsymbol\beta = \begin{pmatrix} \beta_1 \\ \beta_2 \\ \vdots \\
            \beta_p \end{pmatrix}, \quad \boldsymbol\varepsilon =
            \begin{pmatrix} \varepsilon_1 \\ \varepsilon_2 \\ \vdots \\
            \varepsilon_n \end{pmatrix}.$

    Nonlinear regression

    :   In statistics, nonlinear regression is a form of regression analysis in
        which observational data are modeled by a function which is a nonlinear
        combination of the model parameters and depends on one or more
        independent variables. The data are fitted by a method of successive
        approximations.

        For example, the Michaelis–Menten model for enzyme kinetics

        $$v = \frac{V_\max\ [\mbox{S}]}{K_m + [\mbox{S}]}$$

        can be written as

        $$f(x,\boldsymbol\beta)= \frac{\beta_1 x}{\beta_2 + x}$$

        where $\beta_1$ is the parameter $V_\max$, $\beta_2$ is the parameter $K_m$ and
        $[S]$ is the independent variable, x. This function is nonlinear because
        it cannot be expressed as a linear combination of the two $\beta$s.

        Other examples of nonlinear functions include exponential functions,
        logarithmic functions, trigonometric functions, power functions,
        Gaussian function, and Lorenz curves. Some functions, such as the
        exponential or logarithmic functions, can be transformed so that they
        are linear. When so transformed, standard linear regression can be
        performed but must be applied with caution. See Linearization, below,
        for more details.

        ![See [Michaelis-Menten kinetics](https://en.wikipedia.org/wiki/Michaelis-Menten_kinetics)
            for details.](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Michaelis-Menten_saturation_curve_of_an_enzyme_reaction.svg/450px-Michaelis-Menten_saturation_curve_of_an_enzyme_reaction.svg.png)

Residual sum of squares

:   In a model with a single explanatory variable, RSS is given by:

    $$RSS = \sum_{i=1}^n (y_i - f(x_i))^2,$$

    where yi is the i th value of the variable to be predicted, xi is the i th
    value of the explanatory variable, and f(x_i) is the predicted value of yi
    (also termed \hat{y_i}). In a standard linear simple regression model, y_i
    = a+bx_i+\varepsilon_i\,, where a and b are coefficients, y and x are the
    regressand and the regressor, respectively, and ε is the error term. The
    sum of squares of residuals is the sum of squares of estimates of εi; that
    is

    $$RSS = \sum_{i=1}^n (\varepsilon_i)^2 = \sum_{i=1}^n (y_i - (\alpha + \beta x_i))^2,$$

    where \alpha is the estimated value of the constant term a and \beta is the
    estimated value of the slope coefficient b.

    Matrix expression for the OLS residual sum of squares

    :   The general regression model with n observations and k explanators, the
        first of which is a constant unit vector whose coefficient is the
        regression intercept, is

        $$y = X \beta + e$$

        where y is an n × 1 vector of dependent variable observations, each
        column of the n × k matrix X is a vector of observations on one of the
        k explanators, \beta is a k × 1 vector of true coefficients, and e is
        an n× 1 vector of the true underlying errors. The ordinary least
        squares estimator for \beta is

        $$\hat \beta = (X^T X)^{-1}X^T y.$$

        The residual vector \hat e is y - X \hat \beta = y - X (X^T X)^{-1}X^T y, so the residual sum of squares is:

        $$RSS = \hat e ^T \hat e = \| e \|^2,$$

        (equivalent to the square-root of the norm of residuals); in full:

        $$RSS = y^T y - y^T X(X^T X)^{-1} X^T y = y^T [I - X(X^T X)^{-1} X^T] y = y^T [I - H] y,$$

        where H is the [hat matrix](https://en.wikipedia.org/wiki/Hat_matrix),
        or the prediction matrix in linear regression.

Ordinary least squares

:   In statistics, ordinary least squares (OLS) or linear least squares is a
    method for estimating the unknown parameters in a linear regression model,
    with the goal of minimizing the differences between the observed responses
    in some arbitrary dataset and the responses predicted by the linear
    approximation of the data (visually this is seen as the sum of the vertical
    distances between each data point in the set and the corresponding point on
    the regression line - the smaller the differences, the better the model
    fits the data). The resulting estimator can be expressed by a simple
    formula, especially in the case of a single regressor on the right-hand
    side.

    $$y = X\beta + \varepsilon, \,$$

    where y and ε are n×1 vectors, and X is an n×p matrix of regressors, which
    is also sometimes called the design matrix.

    Classical linear regression model

      - Correct specification. The linear functional form is correctly specified.

      - Strict exogeneity. The errors in the regression should have conditional mean zero:

        $$\operatorname{E}[\,\varepsilon|X\,] = 0.$$


      - No linear dependence. The regressors in X must all be linearly
        independent. Mathematically, this means that the matrix X must have
        full column rank almost surely:

        $$\Pr\!\big[\,\operatorname{rank}(X) = p\,\big] = 1.$$


      - Spherical errors:

        $$\operatorname{Var}[\,\varepsilon \mid X\,] = \sigma^2 I_n,$$

      - Normality. It is sometimes additionally assumed that the errors have
        normal distribution conditional on the regressors:

        $$\varepsilon \mid X\sim \mathcal{N}(0, \sigma^2I_n).$$

    The sum of squared residuals (SSR) (also called the error sum of squares
    (ESS) or residual sum of squares (RSS))[6] is a measure of the overall
    model fit:

    $$S(b) = \sum_{i=1}^n (y_i - x_i ^T b)^2 = (y-Xb)^T(y-Xb),$$

    where T denotes the matrix transpose.

    Geometric approach

    :   ![OLS estimation can be viewed as a projection onto the linear space
            spanned by the regressors.](https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/OLS_geometric_interpretation.svg/987px-OLS_geometric_interpretation.svg.png)

        $$\hat\beta = {\rm arg}\min_\beta\,\lVert y - X\beta \rVert,$$

    Maximum likelihood

    :   The OLS estimator is identical to the maximum likelihood estimator
        (MLE) under the normality assumption for the error terms.

    Generalized method of moments

    :   In iid case the OLS estimator can also be viewed as a GMM estimator arising from the moment conditions

        $$\mathrm{E}\big[\, x_i(y_i - x_i ^T \beta) \,\big] = 0.$$

    First of all, under the strict exogeneity assumption the OLS estimators
    $\scriptstyle\hat\beta$ and s2 are unbiased, meaning that their expected
    values coincide with the true values of the parameters:

    $$\operatorname{E}[\, \hat\beta \mid X \,] = \beta, \quad \operatorname{E}[\,s^2 \mid X\,] = \sigma^2.$$

    The estimator $\scriptstyle\hat\beta$ is normally distributed, with mean
    and variance as given before:

    $$\hat\beta\ \sim\ \mathcal{N}\big(\beta,\ \sigma^2(X ^T X)^{-1}\big)$$

    The estimator s2 will be proportional to the chi-squared distribution:

    $$s^2\ \sim\ \frac{\sigma^2}{n-p} \cdot \chi^2_{n-p}$$

Generalized method of moments

:   In econometrics, the generalized method of moments (GMM) is a generic
    method for estimating parameters in statistical models. Usually it is
    applied in the context of semiparametric models, where the parameter of
    interest is finite-dimensional, whereas the full shape of the distribution
    function of the data may not be known, and therefore maximum likelihood
    estimation is not applicable.

    The method requires that a certain number of moment conditions were
    specified for the model. These moment conditions are functions of the model
    parameters and the data, such that their expectation is zero at the true
    values of the parameters. The GMM method then minimizes a certain norm of
    the sample averages of the moment conditions.

    The GMM estimators are known to be consistent, asymptotically normal, and
    efficient in the class of all estimators that do not use any extra
    information aside from that contained in the moment conditions.

    GMM was developed by Lars Peter Hansen in 1982 as a generalization of the
    method of moments which was introduced by Karl Pearson in 1894. Hansen
    shared the 2013 Nobel Prize in Economics in part for this work.

[Nonparametric regression - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Nonparametric_regression)

:   Gaussian process regression or Kriging

    Kernel regression

    Nonparametric multiplicative regression (NPMR) is a form of nonparametric
    regression based on multiplicative kernel estimation. Like other regression
    methods, the goal is to estimate a response (dependent variable) based on
    one or more predictors (independent variables). NPMR can be a good choice
    for a regression method if the following are true:

      - The shape of the response surface is unknown.
      - The predictors are likely to interact in producing the response; in
        other words, the shape of the response to one predictor is likely to
        depend on other predictors.
      - The response is either a quantitative or binary (0/1) variable.

    This is a smoothing technique that can be cross-validated and applied in a
    predictive way.

    NPMR behaves like an organism:

      - The local model
      - Overfitting controls

    Regression trees

Least absolute deviations

:   Least absolute deviations (LAD), also known as least absolute errors (LAE),
    least absolute value (LAV), least absolute residual (LAR), sum of absolute
    deviations, or the L1 norm condition, is a statistical optimality criterion
    and the statistical optimization technique that relies on it. Similar to
    the popular least squares technique, it attempts to find a function which
    closely approximates a set of data. In the simple case of a set of (x,y)
    data, the approximation function is a simple "trend line" in
    two-dimensional Cartesian coordinates. The method minimizes the sum of
    absolute errors (SAE) (the sum of the absolute values of the vertical
    "residuals" between points generated by the function and corresponding
    points in the data). The least absolute deviations estimate also arises as
    the maximum likelihood estimate if the errors have a Laplace distribution.

    We now seek estimated values of the unknown parameters that minimize the
    sum of the absolute values of the residuals:

    $$S = \sum_{i=1}^n |y_i - f(x_i)|. $$

    ------------------------    ------------------------------------
    Least squares regression    Least absolute deviations regression
    ------------------------    ------------------------------------
    Not very robust             Robust
    Stable solution             Unstable solution
    Always one solution         Possibly multiple solutions
    ------------------------    ------------------------------------

Consistent estimator

:   In statistics, a consistent estimator or asymptotically consistent
    estimator is an estimator—a rule for computing estimates of a parameter θ0—
    having the property that as the number of data points used increases
    indefinitely, the resulting sequence of estimates converges in probability
    to θ0. This means that the distributions of the estimates become more and
    more concentrated near the true value of the parameter being estimated, so
    that the probability of the estimator being arbitrarily close to θ0
    converges to one.

    ![`{T1, T2, T3, …}` is a sequence of estimators for parameter θ0, the true
        value of which is 4. This sequence is consistent: the estimators are
        getting more and more concentrated near the true value θ0; at the same
        time, these estimators are biased. The limiting distribution of the
        sequence is a degenerate random variable which equals θ0 with
        probability 1.](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Consistency_of_estimator.svg/375px-Consistency_of_estimator.svg.png)

    Bias versus consistency

    :   Bias is related to consistency as follows: a sequence of estimators is
        consistent if and only if it converges to a value and the bias converges to
        zero.

        Unbiased but not consistent

        Biased but consistent

Observational error

:   Observational error (or measurement error) is the difference between a
    measured value of quantity and its true value. In statistics, an error is
    not a "mistake". Variability is an inherent part of things being measured
    and of the measurement process.

    Measurement errors can be divided into two components: random error and
    systematic error. Random errors are errors in measurement that lead to
    measurable values being inconsistent when repeated measures of a constant
    attribute or quantity are taken. Systematic errors are errors that are not
    determined by chance but are introduced by an inaccuracy (as of observation
    or measurement) inherent in the system. Systematic error may also refer
    to an error having a nonzero mean, so that its effect is not reduced when
    observations are averaged.

    Systematic versus random error

    :   Sources of systematic error

          - Imperfect calibration

          - Quantity

            Systematic errors can be either constant, or related (e.g. proportional
            or a percentage) to the actual value of the measured quantity, or even
            to the value of a different quantity

          - Drift

        Sources of random error

        The random or stochastic error in a measurement is the error that is
        random from one measurement to the next. Stochastic errors tend to be
        normally distributed when the stochastic error is the sum of many
        independent random errors because of the central limit theorem.
        Stochastic errors added to a regression equation account for the
        variation in Y that cannot be explained by the included Xs.

        The term "observational error" is also sometimes used to refer to
        response errors and some other types of non-sampling error. In
        survey-type situations, these errors can be mistakes in the collection
        of data, including both the incorrect recording of a response and the
        correct recording of a respondent's inaccurate response. These sources
        of non-sampling error are discussed in Salant and Dillman (1995) and
        Bland and Altman (1996).

Estimator

:   In statistics, an estimator is a rule for calculating an estimate of a
    given quantity based on observed data: thus the rule (the estimator), the
    quantity of interest (the estimand) and its result (the estimate) are
    distinguished.

    There are point and interval estimators. The point estimators yield
    single-valued results, although this includes the possibility of single
    vector-valued results and results that can be expressed as a single
    function. This is in contrast to an interval estimator, where the result
    would be a range of plausible values (or vectors or functions).

    Estimation theory is concerned with the properties of estimators; that is,
    with defining properties that can be used to compare different estimators
    (different rules for creating estimates) for the same quantity, based on
    the same data. Such properties can be used to determine the best rules to
    use under given circumstances. However, in robust statistics, statistical
    theory goes on to consider the balance between having good properties, if
    tightly defined assumptions hold, and having less good properties that hold
    under wider conditions.

    TODO

Bayesian statistics

:   Bayesian linear regression

    Bayesian inference

    TODO

Statistical hypothesis testing

Bootstrapping (statistics)

Maximum likelihood

refs and see also

  - [Bayesian inference - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Bayesian_inference)
  - [Bernoulli distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Bernoulli_distribution)
  - [Beta distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Beta_distribution)
  - [Binomial distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Binomial_distribution)
  - [Bootstrapping (statistics) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Bootstrapping_(statistics))
  - [Chi-squared distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Chi-squared_distribution)
  - [Classical definition of probability - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Classical_definition_of_probability)
  - [Confidence interval - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Confidence_interval)
  - [Consistent estimator - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Consistent_estimator)
  - [Consistent estimator - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Consistent_estimator)
  - [Covariance - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Covariance)
  - [Cumulative distribution function - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Cumulative_distribution_function)
  - [Error function - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Error_function)
  - [Estimator - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Estimator)
  - [Expected value - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Expected_value)
  - [Expected value - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Expected_value)
  - [Exponential distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Exponential_distribution)
  - [F-distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/F-distribution)
  - [Gamma distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Gamma_distribution)
  - [Generalized method of moments - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Generalized_method_of_moments)
  - [Hypergeometric distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Hypergeometric_distribution)
  - [Independent and identically distributed random variables - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Independent_and_identically_distributed_random_variables)
  - [Joint probability distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Joint_probability_distribution)
  - [Least absolute deviations - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Least_absolute_deviations)
  - [Least squares - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Least_squares)
  - [Linear regression - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Linear_regression)
  - [Marginal distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Marginal_distribution)
  - [Marginal distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Marginal_distribution)
  - [Maximum likelihood - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Maximum_likelihood)
  - [Monte Carlo method - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Monte_Carlo_method)
  - [Negative binomial distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Negative_binomial_distribution)
  - [Nonlinear regression - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Nonlinear_regression)
  - [Nonparametric regression - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Nonparametric_regression)
  - [Normal distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Normal_distribution)
  - [Observational error - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Observational_error#Systematic_versus_random_error)
  - [Ordinary least squares - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Ordinary_least_squares)
  - [Poisson distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Poisson_distribution)
  - [Poisson limit theorem - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Poisson_limit_theorem)
  - [Probability - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Probability)
  - [Probability mass function - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Probability_mass_function)
  - [Probability theory - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Probability_theory)
  - [Q-function - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Q-function)
  - [Regression analysis - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Regression_analysis)
  - [Residual sum of squares - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Residual_sum_of_squares)
  - [Sampling (statistics) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Sampling_(statistics))
  - [Standard error - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Standard_error)
  - [Standard score - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Standard_score)
  - [Stanine - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Stanine)
  - [Statistical hypothesis testing - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing)
  - [Student's t-distribution - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Student%27s_t-distribution)
  - [Survey methodology - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Survey_methodology)
  - [Tolerance interval - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Tolerance_interval)
  - [Uniform distribution (continuous) - Wikipedia, the free encyclopedia]
  - [Uniform distribution (discrete) - Wikipedia, the free encyclopedia]
  - [Variance - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Variance)
  - [t-statistic - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/T-statistic)

[Uniform distribution (continuous) - Wikipedia, the free encyclopedia]: https://en.wikipedia.org/wiki/Uniform_distribution_(continuous)
[Uniform distribution (discrete) - Wikipedia, the free encyclopedia]: https://en.wikipedia.org/wiki/Uniform_distribution_(discrete)
