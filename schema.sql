-- Kearl Rotation: trips table. Run once in your existing Supabase project
-- (the same one as Pump & Dump): SQL Editor > New query > paste > Run.

create table if not exists public.trips (
  user_id    uuid not null default auth.uid() references auth.users(id) on delete cascade,
  id         text not null,
  data       jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, id)
);

-- Each person can only see and change their own trips.
alter table public.trips enable row level security;

drop policy if exists "own trips" on public.trips;
create policy "own trips" on public.trips for all to authenticated
  using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
