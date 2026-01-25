# Seamless Glance

Seamless Glance is a fast, read-only terminal UI (TUI) for AWS that helps you
quickly understand account health, risk, and context without living in the AWS
Console or chaining dozens of CLI commands.

Think k9s for AWS, focused on signal rather than inventory.

---

## What Seamless Glance Is

Seamless Glance is a local-first AWS inspection tool designed for engineers who
already know AWS and want answers fast.

- Is this account healthy?
- What deserves attention right now?
- Do I need to open the console, and where?

It does not replace the AWS Console.
It helps you decide when to use it.

---

## Key Features

### High-signal account overview

- Clear account health status
- Explicit issues called out such as alarms, stopped resources, and rotation gaps
- Clean separation between health and inventory

### Deep inspection without leaving the terminal

- Cursor to any resource and press:
  - d to view full AWS SDK-backed details
  - o to open the exact AWS Console page for that resource
- Works consistently across all supported services

### Supported AWS services

- EC2
- ECS
- Lambda
- RDS
- API Gateway (REST and HTTP)
- SQS (including DLQs)
- Load Balancers
- VPCs and subnets
- Secrets Manager
- CloudWatch alarms

### Thoughtful defaults

- Region switching with left and right arrows
- Command palette using /
- Keyboard-driven navigation
- No background refresh loops

### Trust-first by design

- Runs entirely locally
- No telemetry
- No analytics
- No background agents
- Uses the official AWS SDKs only

---

## Installation

### macOS (Homebrew)

```bash
brew tap fells-code/seamless
brew install seamless-glance

# or directly
brew install fells-code/seamless/seamless-glance
```

Run with:

```bash
glance
```

The seamless-glance command also works.

---

### macOS and Linux (single binary)

```bash
curl -fsSL https://seamlessglance.com/install.sh | bash
```

---

## License and Trial

Seamless Glance includes a 30-day free trial.

- No signup
- No network checks
- Trial license generated locally on first run

After purchase, place your license file at:

```
~/.seamless-glance/license.json
```

Check license status at any time:

```bash
glance --license-status
```

---

## AWS Credentials

Seamless Glance uses the same credential resolution chain as the AWS CLI:

- AWS_PROFILE
- ~/.aws/credentials
- ~/.aws/config
- Environment variables
- AWS SSO

Example:

```bash
export AWS_PROFILE=prod
glance
```

---

## Cost Data Behavior

- Cost Explorer data is fetched at most once every 24 hours
- Results are cached locally
- No background polling
- No repeated billable calls

Cost data lives in the Cost view, not the header.

---

## Inspecting Network Traffic

Seamless Glance communicates only with AWS service endpoints.

If you want to verify this yourself, see:

https://seamlessglance.com/network

That page walks through inspecting traffic using tcpdump, Wireshark, HTTPS
proxies, and AWS SDK debug logging.

---

## Keyboard Shortcuts

| Key           | Action                       |
| ------------- | ---------------------------- |
| Up or Down    | Move cursor                  |
| d             | Describe selected resource   |
| o             | Open resource in AWS Console |
| r             | Refresh current view         |
| /             | Command palette              |
| Left or Right | Switch region                |
| ?             | Help                         |
| q             | Quit                         |

---

## Who This Is For

Seamless Glance is built for:

- DevOps engineers
- Platform engineers
- SREs
- Consultants working across multiple AWS accounts
- Engineers who want fast context without console fatigue

It is especially useful for:

- Daily sanity checks
- Incident response
- Auditing unfamiliar AWS accounts
- Explaining account state during calls or screen shares

---

## License

Seamless Glance is commercial software.
A valid license, trial or paid, is required to run the application.

---

## Support and Issues

Please open issues or feature requests here:

https://github.com/fells-code/seamless-glance-distro/issues
