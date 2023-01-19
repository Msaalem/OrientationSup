<?php

$Connect = mysqli_connect("localhost","root","","supnum");
$sql = "Select * from resultast";
//execute query
$result = mysqli_query($Connect,$sql);
$file_ending = "xlsx";
//header info for browser
header("Content-Type: application/xlsx");
header("Content-Disposition: attachment; filename=moussa.xlsx");
header("Pragma: no-cache");
header("Expires: 0");
/*******Start of Formatting for Excel*******/
//define separator (defines columns in excel & tabs in word)
$sep = "\t"; //tabbed character
//start of printing column names as names of MySQL fields
function mysqli_field_name($result, $field_offset)
{
    $properties = mysqli_fetch_field_direct($result, $field_offset);
    return is_object($properties) ? $properties->name : null;
}
for ($i = 0; $i < mysqli_num_fields($result); $i++) {
    echo mysqli_field_name($result,$i) . "\t";
}
print("\n");
//end of printing column names
//start while loop to get data
while($row = mysqli_fetch_row($result))
{
    $schema_insert = "";
    for($j=0; $j<mysqli_num_fields($result);$j++)
    {
        if(!isset($row[$j]))
            $schema_insert .= "NULL".$sep;
        elseif ($row[$j] != "")
            $schema_insert .= "$row[$j]".$sep;
        else
            $schema_insert .= "".$sep;
    }
    $schema_insert = str_replace($sep."$", "", $schema_insert);
    $schema_insert = preg_replace("/\r\n|\n\r|\n|\r/", " ", $schema_insert);
    $schema_insert .= "\t";
    print(trim($schema_insert));
    print "\n";
}
?>