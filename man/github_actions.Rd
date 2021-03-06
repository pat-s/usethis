% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/github-actions.R
\name{github_actions}
\alias{github_actions}
\alias{use_github_actions}
\alias{use_github_actions_badge}
\title{GitHub Actions setup and badges}
\usage{
use_github_actions()

use_github_actions_badge(name = "R-CMD-check", repo_spec = NULL)
}
\arguments{
\item{name}{Specifies the workflow whose status the badge will report. This
is the \code{name} keyword that appears in the workflow \code{.yaml} file.}

\item{repo_spec}{Optional GitHub repo specification in this form: \code{owner/repo}. This can usually be inferred from the GitHub remotes of active project.}
}
\description{
Sets up continuous integration (CI) for an R package that is developed on
GitHub using \href{https://github.com/features/actions}{GitHub Actions}. CI can be
used to trigger various operations for each push or pull request, such as:
\itemize{
\item Run \verb{R CMD check} on various operating systems and R versions
\item Build and deploy a pkgdown site
\item Determine test coverage
}

This family of functions
\itemize{
\item Adds the necessary configuration files and lists them in \code{.Rbuildignore}.
\item Provides the markdown to insert a badge into your README.
}
}
\section{\code{use_github_actions()}}{

Configures a basic \verb{R CMD check} workflow on GitHub Actions by adding a
standard \code{R-CMD-check.yaml} file to the \code{.github/workflows} directory of the
active project.
}

\section{\code{use_github_actions_badge()}}{

Generates a GitHub Actions badge and that's all. It does not configure a
workflow.
}

\seealso{
\itemize{
\item \code{\link[=use_github_action]{use_github_action()}} sets up specific, individual actions, e.g. test
coverage or pkgdown build and deploy.
\item \code{\link[=use_tidy_github_actions]{use_tidy_github_actions()}} sets up the standard GitHub Actions used for
tidyverse packages.
}
}
