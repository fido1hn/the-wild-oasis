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


  create policy "Enable read access for all users"
  on "public"."bookings"
  as permissive
  for select
  to public
using (true);



  create policy "Enable read access for all users"
  on "public"."cabins"
  as permissive
  for select
  to public
using (true);



  create policy "Enable read access for all users"
  on "public"."guests"
  as permissive
  for select
  to public
using (true);



  create policy "Enable read access for all users"
  on "public"."settings"
  as permissive
  for select
  to public
using (true);



