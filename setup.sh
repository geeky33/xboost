#!/bin/bash

# Create base project folder
mkdir -p viralx
cd viralx || exit

echo "Creating Chrome Extension folder structure..."
mkdir -p extension/{src/{background,content,ui,utils,styles,assets/icons},}
touch extension/manifest.json
touch extension/package.json
touch extension/tsconfig.json

# Content scripts
touch extension/src/background/serviceWorker.ts
touch extension/src/content/exploreTrends.ts
touch extension/src/content/feedScanner.ts
touch extension/src/content/composerHooks.ts
touch extension/src/content/vaultButtons.ts
touch extension/src/content/visualizer.ts

# UI
touch extension/src/ui/popup.html
touch extension/src/ui/popup.tsx
touch extension/src/ui/panel.tsx

# Utils
touch extension/src/utils/metrics.ts
touch extension/src/utils/dom.ts
touch extension/src/utils/storage.ts
touch extension/src/utils/apiClient.ts

# Styles
touch extension/src/styles/content.css
touch extension/src/styles/popup.css

echo "Creating Backend (web-proxy) folder structure..."
mkdir -p web-proxy/src/{app/api/{generate-tweet,reply-guy,visual-hook},lib,prompts}
touch web-proxy/package.json
touch web-proxy/tsconfig.json
touch web-proxy/.env.local

# API routes
touch web-proxy/src/app/api/generate-tweet/route.ts
touch web-proxy/src/app/api/reply-guy/route.ts
touch web-proxy/src/app/api/visual-hook/route.ts

# Lib
touch web-proxy/src/lib/llm.ts
touch web-proxy/src/lib/env.ts
touch web-proxy/src/lib/storage.ts

# Prompts
touch web-proxy/src/prompts/trendTweetPrompt.ts
touch web-proxy/src/prompts/replyGuyPrompt.ts
touch web-proxy/src/prompts/bridgePrompt.ts

# README
touch README.md

echo "Folder structure created successfully!"
