#!/usr/bin/env bash

set -e

PROJECT_ROOT="$1"

# Root
mkdir -p "$PROJECT_ROOT"
touch "$PROJECT_ROOT/README.md"
touch "$PROJECT_ROOT/.gitignore"

# -----------------------------
# docs
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs"
touch "$PROJECT_ROOT/docs/00-index.md"

# -----------------------------
# docs/standards
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/standards"
touch "$PROJECT_ROOT/docs/standards/naming.md"
touch "$PROJECT_ROOT/docs/standards/audio-format.md"
touch "$PROJECT_ROOT/docs/standards/track-color-tags.md"
touch "$PROJECT_ROOT/docs/standards/stem-policy.md"
touch "$PROJECT_ROOT/docs/standards/versioning.md"

# -----------------------------
# docs/reaper
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/reaper"
touch "$PROJECT_ROOT/docs/reaper/baseline-project.md"
touch "$PROJECT_ROOT/docs/reaper/preferences.md"
touch "$PROJECT_ROOT/docs/reaper/routing-conventions.md"
touch "$PROJECT_ROOT/docs/reaper/track-templates.md"
touch "$PROJECT_ROOT/docs/reaper/render-queue-presets.md"
touch "$PROJECT_ROOT/docs/reaper/shortcuts-and-actions.md"

# -----------------------------
# docs/sources
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/sources"
touch "$PROJECT_ROOT/docs/sources/README.md"
touch "$PROJECT_ROOT/docs/sources/source-inventory.md"

# -----------------------------
# docs/sources/rigs
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/sources/rigs"
touch "$PROJECT_ROOT/docs/sources/rigs/README.md"

RIGS=(
  "sm7b-vocal-lead"
  "sm7b-vocal-harmony"
  "guitar-rhythm-stereo-full"
  "guitar-live-stereo-full"
  "guitar-rhythm-di-hiz-1"
  "guitar-rhythm-di-hiz-2"
  "guitar-lead-di-hiz-1"
  "guitar-lead-di-hiz-2"
  "virtual-bass-midi"
  "virtual-drums-midi"
)

for rig in "${RIGS[@]}"; do
  mkdir -p "$PROJECT_ROOT/docs/sources/rigs/$rig"
  touch "$PROJECT_ROOT/docs/sources/rigs/$rig/README.md"
  touch "$PROJECT_ROOT/docs/sources/rigs/$rig/chain.md"
  touch "$PROJECT_ROOT/docs/sources/rigs/$rig/routing.md"
  touch "$PROJECT_ROOT/docs/sources/rigs/$rig/gain-staging.md"
done

# -----------------------------
# docs/sources/photos
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/sources/photos"
touch "$PROJECT_ROOT/docs/sources/photos/README.md"

mkdir -p "$PROJECT_ROOT/docs/sources/photos/sm7b"
mkdir -p "$PROJECT_ROOT/docs/sources/photos/guitar-cab"
mkdir -p "$PROJECT_ROOT/docs/sources/photos/patchbay"
mkdir -p "$PROJECT_ROOT/docs/sources/photos/room"

# -----------------------------
# docs/workflows
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/workflows"
touch "$PROJECT_ROOT/docs/workflows/composition-setup.md"
touch "$PROJECT_ROOT/docs/workflows/start-a-song.md"
touch "$PROJECT_ROOT/docs/workflows/tracking-pass.md"
touch "$PROJECT_ROOT/docs/workflows/editing-pass.md"
touch "$PROJECT_ROOT/docs/workflows/mix-print.md"
touch "$PROJECT_ROOT/docs/workflows/mastering-delivery.md"
touch "$PROJECT_ROOT/docs/workflows/session-recovery.md"

# -----------------------------
# docs/album
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/album"
touch "$PROJECT_ROOT/docs/album/working-sequence.md"
touch "$PROJECT_ROOT/docs/album/solstice-reviews.md"
touch "$PROJECT_ROOT/docs/album/decisions-log.md"

# -----------------------------
# docs/songs
# -----------------------------
mkdir -p "$PROJECT_ROOT/docs/songs"
touch "$PROJECT_ROOT/docs/songs/README.md"

mkdir -p "$PROJECT_ROOT/docs/songs/01-the-last-mile"
touch "$PROJECT_ROOT/docs/songs/01-the-last-mile/README.md"
touch "$PROJECT_ROOT/docs/songs/01-the-last-mile/decisions.md"
touch "$PROJECT_ROOT/docs/songs/01-the-last-mile/notes.md"
touch "$PROJECT_ROOT/docs/songs/01-the-last-mile/refs.md"
touch "$PROJECT_ROOT/docs/songs/01-the-last-mile/rig-overrides.md"

# -----------------------------
# manifests
# -----------------------------
mkdir -p "$PROJECT_ROOT/manifests"
touch "$PROJECT_ROOT/manifests/audio-storage-map.md"
touch "$PROJECT_ROOT/manifests/checksums.md"
touch "$PROJECT_ROOT/manifests/exports-log.md"

# -----------------------------
# scripts
# -----------------------------
mkdir -p "$PROJECT_ROOT/scripts"
touch "$PROJECT_ROOT/scripts/README.md"
touch "$PROJECT_ROOT/scripts/make-manifest.sh"
touch "$PROJECT_ROOT/scripts/checksum-audio.sh"
touch "$PROJECT_ROOT/scripts/package-mastering-delivery.sh"

# -----------------------------
# templates
# -----------------------------
mkdir -p "$PROJECT_ROOT/templates"
touch "$PROJECT_ROOT/templates/song-readme.template.md"
touch "$PROJECT_ROOT/templates/rig-readme.template.md"
touch "$PROJECT_ROOT/templates/session-notes.template.md"

echo "Scaffold created for $PROJECT_ROOT"