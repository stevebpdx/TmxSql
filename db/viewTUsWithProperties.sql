CREATE  VIEW "main"."vw_TUsWithTmsFileProps" AS -- SQL Lite TM Repository View
SELECT --distinct
       tu.id,
       orig_tuid,
       --f.sourcelang || ' > ' || f.targetlang AS lp,
	   tu.Source,
	   tu.Target,
	   tu.usagecount,
	   tu.changedate,
	   tu.creationdate,
	   tu.lastusagedate,
	   f.tmxfile as ImportFile,
       s.PropertyValue AS SourceProp,
	   c.PropertyValue AS ContextProp,
	   tu.creationid,
	   tu.changeid,
	   f.tmxfile,
	   f.started as ImportDate,
	   f.id as ImportID
  FROM TranslationUnits tu
	   INNER JOIN TmxImportFiles f on (f.id = tu.import_id)
       LEFT JOIN Properties c on (c.tuid = tu.id AND c.Propertyname = 'x-Context')
       LEFT JOIN Properties s on (s.tuid = tu.id AND s.Propertyname = 'x-Source')