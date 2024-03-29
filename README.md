# Launch your own Plausible server

## Plausible
Plausible is a web analytics platform that prioritizes user privacy by offering simple, ethical, and privacy-friendly tracking for website owners. It empowers users with insightful data while respecting their digital rights and fostering transparency in online analytics.

For simplicity, we'll deploy our Plausible server using an acorn image.


## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
[CLICK HERE](https://acorn.io/run/ghcr.io/randall-coding/acorn/plausible?ref=randall-coding) to deploy the acorn from a pre-made image and then click "Deploy".

Once the server deploys, click on the plausible deployment ui, and find the endpoint section on the right side panel.  This is your plausible instance link.

![plausible_acorn_ui](https://github.com/randall-coding/plausible-acorn/assets/39175191/57c5e3b5-0eb0-434c-ae5b-63b1e7bfdc09)

![plausible_endpoint](https://github.com/randall-coding/plausible-acorn/assets/39175191/8e68db74-40db-464a-a817-a399491626d8)

## Configure Plausible

Go to your acorn plausible URL. You'll then be prompted to create your analytics account. Enter the necessary information and click "Create my account".

<img width="541" alt="295516910-017d3458-926c-4c29-89ff-ae0343c046e0" src="https://github.com/randall-coding/plausible-acorn/assets/39175191/858d11b6-7149-403a-b2d7-6dfa6ab6f692">

Next you'll be asked to enter your website URL and your timezone. Fill out those and you'll be given a snippet to place into your target website.

<img width="535" alt="295517077-f69c501e-3c6e-460b-b610-a63a2325fefa" src="https://github.com/randall-coding/plausible-acorn/assets/39175191/1260f34b-acd8-4bd6-a7c3-27e096fad19a">

Add the js snippet to your website (that part is up to you) and click "Start collecting data".

<img width="576" alt="295517181-002eb3fd-11eb-4990-ad5f-626abde91768" src="https://github.com/randall-coding/plausible-acorn/assets/39175191/2cf551b9-7fcc-4dfa-8c9c-8ab73b6f583a">

After completing all the steps, you'll see the dashboard of plausible with a list of the websites you are monitoring.

<img width="681" alt="295795819-79d35b4f-03fd-48e1-b83b-851f4dabdfb6" src="https://github.com/randall-coding/plausible-acorn/assets/39175191/4add912f-68b9-4e5a-90bf-84cc4df2b820">

## Conclusion
That's all there is to it.  You now have a Plausible server up and running from an acorn image.
For more detailed instructions on working with your Plausible server see the getting started and configuration documentation.

## References
* [Plausible Documentation](https://plausible.io/docs)
* [Plausible Self Hosting](https://plausible.io/docs/self-hosting)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
