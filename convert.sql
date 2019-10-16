declare
tfop BLOB;
tfopo BLOB;
tfopc CLOB;

BEGIN
    select FOP into tfop 
    from fop
    where id= :P5_ID;
    
    tfopc := bop_pkg.blob2clob(tfop);
    bop_pkg.convert_fo_template(tfopc); 
    tfopo := bop_pkg.clob2blob(tfopc);
    
    update fop set
    fopo = tfopo
    where id= :P5_ID;
    commit;
    
    update APEX_180200.WWV_FLOW_REPORT_LAYOUTS 
    set PAGE_TEMPLATE = tfopc where ID = :P5_LAYOUT_ID;
    commit;

end;
