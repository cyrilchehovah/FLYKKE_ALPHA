<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, http://code.google.com/p/wwwsqldesigner/ -->
<!-- Active URL: http://db.lewagon.org/ -->
<sql>
<datatypes db="mysql">
    <group label="Numeric" color="rgb(238,238,170)">
         <type label="TINYINT" length="0" sql="TINYINT" quote=""/>
         <type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
         <type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
         <type label="INT" length="0" sql="INT" quote=""/>
        <type label="Integer" length="0" sql="INTEGER" quote=""/>
        <type label="BIGINT" length="0" sql="BIGINT" quote=""/>
        <type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
        <type label="Single precision" length="0" sql="FLOAT" quote=""/>
        <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
    </group>

    <group label="Character" color="rgb(255,200,200)">
        <type label="Char" length="1" sql="CHAR" quote="'"/>
        <type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
        <type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
        <type label="Binary" length="1" sql="BINARY" quote="'"/>
        <type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
        <type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
    </group>

    <group label="Date &amp; Time" color="rgb(200,255,200)">
        <type label="Date" length="0" sql="DATE" quote="'"/>
        <type label="Time" length="0" sql="TIME" quote="'"/>
        <type label="Datetime" length="0" sql="DATETIME" quote="'"/>
        <type label="Year" length="0" sql="YEAR" quote=""/>
        <type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
    </group>

    <group label="Miscellaneous" color="rgb(200,200,255)">
        <type label="ENUM" length="1" sql="ENUM" quote=""/>
        <type label="SET" length="1" sql="SET" quote=""/>
        <type label="Bit" length="0" sql="bit" quote=""/>
    </group>
</datatypes><table x="658" y="244" name="Posts">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>INT</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="interest" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="title" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="graphic_content" null="1" autoincrement="0">
<datatype>CHAR</datatype>
<default>NULL</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="url" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="Datetime" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1002" y="528" name="Users">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="first_name" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="last_name" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="email" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="password" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="picture" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="advertiser? " null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1348" y="391" name="Ads">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="title" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="graphic_content" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="url" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="Advertiser_id" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default><relation table="Advertisers" row="id" />
</row>
<row name="duration" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="574" y="580" name="Flykkes">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>INT</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="post_id" null="1" autoincrement="0">
<datatype>INT</datatype>
<default>NULL</default><relation table="Posts" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="702" y="38" name="Questions">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="post_id" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default><relation table="Posts" row="id" />
</row>
<row name="content" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1316" y="42" name="Answers">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="question_id" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default><relation table="Questions" row="id" />
</row>
<row name="answer_choice" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1018" y="245" name="Views">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="ad_id" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default><relation table="Ads" row="id" />
</row>
<row name="user_id" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default><relation table="Users" row="id" />
</row>
<row name="post_id" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default><relation table="Posts" row="id" />
</row>
<row name="donation_complete" null="1" autoincrement="0">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1542" y="333" name="Ad_interests">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="interest" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="Ad_id" null="1" autoincrement="0">
<datatype>INT</datatype>
<default>NULL</default><relation table="Ads" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1562" y="502" name="Advertisers">
<row name="id" null="1" autoincrement="1">
<datatype>TINYINT</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="about" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="url" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="picture" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>
