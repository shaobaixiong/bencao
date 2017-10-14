<kml><Document>{
for $herbs in //text_db
let $ids := $herbs/@ID
for $id in $ids
return <Placemark>><name>{
$id/ancestor::text_db/@name/string()
}</name>
<ExtendedData>
<Data name="location">
<value>{$id/ancestor::text_db/@location/string()}</value>
</Data>
<Data name="quote">
<value>{$id/ancestor::text_db/@quote/string()}</value>
</Data>
<Data name="source">
<value>{$id/ancestor::text_db/@source/string()}</value>
</Data>
</ExtendedData>
<Point>
<coordinates>
{$id/ancestor::db/db_geo/geo[@id=$id]/@lon/string()},{$id/ancestor::db/db_geo/geo[@id=$id]/@lat/string()}
</coordinates>
</Point>
</Placemark>
}</Document></kml>
