declare
tfop BLOB;
tfopo BLOB;
tfopc CLOB;
-- --------------------------
function clob2blob(AClob CLOB) return BLOB is
  Result BLOB;
  o1 integer;
  o2 integer;
  c integer;
  w integer;
begin
  o1 := 1;
  o2 := 1;
  c := 0;
  w := 0;
  DBMS_LOB.CreateTemporary(Result, true);
  DBMS_LOB.ConvertToBlob(Result, AClob, length(AClob), o1, o2, 0, c, w);
  return(Result);
end clob2blob;

-- ---------------------------
 FUNCTION blob2clob (i_blob IN BLOB) RETURN CLOB AS
    o_clob CLOB;
    i_dest_offset PLS_INTEGER := 1;
    i_src_offset PLS_INTEGER := 1;
    i_lang_context PLS_INTEGER := DBMS_LOB.DEFAULT_LANG_CTX;
    i_Warning PLS_INTEGER;
BEGIN
  IF i_blob IS NOT NULL THEN
   IF LENGTH(i_blob) = 0 THEN
     RETURN EMPTY_CLOB();
   END IF;
   DBMS_LOB.createTemporary(lob_loc => o_clob,
     cache => TRUE); -- read into buffer cache
   DBMS_LOB.CONVERTTOCLOB(
     dest_lob => o_clob,
     src_blob => i_blob,
     amount => DBMS_LOB.LOBMAXSIZE,
     dest_offset => i_dest_Offset,
     src_offset => i_src_Offset,
     blob_csid => DBMS_LOB.DEFAULT_CSID,
     lang_context => i_lang_context,
     warning => i_Warning
   );
   ELSE
    o_clob := NULL;
   END IF;
   RETURN o_Clob;
  EXCEPTION
    WHEN OTHERS THEN RAISE;
  END blob2clob;

BEGIN
select FOP into tfop from fop
where id= :P5_ID;
tfopc := blob2clob(tfop);
convert_fo_template(tfopc); 
tfopo := clob2blob(tfopc);
update fop set
fopo = tfopo
where id= :P5_ID;
commit;
update APEX_180200.WWV_FLOW_REPORT_LAYOUTS set PAGE_TEMPLATE = tfopc where REPORT_LAYOUT_NAME = 'XXX';
commit;
end;
