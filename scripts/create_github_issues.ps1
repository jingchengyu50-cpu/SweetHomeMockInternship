# Creates and closes Tasks 2–4 issues on your fork. Requires: gh auth login
$ErrorActionPreference = "Stop"
$repo = "jingchengyu50-cpu/SweetHomeMockInternship"

function New-InternshipIssue($title, $body) {
  $issueUrl = gh issue create --repo $repo --title $title --body $body
  gh issue close $issueUrl --repo $repo --comment "Completed in commit d92b426 and follow-up submission evidence."
  return $issueUrl
}

New-InternshipIssue "[Task 2] Editable furniture description" @"
## Goal
Users can edit and save the Description field in Modify furniture.

## Acceptance checklist
- [x] Reproduced disabled description field in starter code.
- [x] Enabled DESCRIPTION in HomeFurnitureController.
- [x] Smoke test passes.
- [x] StudentFeaturesTest#descriptionIsEditable passes.
- [x] Manually verified in Modify furniture dialog.
- [x] submissions/task2-description.png added.
"@

New-InternshipIssue "[Task 3] Volume column" @"
## Goal
Show sortable Volume (width × depth × height) in the furniture table and menus.

## Acceptance checklist
- [x] Added getVolume and VOLUME sortable property.
- [x] Default column on new homes; table, menus, and English strings.
- [x] StudentFeaturesTest volume tests pass.
- [x] submissions/task3-volume.png added.
"@

New-InternshipIssue "[Task 4] Print every level" @"
## Goal
Print all viewable levels: full furniture table with Level column plus one plan per level.

## Acceptance checklist
- [x] Updated HomePrintableComponent, FurnitureTable print, and PlanComponent.print.
- [x] Restores selected level after printing.
- [x] StudentFeaturesTest plan printing test passes.
- [x] submissions/task4-all-levels.png or PDF added.
"@

Write-Host "Done. Verify with: gh issue list --repo $repo --state closed"