# Chatter

> A GitHub action that creates a WebRTC chatroom for pull requests

This action takes advantage of [talky.io](https://talky.io) to generate on demand chatrooms with video, audio and screen sharing support. Making it easier for teams to collaborate _face-to-face_ in real time rather than waiting on comments or setting up in person code reviews.

## Features

- Audio, video, text and screen sharing over WebRTC
- No plugins or browser extensions required
- Unlimited collaboration rooms
- Install from the GitHub Marketplace

## Usage

- Requires the `GITHUB_TOKEN` secret.

### Sample workflow

```yml
name: PR
on: pull_request
jobs:
  chatter:
    name: chatter
    runs-on: ubuntu-latest
    steps:
      - name: post comment
        uses: lukejacksonn/chatter@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
