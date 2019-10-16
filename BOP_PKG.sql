create or replace package BOP_PKG as

   
function clob2blob(AClob CLOB) return BLOB;
FUNCTION blob2clob (i_blob IN BLOB) RETURN CLOB;
procedure convert_fo_template(p in out nocopy clob);



end;
