---
name: cloud-transfer
description: "Upload and sync files to cloud providers using reproducible rclone-based workflows."
---

# Cloud Transfer

Use this skill for deterministic file transfer/sync tasks where reproducibility and verification matter.

## Prerequisites

- explicit source path, destination path, and sync mode (`copy` vs `sync`)
- approved credential source (never commit secrets)
- retention/overwrite expectations

## Workflow

1. Validate rclone config and destination.
2. Run upload/sync with explicit source/target.
3. Verify transfer integrity and resulting URLs/paths.
4. Produce a concise transfer manifest (what moved, where, and checksum/size summary).

## Rails Touchpoints

When transfer scope includes Rails artifacts:

- treat `storage/` and user-uploaded blobs as sensitive data
- preserve environment boundaries (do not mix staging/prod datasets)
- include migration/backfill artifact references when transfer supports release rollout

## Context Discipline

- Load provider docs only for the active target backend; do not preload every provider reference.
