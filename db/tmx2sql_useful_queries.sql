--SELECT * FROM TmxImportFiles;
--SELECT * FROM TranslationUnits; 
--SELECT * FROM Properties;
SELECT * FROM vw_TUsWithTmsFileProps where usagecount > 20
--SELECT * FROM vw_TUsWithTmsFileProps where changedate > '2014-01-01'