alter table "public"."bookings" drop constraint "bookings_cabinID_fkey";

alter table "public"."bookings" drop constraint "bookings_guestID_fkey";

alter table "public"."bookings" drop column "cabinID";

alter table "public"."bookings" drop column "guestID";

alter table "public"."bookings" add column "cabinId" bigint;

alter table "public"."bookings" add column "guestId" bigint;

alter table "public"."bookings" add constraint "bookings_cabinId_fkey" FOREIGN KEY ("cabinId") REFERENCES public.cabins(id) not valid;

alter table "public"."bookings" validate constraint "bookings_cabinId_fkey";

alter table "public"."bookings" add constraint "bookings_guestId_fkey" FOREIGN KEY ("guestId") REFERENCES public.guests(id) not valid;

alter table "public"."bookings" validate constraint "bookings_guestId_fkey";

grant delete on table "public"."bookings" to "postgres";

grant insert on table "public"."bookings" to "postgres";

grant references on table "public"."bookings" to "postgres";

grant select on table "public"."bookings" to "postgres";

grant trigger on table "public"."bookings" to "postgres";

grant truncate on table "public"."bookings" to "postgres";

grant update on table "public"."bookings" to "postgres";

grant delete on table "public"."cabins" to "postgres";

grant insert on table "public"."cabins" to "postgres";

grant references on table "public"."cabins" to "postgres";

grant select on table "public"."cabins" to "postgres";

grant trigger on table "public"."cabins" to "postgres";

grant truncate on table "public"."cabins" to "postgres";

grant update on table "public"."cabins" to "postgres";

grant delete on table "public"."guests" to "postgres";

grant insert on table "public"."guests" to "postgres";

grant references on table "public"."guests" to "postgres";

grant select on table "public"."guests" to "postgres";

grant trigger on table "public"."guests" to "postgres";

grant truncate on table "public"."guests" to "postgres";

grant update on table "public"."guests" to "postgres";

grant delete on table "public"."settings" to "postgres";

grant insert on table "public"."settings" to "postgres";

grant references on table "public"."settings" to "postgres";

grant select on table "public"."settings" to "postgres";

grant trigger on table "public"."settings" to "postgres";

grant truncate on table "public"."settings" to "postgres";

grant update on table "public"."settings" to "postgres";


  create policy "Enable delete access for all users"
  on "public"."bookings"
  as permissive
  for delete
  to public
using (true);



  create policy "Enable insert access for all users"
  on "public"."bookings"
  as permissive
  for insert
  to public
with check (true);



  create policy "Enable update access for all users"
  on "public"."bookings"
  as permissive
  for update
  to public
using (true);



  create policy "Enable delete for all users"
  on "public"."cabins"
  as permissive
  for delete
  to public
using (true);



  create policy "Enable insert for everyone"
  on "public"."cabins"
  as permissive
  for insert
  to public
with check (true);



  create policy "Enable update access for everyone"
  on "public"."cabins"
  as permissive
  for update
  to public
using (true);



  create policy "Enable delete access for all users"
  on "public"."guests"
  as permissive
  for delete
  to public
using (true);



  create policy "Enable insert access for all users"
  on "public"."guests"
  as permissive
  for insert
  to public
with check (true);



  create policy "Enable update access for all users"
  on "public"."guests"
  as permissive
  for update
  to public
using (true);



  create policy "Enable update for all users"
  on "public"."settings"
  as permissive
  for update
  to public
using (true);



  create policy "allow all operations qy2d3w_0"
  on "storage"."objects"
  as permissive
  for select
  to public
using ((bucket_id = 'cabin-images'::text));



  create policy "allow all operations qy2d3w_1"
  on "storage"."objects"
  as permissive
  for insert
  to public
with check ((bucket_id = 'cabin-images'::text));



  create policy "allow all operations qy2d3w_2"
  on "storage"."objects"
  as permissive
  for update
  to public
using ((bucket_id = 'cabin-images'::text));



  create policy "allow all operations qy2d3w_3"
  on "storage"."objects"
  as permissive
  for delete
  to public
using ((bucket_id = 'cabin-images'::text));



