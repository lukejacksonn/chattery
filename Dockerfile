FROM ruby:2.6.0

LABEL "com.github.actions.name"="chatter"
LABEL "com.github.actions.description"="Creates on demand chatrooms for pull requests"
LABEL "com.github.actions.repository"="https://github.com/lukejacksonn/chatter"
LABEL "com.github.actions.maintainer"="Luke Jackson <lukejacksonn@gmail.com>"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="blue"

RUN gem install octokit

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
