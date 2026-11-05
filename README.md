# Kearl Rotation

A calendar for a 14 on / 14 off rotation at Kearl: on-site blocks, fly-in and fly-out days, Redstone paydays with hours paid, Alberta stat holidays, and vacation trips. Tap any day for its details. Trips that land on work days come off the payday that covers them.

Live at: https://gabrielsnmoraes-byte.github.io/kearl-rotation/

## How it's built
- Plain HTML and JavaScript, hosted free on GitHub Pages
- Sign-in and trip sync: the same Supabase project as Pump & Dump (its own `trips` table)
- Works offline: trips are kept on the phone and sync when signal returns

## Setup (one time)
1. In Supabase, open **SQL Editor**, paste `schema.sql`, and run it.
2. In **Authentication > URL Configuration > Redirect URLs**, add the live address above.

## Assumptions in the calendar
- Rotation starts Sep 10, 2026 (first on-site day), repeating every 28 days.
- Paydays every second Friday from Sep 18, 2026. Each cheque pays 12 h per on-site day in the two weeks ending the Monday before payday, which gives the 60 h / 108 h alternation.
