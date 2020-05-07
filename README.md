# solace-codelab-bootstrap

This is a small bootstrap for developing codelabs.

## What's a Codelab?

"Codelabs are interactive instructional tutorials, which can be authored in Google Docs using some simple formatting conventions. You can also author codelabs using markdown syntax. This repo contains all the tools and documentation you’ll need for building and publishing your own codelabs."

## What does this bootstrap do for me?

This bootstrap automates filling in some of Solace specific values in the Codelab boilerplate, as well as give you a filewatcher that will automatically rebuild your codelab every time you save the main markdown file.

## Getting started

This bootstrap assumes you have Node.js on your computer. If you don't, download it [here](https://nodejs.org/en/).

First, clone this repository and install the dependencies required to run nodemon:

```
git clone https://github.com/andrew-j-roberts/solace-codelab-bootstrap.git
cd solace-codelab-bootstrap
npm i
```

Then, replace `<unique name of your codelab>` in the command below, run it, and get to work:

```
chmod +x init.sh
./init.sh <unique name of your codelab>
```

If you use a Windows PC, I'd love for you to make a PR against this repo to include Powershell commands :)
