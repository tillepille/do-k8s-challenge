# Journey

## Prequel

I came across the Digital Ocean Kubernetes Challenge via Twitter and thought _yeah, I should spend even more time in front of my computer!_
But then, how to decide for a challenge? Should I do an easy one? _I'm already doing complicated things at work, maybe go easy.._
While scrolling up and down, I decided to simply go for the last one. And this happened to be the **Crossplane** Challenge!

So here we are.

There were not many restrictions how to do that challenge, I decided to simply document my little journey through the challenge, so this is more a step by step guide, maybe with an roundup at the end.

## Part 1

As the description says _"like Terraform but you manage the infra from inside"_ I thought its a good idea to use Terraform at least for the provisioning of the cluster and basic Crossplane setup via Helm. (TODO Links)

As this is rather a simple and small project, without environments and dozens of modules, I just split the files by duty and we're good to go.

And since I'm awaiting the credits for the project, and my flatmate is already waiting with the pizza, I'll close for now.. :)

## Part 2

Today I had some spare hours, so I made my terraform code a little more robust and used `terraform fmt` to adhere to formatting standards.
Now crossplane gets deployed in its dedicated namespace

Now comes the tricky part: Getting up the [DigitalOcean Provider](https://github.com/crossplane-contrib/provider-digitalocean)!
Unfortunately I'm no real expert in Go and operators for Kubernetes, and the documentation is by no means complete.
But, you know, OOP is OOP, right? Except, I do yaml all day long!

After and hour or two after getting distracted by so many things in the makefile, in the code, in the [godo library](https://github.com/digitalocean/godo) and in the Go language itself, I finally made myself enough comfortable to run the operator locally and see what happens.
All you need is `go run cmd/provider/main.go`!
Then I tried the provided example, but found out it didn't work, because crossplane expects an annotation of `crossplane.io/external-name` on the resource. After setting this (and creating a [PR](https://github.com/crossplane-contrib/provider-digitalocean/pull/25)) it worked! :tada:

## Part 3

So since the operator is not that fully fledged to create all resources DigitalOcean is offering, its time to brush up my Go skills (and programming in general) and create some more PRs! 

I always find it intimidating to start working on big projects which have a big and active community, I don't want to be the idiot who didn't understand anything. But this project seems to be a good fit for me and now. I love the Kubernetes Ecosystem, always wanted to learn more Go and its not a complete useless project like the 37,293,484th ToDo or Calculator App.

## Wrapup

TBD - Not yet completely done!
