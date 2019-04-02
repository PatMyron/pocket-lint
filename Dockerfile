FROM python:3

LABEL "com.github.actions.name"="Pocket_Lint"
LABEL "com.github.actions.description"="Automated Codebase Improvement"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="white"
LABEL "maintainer"="Pat Myron <pmyron@nd.edu>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    checkstyle \
    cppcheck \
    ffmpeg \
    findbugs \
    foodcritic \
    golint \
    hlint \
    imagemagick \
    jsonlint \
    linklint \
    lua-check \
    puppet-lint \
    pylint \
    python3-proselint \
    shellcheck \
    uncrustify \
    yamllint \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN pip install \
    flake8
SHELL ["/bin/bash", "-c"]
CMD flake8; shopt -s globstar nullglob dotglob; shellcheck **/*.{sh,bash,ksh,bashrc,bash_profile,bash_login,bash_logout}
