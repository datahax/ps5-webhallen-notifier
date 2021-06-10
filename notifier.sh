#!/usr/bin/env bash

set -eu

notifier_name="${1:-}"
key="${2:-}"
push_url="https://maker.ifttt.com/trigger/$notifier_name/with/key/$key"

sleep_interval=5

# https://www.webhallen.com/se/product/300815-Playstation-5-Konsol-PS5
product_id=300815

while true; do
    echo "Checking..."

    available=$(curl -s "https://www.webhallen.com/api/product/$product_id" | jq .product.stock.web)

    if [ "$available" -gt 0 ]; then
        echo "Found available - sending push!"

        curl -s -X POST \
            -H "Content-Type: application/json" \
            -d '{"value1":"Time to order a PS5!"}' \
            "$push_url" > /dev/null

        break
    fi

    sleep $sleep_interval
done
