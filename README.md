# Chattery

> A GitHub action that creates chatrooms for pull requests

This action takes advantage of [talky.io](https://talky.io) to generate on demand chatrooms with video, audio and screen sharing support. This makes it easier for distributed teams to collaborate _face-to-face_ in real time rather than waiting on comments or having to schedule in person code reviews.

![image](https://user-images.githubusercontent.com/1457604/66412035-a9183380-e9ec-11e9-83b6-8dd6c588333f.png)

## Features

- 💻 Audio, video, text and screen sharing capable chatrooms
- 🔐 Peer-to-peer WebRTC connection between clients
- 📦 No plugins or browser extensions required
- 🛒 Install from the GitHub Marketplace
- 💸 Unlimited chat rooms for free

## Usage

- Requires the `GITHUB_TOKEN` secret.

### Sample workflow

```yml
name: PR
on: pull_request
jobs:
  chattery:
    name: chattery
    runs-on: ubuntu-latest
    steps:
      - name: post comment
        uses: lukejacksonn/chattery@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
