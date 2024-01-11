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
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/plausible-acorn.git`

Next build and run.

`acorn build -t plausible`

`acorn run -n plausible plausible`

Visit your acorn dashboard to see if your deployment was successful.

Click on the plausible deployment, and find the endpoint section on the right side panel.  This is your plausible instance link.

![plausible_acorn_ui](https://github.com/randall-coding/plausible-acorn/assets/39175191/57c5e3b5-0eb0-434c-ae5b-63b1e7bfdc09)

![plausible_endpoint](https://github.com/randall-coding/plausible-acorn/assets/39175191/8e68db74-40db-464a-a817-a399491626d8)

## Configure Plausible

Go to your acorn plausible URL. Then you'll be prompt to create your analytics account. Enter necessary information and click "Create my account".

!!create account


Then you'll be asked to enter your website URL and your timezone. Fill out those and you'll have the snippet to place that in your website.

!! domain form

Add the js snippet to your website.

!! js snippet

After completing all the steps, you'll see the dashboard of plausible where it's waiting for new analytics.

!! dashboard


Congratulations! The Plausible installation is now complete.

## Conclusion
That's all there is to it.  We've now got a Plausible server up and running from an acorn image.
For more detailed instructions on working with your Plausible server see the getting started and configuration documentation.

## References
* [Plausible Documentation](https://plausible.io/docs)
* [Plausible Self Hosting](https://plausible.io/docs/self-hosting)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
