#!/bin/bash

# Prompt for app name
read -p "Enter new app name: " app_name

# Define source and destination
SRC_DIR="./apps/_template"
DEST_DIR="./apps/$app_name"

# Check if destination already exists
if [ -d "$DEST_DIR" ]; then
  echo "❌ Error: Directory $DEST_DIR already exists."
  exit 1
fi

# Create destination directory
mkdir -p "$DEST_DIR"

# List of files/folders to copy
FILES_TO_COPY=(
  "app"
  "eslint.config.js"
  "next-env.d.ts"
  "next.config.js"
  "package.json"
  "postcss.config.js"
  "public"
  "tsconfig.json"
  ".gitignore"
)

# Copy each file/folder
for item in "${FILES_TO_COPY[@]}"; do
  cp -r "$SRC_DIR/$item" "$DEST_DIR/"
done

# Update package.json name
PACKAGE_JSON="$DEST_DIR/package.json"
if [ -f "$PACKAGE_JSON" ]; then
  sed -i '' "s/\"name\": \".*\"/\"name\": \"$app_name\"/" "$PACKAGE_JSON"
  echo "✅ Updated package name to \"$app_name\" in $PACKAGE_JSON"
else
  echo "⚠️  Warning: package.json not found in $DEST_DIR"
fi

echo "📦 Running pnpm install in $DEST_DIR..."
pnpm install

echo "✅ App \"$app_name\" created successfully at $DEST_DIR"
