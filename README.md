# Digital Ocean Kubernetes Challenge

Original Blogpost: [digitalocean.com/community/pages/kubernetes-challenge](https://www.digitalocean.com/community/pages/kubernetes-challenge#anchor--challenges)

## Project Description

_Deploy a solution for configuring Kubernetes "from the inside"_
Install Crossplane, which is like Terraform but you manage the infra from inside Kubernetes, not from outside. Crossplane is an open source Kubernetes add-on that enables platform teams to assemble infrastructure from multiple vendors, and expose higher level self-service APIs for application teams to consume, without having to write any code.

## Documentation

I wrote about my journey with this challenge [here](docs/journey.md).
_Maybe this becomes a blogpost eventually._

In case you want try out what I build, follow the following steps.

### How to set up

This will create a baseline Kubernetes cluster at DigitalOcean.
To deploy to your preferred region, add a `-var 'region=<YOUR_REGION>'` to step 3.

1. `cd installation/`
2. `terraform init`
3. `TF_VAR_do_token=xyz terraform apply`

After that, follow the documentation in the [Digital Ocean Provider](https://github.com/crossplane-contrib/provider-digitalocean).

I chose the local `go run`, since no official docker image is available at the time of writing.

### How to use

To create your first Droplet via Crossplane run:

```bash
$ kubectl apply -f https://raw.githubusercontent.com/crossplane-contrib/provider-digitalocean/main/examples/compute/droplet.yaml
```

_Simple as that!_
