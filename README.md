# ps5-webhallen-notifier

Get notified when a PS5 is available to order from
[Webhallen](https://www.webhallen.se).

The script uses Webhallen's open API and [IFTTT](https://ifttt.com/) to send
push notifications to your mobile.

## Prerequisites

* `curl`
* [`jq`](https://stedolan.github.io/jq/)

## Usage

* [Setup IFTTT for push
  notifications](https://betterprogramming.pub/how-to-send-push-notifications-to-your-phone-from-any-script-6b70e34748f6)
* Run `bash notifier.sh <notifier-name> <ifttt-webhook-key>`
* Wait for push
* ???
* Profit!
