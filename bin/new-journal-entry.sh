#!/bin/bash
set -euo pipefail

echo "Creating a new journal entry..."
dt=$(date '+%F')
filename="${dt}.md"
path="./src/content/journal/${filename}"
template=$(cat <<TEMPLATE
---
title: '${dt}'
tags: []
draft: true
---
TEMPLATE
)

echo "${template}" > "${path}"
