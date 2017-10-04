<kml>{
for $herb in doc("玉石上.xml")/herbs/herb
let $s := $herb/s
let $s-geos := $s//geo/@ref
for $db in doc("玉石上.xml")//group
let $locations := $db/geo[@id=$s-geos]
for $location in $locations
for $s-geo in $s-geos
return <Placemark>
<name>{$herb/@name/string()}</name>
<Point>
<coordinates>
{$location/@lon/string()},{$location/@lat/string()}
</coordinates>
</Point>
<ExtendedData>
<Data name="location"><value>{$location/}</value>
</Data>
</ExtendedData>
</Placemark>
}</kml>