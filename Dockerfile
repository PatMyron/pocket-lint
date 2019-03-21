FROM python:3

LABEL "com.github.actions.name"="pocketLint"
LABEL "com.github.actions.description"="Automated Codebase Improvement"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="white"
LABEL "maintainer"="Pat Myron <pmyron@nd.edu>"

ENTRYPOINT echo hello