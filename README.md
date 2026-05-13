# Homebrew Tap For Seamless Glance

This repository provides the Homebrew formula for **Seamless Glance**.

Seamless Glance is a terminal-native AWS operations dashboard built for:

- fast triage
- wasted-resource discovery
- precise pivots into the AWS CLI and AWS Console

The tap exists to make macOS installation and upgrades straightforward through
Homebrew. The product itself lives in the main Seamless Glance repository, and
release binaries are published from the distro repository.

---

## Install

```bash
brew tap fells-code/seamless
brew install seamless-glance
```

Or directly:

```bash
brew install fells-code/seamless/seamless-glance
```

Run with:

```bash
glance
```

`seamless-glance` also works.

---

## What Seamless Glance Does

Seamless Glance helps engineers move quickly from:

**"Something looks wrong"** to **"We know what to inspect next."**

Current product capabilities include:

- Findings-first triage as the default landing workflow
- Account Overview as an inventory snapshot of the active AWS profile
- Cost Overview with cached billing, forecast, and usage-aware context
- Cost Savings recommendations tied to live resource signals
- in-terminal resource describe overlays with structured and JSON-oriented views
- AWS CLI handoff for supported resources
- exact AWS Console pivots for supported resources
- keyboard-first navigation, region switching, and command palette workflows

---

## Current AWS Coverage

Current first-class views include:

- Findings
- Account Overview
- Cost Overview
- Cost Savings
- EC2
- ECS
- Lambda
- RDS
- API Gateway
- Load Balancers
- Target Groups
- Security Groups
- SQS
- VPC
- Secrets Manager
- CloudWatch

Global aggregation currently exists for selected services, including EC2,
Lambda, and RDS.

---

## Current Findings Coverage

The current release includes findings such as:

- CloudWatch alarms in `ALARM`
- missing CloudWatch alarm coverage for deployed services
- stopped or low-CPU EC2 instances
- EC2 tag coverage gaps
- public security groups and sensitive exposed ports
- degraded or orphan target groups
- unhealthy or inactive load balancer paths
- SQS queues without DLQs or with large backlogs
- unavailable or production-like single-AZ RDS instances
- high-memory or stale Lambda functions
- stale or non-rotating secrets
- generic or stale API Gateway APIs
- default VPCs still present

---

## License And Trial

Seamless Glance includes a 365-day free trial for non-commercial use.

- No signup
- No network license checks
- Trial license generated locally on first run

Paid licenses are available at:

https://seamlessglance.com

License file location:

```text
~/.seamless-glance/license.json
```

Check status with:

```bash
glance --license-status
```

---

## AWS Credentials

Seamless Glance uses the standard AWS SDK credential chain, including:

- `AWS_PROFILE`
- `~/.aws/credentials`
- `~/.aws/config`
- environment variables
- AWS SSO

Example:

```bash
export AWS_PROFILE=prod
glance
```

---

## Cost Data Behavior

- Cost Explorer data is cached locally for 24 hours
- No background polling
- No repeated billing queries on every refresh
- cached cost data is reused by Cost Overview and Cost Savings

---

## Trust Model

- Runs entirely on the local machine
- No telemetry or analytics
- No background agents
- Uses official AWS SDKs
- No calls outside AWS APIs and operator-triggered browser opens

Verification guidance:

https://seamlessglance.com/verify

---

## Common Controls

### Navigation

- `f` Findings
- `/` command palette
- `Tab` / `Shift+Tab` cycle major views
- `1` Account Overview
- `2` Cost Overview
- `0` Cost Savings

### Actions

- `d` describe selected resource
- `v` toggle describe between structured and JSON-oriented views
- `c` show AWS CLI command for selected resource
- `o` open selected resource in AWS Console
- `s` prepare SSH command for selected EC2 instance
- `w` toggle wrapped detail mode on supported screens

### Movement

- `↑` / `↓` move selection or scroll
- `PgUp` / `PgDn` jump-scroll long content
- `Home` / `End` jump to top or bottom
- `←` / `→` switch region
- `g` jump to the synthetic global region slot
- `r` refresh
- `?` help
- `q` quit

---

## Related Repositories

- Release binaries and installer assets: https://github.com/fells-code/seamless-glance-distro
- Product site: https://seamlessglance.com

---

## Issues

For product bugs, feature requests, or release problems, open an issue here:

https://github.com/fells-code/seamless-glance-distro/issues
