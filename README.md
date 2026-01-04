# Seamless Glance (Homebrew)

Seamless Glance is a **read-only terminal UI** for quickly understanding AWS environments without navigating the AWS Console.

It provides fast, contextual visibility into common AWS services directly from your terminal.

---

## Features

- Account overview with region, refresh status, and month-to-date cost
- EC2 instances (name, state, type, AZ)
- Lambda functions
- CloudWatch alarms (ALARM states highlighted)
- RDS instances
- Secrets Manager (rotation visibility only)
- ECS clusters and services
- API Gateway, SQS, VPC (basic views)

Seamless Glance is designed to work with **locked-down, read-only IAM roles** and does not perform any write actions.

---

## Installation (macOS)

### MacOS

This tap provides prebuilt binaries for macOS.

```bash
brew install fells-code/seamless/seamless-glance
```

To upgrade an existing installation:

```bash
brew upgrade seamless-glance
```

---

### Linux/MacOS Alternative

#### Curl Install

```bash
curl -fsSL https://seamlessglance.com/install.sh | bash
seamless-glance --version
```

Then run:

```bash
seamless-glance
```

After installation, place your license file at:

```bash
mv license.json ~/.seamless-glance/license.json
```

To get a license visit: https://seamlessglance.com

---

## Notes

- Seamless Glance is a commercial tool distributed under a proprietary license.
- This Homebrew tap is intended for convenience and distribution only.
- The AWS Console remains the source of truth for configuration and changes.

## Support

- Product site: https://seamlessglance.com
- Source Distribution: https://github.com/fells-code/seamless-glance-distro
- Issues and bugs: https://github.com/fells-code/seamless-glance-distro/issues
- Suport email: support@fellscode.com
- License assistance: licenses@fellscode.com

---

© Fells Code
