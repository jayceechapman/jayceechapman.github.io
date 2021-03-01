declare default element namespace "urn:isbn:1-931666-22-9";

<archives>
{for $archive in collection("file:/Users/jayceechapman/Desktop/xquery-assignment?select=*.xml")/ead
let $restrictions := $archive/archdesc/accessrestrict/p
let $endyears := substring-after($archive/eadheader/filedesc/titlestmt/titleproper/date, '-')
let $startyears := substring-before($archive/eadheader/filedesc/titlestmt/titleproper/date, '-')
let $files := $archive/archdesc/dsc/c01/*/@level["file"]
order by count($files) descending
(: I decided to order by volume using the amount of files because this seemed like a sufficient
indicator about the volume of the collection, at least from a curation perspective. :)
return
<findingaid>
<uniqueID>{data($archive/eadheader/eadid/@identifier)}</uniqueID>
<title>{substring-before($archive/eadheader/filedesc/titlestmt/titleproper, ', ')}</title>
<numberYears>{number($endyears)-number($startyears)
}</numberYears>
<encoder>{substring-after($archive/eadheader/filedesc/titlestmt/author, 'by ')}</encoder>
<numberChange>{count($archive/eadheader/revisiondesc/change)}</numberChange>
<physExtent>{data($archive/archdesc/did/physdesc/extent)}</physExtent>
<restrictions>{normalize-space(string-join($restrictions, ' | '))}</restrictions>
<indexingTerms>{for $name in data($archive/archdesc/controlaccess/controlaccess[1]/list/item)
return <name>{normalize-space($name)}</name>}
{ for $topic in data($archive/archdesc/controlaccess/controlaccess[2]/list/item)
return <topic>{normalize-space($topic)}</topic>
}</indexingTerms>
<numberFiles>{count($files)
}</numberFiles>
</findingaid>
}
</archives>