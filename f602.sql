set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>54002815811501314
,p_default_application_id=>602
,p_default_owner=>'PILKEYR'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 602 - BIP2FOP
--
-- Application Export:
--   Application:     602
--   Name:            BIP2FOP
--   Date and Time:   14:00 Wednesday December 16, 2020
--   Exported By:     PILKEYR
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     102239713304376
--

-- Application Statistics:
--   Pages:                      4
--     Items:                   17
--     Processes:                9
--     Regions:                  9
--     Buttons:                  9
--     Dynamic Actions:          9
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              3
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
--       Queries:                1
--       Layouts:                1
--   Supporting Objects:  Included
--     Install scripts:          2

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,602)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'FOP')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'BIP2FOP')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'BIP2FOP')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B6AD0056E95D65B96CACACE859709E1A36718664F6B830A1B7829958153B1E9C'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'YYYY-MM-DD'
,p_date_time_format=>'YYYY-MM-DD HH24:MI:SS'
,p_timestamp_format=>'YYYY-MM-DD HH24:MI:SSXFF'
,p_timestamp_tz_format=>'YYYY-MM-DD HH24:MI:SSXFF TZR'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(214331774833937015)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:BIP2FOP'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'YYYY.MM.DD'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'PILKEYR'
,p_last_upd_yyyymmddhh24miss=>'20201216135821'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(214289198374936963)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(214332997398937026)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(214349473790091994)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Template List'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3,4'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(214331476411937005)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(214331636781937015)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(214288859590936963)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(214288962619936963)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(214289058901936963)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(214332853599937024)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(214333243861937026)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(214353504286092010)
,p_parent_id=>wwv_flow_api.id(214333243861937026)
,p_short_name=>'Template List'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(214354677225092011)
,p_parent_id=>wwv_flow_api.id(214353504286092010)
,p_short_name=>'Edit BIP2FOP Template'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214289240678936965)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214289333402936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214289497779936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214289589625936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214289722255936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214289750007936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214289921604936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214289967256936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290036480936968)
,p_page_template_id=>wwv_flow_api.id(214289240678936965)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214290182457936969)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290316337936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290388150936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290465275936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290612315936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290701336936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290802647936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290834809936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214290953933936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214291087850936969)
,p_page_template_id=>wwv_flow_api.id(214290182457936969)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214291139983936969)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214291256865936969)
,p_page_template_id=>wwv_flow_api.id(214291139983936969)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214291344900936969)
,p_page_template_id=>wwv_flow_api.id(214291139983936969)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214291520401936969)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214291601972936969)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214291694271936969)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214291806668936969)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214291828102936969)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292004099936971)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292117476936971)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292193725936971)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292261757936971)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292422017936971)
,p_page_template_id=>wwv_flow_api.id(214291520401936969)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214292428817936971)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292617717936971)
,p_page_template_id=>wwv_flow_api.id(214292428817936971)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292701365936971)
,p_page_template_id=>wwv_flow_api.id(214292428817936971)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292782336936971)
,p_page_template_id=>wwv_flow_api.id(214292428817936971)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292853413936971)
,p_page_template_id=>wwv_flow_api.id(214292428817936971)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214292982745936971)
,p_page_template_id=>wwv_flow_api.id(214292428817936971)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214293039372936971)
,p_page_template_id=>wwv_flow_api.id(214292428817936971)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214293171353936971)
,p_page_template_id=>wwv_flow_api.id(214292428817936971)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214293264904936971)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214293348338936971)
,p_page_template_id=>wwv_flow_api.id(214293264904936971)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214293451263936971)
,p_page_template_id=>wwv_flow_api.id(214293264904936971)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214293549629936971)
,p_page_template_id=>wwv_flow_api.id(214293264904936971)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214293675771936971)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214293734822936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214293830812936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294017258936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294122731936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294172373936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294242384936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294379298936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294504456936971)
,p_page_template_id=>wwv_flow_api.id(214293675771936971)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214294534316936971)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294697024936971)
,p_page_template_id=>wwv_flow_api.id(214294534316936971)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294770536936972)
,p_page_template_id=>wwv_flow_api.id(214294534316936971)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214294838389936972)
,p_page_template_id=>wwv_flow_api.id(214294534316936971)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(214294962667936972)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295069326936972)
,p_page_template_id=>wwv_flow_api.id(214294962667936972)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295188896936972)
,p_page_template_id=>wwv_flow_api.id(214294962667936972)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295278640936972)
,p_page_template_id=>wwv_flow_api.id(214294962667936972)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295372439936972)
,p_page_template_id=>wwv_flow_api.id(214294962667936972)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295460595936972)
,p_page_template_id=>wwv_flow_api.id(214294962667936972)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295597385936972)
,p_page_template_id=>wwv_flow_api.id(214294962667936972)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295723741936972)
,p_page_template_id=>wwv_flow_api.id(214294962667936972)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(214326270282936991)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(214326345999936993)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(214326474596936993)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214295808014936972)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214295863130936974)
,p_plug_template_id=>wwv_flow_api.id(214295808014936972)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214297227965936976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214297401999936976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214297428299936976)
,p_plug_template_id=>wwv_flow_api.id(214297401999936976)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214297589181936976)
,p_plug_template_id=>wwv_flow_api.id(214297401999936976)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214298272889936976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214298383049936976)
,p_plug_template_id=>wwv_flow_api.id(214298272889936976)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214298430957936976)
,p_plug_template_id=>wwv_flow_api.id(214298272889936976)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214301635076936977)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214301768844936977)
,p_plug_template_id=>wwv_flow_api.id(214301635076936977)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214301832165936977)
,p_plug_template_id=>wwv_flow_api.id(214301635076936977)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214303806659936979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214303836405936979)
,p_plug_template_id=>wwv_flow_api.id(214303806659936979)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214303965585936979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214304065297936979)
,p_plug_template_id=>wwv_flow_api.id(214303965585936979)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214304885822936979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214305208411936979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214305312373936979)
,p_plug_template_id=>wwv_flow_api.id(214305208411936979)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214305368900936979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214305513355936979)
,p_plug_template_id=>wwv_flow_api.id(214305368900936979)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214305593136936979)
,p_plug_template_id=>wwv_flow_api.id(214305368900936979)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214307439551936980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214307551835936980)
,p_plug_template_id=>wwv_flow_api.id(214307439551936980)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214307646099936980)
,p_plug_template_id=>wwv_flow_api.id(214307439551936980)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214308679852936980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(214309179896936980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(214309312349936980)
,p_plug_template_id=>wwv_flow_api.id(214309179896936980)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214317549193936985)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214319234128936986)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214321339918936986)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214322174720936988)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214322683146936988)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214322735692936988)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214322911446936988)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214323815077936988)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214324257079936988)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214324772567936990)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(214325666136936990)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214309827536936980)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214309870505936982)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214311606128936982)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214313628607936983)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214314101835936983)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214314185925936983)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(214314185925936983)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214315446635936983)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214315644372936983)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(214316641060936983)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(214325751162936990)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(214325920292936991)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(214325994394936991)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(214326090624936991)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(214326166880936991)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(214326909086936994)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(214327110066936996)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(214327023786936994)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(214327486262937001)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(214294962667936972)
,p_default_dialog_template=>wwv_flow_api.id(214293264904936971)
,p_error_template=>wwv_flow_api.id(214291139983936969)
,p_printer_friendly_template=>wwv_flow_api.id(214294962667936972)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(214291139983936969)
,p_default_button_template=>wwv_flow_api.id(214326345999936993)
,p_default_region_template=>wwv_flow_api.id(214305368900936979)
,p_default_chart_template=>wwv_flow_api.id(214305368900936979)
,p_default_form_template=>wwv_flow_api.id(214305368900936979)
,p_default_reportr_template=>wwv_flow_api.id(214305368900936979)
,p_default_tabform_template=>wwv_flow_api.id(214305368900936979)
,p_default_wizard_template=>wwv_flow_api.id(214305368900936979)
,p_default_menur_template=>wwv_flow_api.id(214308679852936980)
,p_default_listr_template=>wwv_flow_api.id(214305368900936979)
,p_default_irr_template=>wwv_flow_api.id(214304885822936979)
,p_default_report_template=>wwv_flow_api.id(214314185925936983)
,p_default_label_template=>wwv_flow_api.id(214325920292936991)
,p_default_menu_template=>wwv_flow_api.id(214326909086936994)
,p_default_calendar_template=>wwv_flow_api.id(214327023786936994)
,p_default_list_template=>wwv_flow_api.id(214321339918936986)
,p_default_nav_list_template=>wwv_flow_api.id(214323815077936988)
,p_default_top_nav_list_temp=>wwv_flow_api.id(214323815077936988)
,p_default_side_nav_list_temp=>wwv_flow_api.id(214325666136936990)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(214297401999936976)
,p_default_dialogr_template=>wwv_flow_api.id(214297227965936976)
,p_default_option_label=>wwv_flow_api.id(214325920292936991)
,p_default_required_label=>wwv_flow_api.id(214326090624936991)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(214322735692936988)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(214327207277936997)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(214327232703936997)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(214327383222936997)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214296034190936976)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214296234624936976)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214296575678936976)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214297665513936976)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214297829541936976)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214298547627936976)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214299046356936977)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214299753222936977)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214300372354936977)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214300719438936977)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214300854764936977)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214302370689936977)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214304160285936979)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214307856262936980)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214308077104936980)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214308250919936980)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214308848545936980)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214309355018936980)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214309972196936982)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214310801057936982)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214311966000936982)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214312216764936982)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214312574778936982)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214313021258936982)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214313753382936983)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214314298412936983)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214314521132936983)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214314885544936983)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214315796959936983)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214317666374936985)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214317916660936985)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214319682696936986)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214319872560936986)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214320295893936986)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214320643632936986)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214321853350936986)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214323327404936988)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214324342857936990)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214326588857936993)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214327575523937002)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214327818492937002)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214328001427937002)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214328150630937002)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214328421285937002)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214328756850937002)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214329484938937002)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214329865255937002)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214330104574937002)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214330247064937002)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214330507130937002)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214330805990937004)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(214331091370937004)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214295928283936974)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214296145332936976)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(214296034190936976)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214296385143936976)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(214296234624936976)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214296453439936976)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(214296034190936976)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214296674183936976)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(214296575678936976)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214296805571936976)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(214296234624936976)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214296917951936976)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(214296034190936976)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214296958164936976)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(214296234624936976)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214297095263936976)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(214296234624936976)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214297200720936976)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214295808014936972)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(214296575678936976)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214297822218936976)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(214297401999936976)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214297927580936976)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(214297401999936976)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(214297829541936976)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214298030131936976)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(214297401999936976)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214298135177936976)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(214297401999936976)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(214297829541936976)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214298677725936976)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214298791712936976)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214298872839936976)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214298955471936976)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214299160969936977)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(214299046356936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214299255588936977)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(214299046356936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214299366244936977)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(214299046356936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214299459794936977)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(214299046356936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214299605511936977)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214299628569936977)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214299872099936977)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300016031936977)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300042167936977)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300156825936977)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300325157936977)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300511062936977)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(214300372354936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300582275936977)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(214300372354936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300769507936977)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(214300719438936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214300991638936977)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(214300854764936977)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214301043156936977)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214301188792936977)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214301277066936977)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(214300854764936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214301423693936977)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(214300719438936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214301432533936977)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214301581844936977)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214298272889936976)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302011541936977)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302078993936977)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302220988936977)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302268054936977)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302449591936977)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(214302370689936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302598510936977)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(214302370689936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302659847936977)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302752429936977)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214302881401936977)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303007664936977)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303059109936977)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303170361936977)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(214300719438936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303301855936979)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303413818936979)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303485353936979)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303566376936979)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(214300719438936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214303649150936979)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214301635076936977)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214304243523936979)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214303965585936979)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(214304160285936979)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214304415965936979)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214303965585936979)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(214304160285936979)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214304454692936979)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214303965585936979)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(214304160285936979)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214304557252936979)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214303965585936979)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214304671329936979)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214303965585936979)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214304805062936979)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214303965585936979)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214304953552936979)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214304885822936979)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214305039385936979)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214304885822936979)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214305661939936979)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214305765776936979)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214305841224936979)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214305973931936979)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(214298547627936976)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306106614936979)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306156754936979)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306259113936979)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306355914936979)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306490775936979)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306604051936979)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(214299753222936977)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306636591936979)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(214300719438936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306763714936979)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(214300854764936977)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306903167936980)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214306958749936980)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214307121518936980)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214307220598936980)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(214300854764936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214307265632936980)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(214300719438936977)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214307427313936980)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214305368900936979)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(214297665513936976)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214307743758936980)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214307439551936980)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214307998480936980)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214307439551936980)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(214307856262936980)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214308195174936980)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214307439551936980)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(214308077104936980)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214308418847936980)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214307439551936980)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(214308250919936980)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214308463965936980)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214307439551936980)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(214308250919936980)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214308622696936980)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214307439551936980)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(214308077104936980)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214308738871936980)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(214308679852936980)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214308948900936980)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(214308679852936980)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(214308848545936980)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214309116181936980)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(214308679852936980)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(214308848545936980)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214309462863936980)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(214309179896936980)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(214309355018936980)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214309538680936980)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214309179896936980)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(214309355018936980)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214309627871936980)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(214309179896936980)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310079517936982)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310214129936982)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310293025936982)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310346996936982)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310448747936982)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310542684936982)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310706773936982)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214310865094936982)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(214310801057936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311015352936982)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(214310801057936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311118714936982)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311150524936982)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(214310801057936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311286204936982)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311393560936982)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(214310801057936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311474790936982)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(214309870505936982)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(214310801057936982)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311720803936982)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311785773936982)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214311844464936982)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214312078013936982)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(214311966000936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214312312296936982)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(214312216764936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214312368745936982)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214312509319936982)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(214311966000936982)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214312671484936982)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(214312574778936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214312744315936982)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(214312574778936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214312886668936982)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(214312574778936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313068802936982)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(214313021258936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313172306936982)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(214313021258936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313295223936982)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(214311966000936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313423805936982)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313438437936983)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(214312574778936982)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313625395936983)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(214311606128936982)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313915573936983)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214313628607936983)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(214313753382936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214313978992936983)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214313628607936983)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(214313753382936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214314363675936983)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(214314298412936983)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214314537185936983)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(214314521132936983)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214314725332936983)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(214314521132936983)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214314773691936983)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(214314521132936983)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315013931936983)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(214314885544936983)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315120786936983)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(214314885544936983)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315201440936983)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(214314298412936983)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315282783936983)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315385454936983)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214314185925936983)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(214314521132936983)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315546687936983)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(214315446635936983)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(214311966000936982)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315894088936983)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214315930315936983)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316030525936983)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316216793936983)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316274650936983)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316396990936983)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316458541936983)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316558746936983)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(214315644372936983)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316825660936985)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316871656936985)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214316934001936985)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214317048404936985)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214317174160936985)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(214309972196936982)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214317320591936985)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214317402268936985)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214317510316936985)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(214316641060936983)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(214315796959936983)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214317754050936985)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(214317666374936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318003759936985)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318080956936985)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318193728936985)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318311043936986)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318378861936986)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318503252936986)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318592404936986)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318635535936986)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(214317666374936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318807935936986)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(214317666374936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318898295936986)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214318944638936986)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(214317666374936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214319098210936986)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214319217668936986)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(214317549193936985)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(214317666374936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214319392719936986)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214319488455936986)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214319601493936986)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214319727705936986)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(214319682696936986)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214319955932936986)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(214319872560936986)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320033815936986)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320168642936986)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(214319682696936986)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320385965936986)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(214320295893936986)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320494095936986)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(214320295893936986)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320564027936986)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(214320295893936986)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320770891936986)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(214320643632936986)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320873474936986)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(214320643632936986)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214320965551936986)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(214319682696936986)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214321037539936986)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214321223332936986)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(214320295893936986)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214321271583936986)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(214319234128936986)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214321433656936986)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214321339918936986)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(214319682696936986)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214321553670936986)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214321339918936986)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214321697791936986)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214321339918936986)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214321807806936986)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214321339918936986)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214322012953936988)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214321339918936986)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(214321853350936986)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214322044473936988)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214321339918936986)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(214321853350936986)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214322297354936988)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(214322174720936988)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214322380916936988)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214322174720936988)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214322449783936988)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214322174720936988)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214322575154936988)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214322174720936988)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323000923936988)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(214322911446936988)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323057747936988)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214322911446936988)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(214320643632936986)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323143907936988)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214322911446936988)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(214320643632936986)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323381007936988)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214322911446936988)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(214323327404936988)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323464178936988)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214322911446936988)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(214319682696936986)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323604784936988)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214322911446936988)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(214319682696936986)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323641766936988)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(214322911446936988)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(214323327404936988)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323859332936988)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(214323815077936988)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214323987519936988)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(214323815077936988)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214324059692936988)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(214323815077936988)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214324149658936988)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(214323815077936988)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214324473591936990)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214324257079936988)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(214324342857936990)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214324536790936990)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214324257079936988)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(214324342857936990)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214324670699936990)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214324257079936988)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(214324342857936990)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214324833649936990)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214324959497936990)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214325034222936990)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214325176479936990)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214325297438936990)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(214317916660936985)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214325344402936990)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214325473366936990)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214325606643936990)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(214324772567936990)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214326696565936993)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(214326474596936993)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(214326588857936993)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214326799959936993)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(214326474596936993)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(214326588857936993)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214327725629937002)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(214327575523937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214327852635937002)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(214327818492937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214328081459937002)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(214328001427937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214328251360937002)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(214328150630937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214328435504937002)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(214328421285937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214328577952937002)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(214327818492937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214328716397937002)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(214328001427937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214328894171937002)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(214328756850937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214328991032937002)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(214328756850937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329028436937002)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(214328756850937002)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329165964937002)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(214327575523937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329320565937002)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(214328421285937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329404745937002)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(214328150630937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329541610937002)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(214329484938937002)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329692978937002)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(214327575523937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329809511937002)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(214327575523937002)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214329993349937002)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(214329865255937002)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214330158123937002)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(214330104574937002)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214330333702937002)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(214330247064937002)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214330609438937004)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(214330507130937002)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214330703829937004)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(214330507130937002)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214330836019937004)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(214330805990937004)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214330950452937004)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(214330104574937002)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214331191464937004)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(214331091370937004)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214331294136937004)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(214331422492937004)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(214331091370937004)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(214342039450091921)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/reports/report_queries/test_2020_09_23
begin
wwv_flow_api.create_shared_query(
 p_id=>wwv_flow_api.id(214546181644447419)
,p_name=>'test 2020-09-23'
,p_query_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'',
'template_name,',
'modified,',
'modified_by',
'',
'from bip2fop'))
,p_report_layout_id=>wwv_flow_api.id(214548358683517338)
,p_format=>'PDF'
,p_output_file_name=>'test 2020-09-23'
,p_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_shared_query_stmnt(
 p_id=>wwv_flow_api.id(205078184474853539)
,p_shared_query_id=>wwv_flow_api.id(214546181644447419)
,p_sql_statement=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'',
'template_name,',
'notes,',
'modified,',
'modified_by',
'',
'from bip2fop'))
);
end;
/
prompt --application/shared_components/reports/report_layouts/test_layout_2020_09_23_é
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version="1.0" encoding="UTF-8"?>'||wwv_flow.LF||
'<!--xslt1.0-compatibility-->'||wwv_flow.LF||
'<xsl:stylesheet xmlns:xsl="http:';
    wwv_flow_api.g_varchar2_table(2) := '//www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ora="http://www.';
    wwv_flow_api.g_varchar2_table(3) := 'oracle.com/XSL/Transform/java/" xmlns:xdofo="http://xmlns.oracle.com/oxp/fo/extensions" xmlns:xdoxsl';
    wwv_flow_api.g_varchar2_table(4) := 't="http://www.oracle.com/XSL/Transform/java/oracle.xdo.template.rtf.XSLTFunctions" xmlns:xdoxliff="u';
    wwv_flow_api.g_varchar2_table(5) := 'rn:oasis:names:tc:xliff:document:1.1" xmlns:xlink="http://www.w3.org/1999/xlink" version="2.0">'||wwv_flow.LF||
'  <x';
    wwv_flow_api.g_varchar2_table(6) := 'sl:param name="_XDOCALENDAR">GREGORIAN</xsl:param>'||wwv_flow.LF||
'  <xsl:param name="_XDOLOCALE">en-us</xsl:param>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(7) := '  <xsl:param name="_XDOTIMEZONE">GMT</xsl:param>'||wwv_flow.LF||
'  <xsl:param name="_XDODFOVERRIDE">;</xsl:param>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(8) := '<xsl:param name="_XDOCURMASKS">;</xsl:param>'||wwv_flow.LF||
'  <xsl:param name="_XDONFSEPARATORS"/>'||wwv_flow.LF||
'  <xsl:param nam';
    wwv_flow_api.g_varchar2_table(9) := 'e="_XDOCHARTTYPE">image/svg%2Bxml</xsl:param>'||wwv_flow.LF||
'  <xsl:param name="_XDOOUTPUTFORMAT">application/pdf</';
    wwv_flow_api.g_varchar2_table(10) := 'xsl:param>'||wwv_flow.LF||
'  <xsl:param name="_XDOSVGFONTEMBED">true</xsl:param>'||wwv_flow.LF||
'  <xsl:param name="_XDODEFDATE"/>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(11) := ' <xsl:param name="_XDODEFTIME"/>'||wwv_flow.LF||
'  <xsl:param name="_XDODEFNUM"/>'||wwv_flow.LF||
'  <xsl:param name="_XDODEFCC"/>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(12) := '<xsl:param name="_XDOCTX">#</xsl:param>'||wwv_flow.LF||
'  <xsl:variable name="titlevar" select="%26apos;RTF Template';
    wwv_flow_api.g_varchar2_table(13) := '%26apos;"/>'||wwv_flow.LF||
'  <xsl:variable name="_XDOFOPOS" select="%26apos;%26apos;"/>'||wwv_flow.LF||
'  <xsl:variable name="_XDOF';
    wwv_flow_api.g_varchar2_table(14) := 'OPOS2" select="number(1)"/>'||wwv_flow.LF||
'  <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'  <xsl:variable ';
    wwv_flow_api.g_varchar2_table(15) := 'name="_XDOFOOSTOTAL" select="number(0)"/>'||wwv_flow.LF||
'  <xsl:template match="/">'||wwv_flow.LF||
'    <fo:root language="en">'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(16) := '   <fo:layout-master-set>'||wwv_flow.LF||
'        <fo:simple-page-master master-name="master0" margin-left="66.6pt" ';
    wwv_flow_api.g_varchar2_table(17) := 'margin-right="66.6pt" page-height="792.0pt" page-width="612.0pt" margin-top="35.4pt" margin-bottom="';
    wwv_flow_api.g_varchar2_table(18) := '35.4pt">'||wwv_flow.LF||
'          <fo:region-body region-name="region-body" margin-top="36.6pt" margin-bottom="36.6';
    wwv_flow_api.g_varchar2_table(19) := 'pt"/>'||wwv_flow.LF||
'          <fo:region-before region-name="region-header" extent="36.6pt"/>'||wwv_flow.LF||
'          <fo:region';
    wwv_flow_api.g_varchar2_table(20) := '-after region-name="region-footer" extent="36.6pt" display-align="after"/>'||wwv_flow.LF||
'        </fo:simple-page-';
    wwv_flow_api.g_varchar2_table(21) := 'master>'||wwv_flow.LF||
'      </fo:layout-master-set>'||wwv_flow.LF||
'      <fo:declarations xmlns:xsi="http://www.w3.org/2001/XMLSc';
    wwv_flow_api.g_varchar2_table(22) := 'hema-instance">'||wwv_flow.LF||
'        <pdf:catalog xmlns:pdf="http://xmlgraphics.apache.org/fop/extensions/pdf">'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(23) := '         <pdf:dictionary type="normal" key="ViewerPreferences">'||wwv_flow.LF||
'            <pdf:boolean key="Displa';
    wwv_flow_api.g_varchar2_table(24) := 'yDocTitle">true</pdf:boolean>'||wwv_flow.LF||
'          </pdf:dictionary>'||wwv_flow.LF||
'        </pdf:catalog>'||wwv_flow.LF||
'        <x:xmpmeta ';
    wwv_flow_api.g_varchar2_table(25) := 'xmlns:x="adobe:ns:meta/">'||wwv_flow.LF||
'          <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"';
    wwv_flow_api.g_varchar2_table(26) := '>'||wwv_flow.LF||
'            <rdf:Description xmlns:dc="http://purl.org/dc/elements/1.1/" rdf:about="">'||wwv_flow.LF||
'           ';
    wwv_flow_api.g_varchar2_table(27) := '   <dc:title>'||wwv_flow.LF||
'                <rdf:Alt>'||wwv_flow.LF||
'                  <rdf:li xml:lang="x-default">'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(28) := '        <xsl:value-of select="$titlevar"/>'||wwv_flow.LF||
'                  </rdf:li>'||wwv_flow.LF||
'                </rdf:Alt>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(29) := '            </dc:title>'||wwv_flow.LF||
'              <dc:creator>'||wwv_flow.LF||
'                <rdf:Seq>'||wwv_flow.LF||
'                  <rdf:';
    wwv_flow_api.g_varchar2_table(30) := 'li>National Research Council Canada</rdf:li>'||wwv_flow.LF||
'                </rdf:Seq>'||wwv_flow.LF||
'              </dc:creator>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(31) := '              <dc:description>'||wwv_flow.LF||
'                <rdf:Alt>'||wwv_flow.LF||
'                  <rdf:li xml:lang="x-defau';
    wwv_flow_api.g_varchar2_table(32) := 'lt">'||wwv_flow.LF||
'                    <xsl:value-of select="$titlevar"/>'||wwv_flow.LF||
'                  </rdf:li>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(33) := '    </rdf:Alt>'||wwv_flow.LF||
'              </dc:description>'||wwv_flow.LF||
'              <dc:rights>© Her Majesty the Queen in R';
    wwv_flow_api.g_varchar2_table(34) := 'ight of Canada, represented by National Research Council of Canada (NRC), 2020. No part of this mate';
    wwv_flow_api.g_varchar2_table(35) := 'rial may be used or reproduced in any manner other than its intended use by licensed subscribers / e';
    wwv_flow_api.g_varchar2_table(36) := 'nd-users without prior written permission from NRC.  NRC shall not be liable in any event for any da';
    wwv_flow_api.g_varchar2_table(37) := 'mages, whether direct or indirect, special or general, consequential or incidental, arising from the';
    wwv_flow_api.g_varchar2_table(38) := ' use of this file. NRC does: (1) not assume any legal liability or responsibility for the accuracy, ';
    wwv_flow_api.g_varchar2_table(39) := 'completeness, or usefulness of this file, (2) not warrant that this file is error-free or that any e';
    wwv_flow_api.g_varchar2_table(40) := 'rrors will be corrected.</dc:rights>'||wwv_flow.LF||
'            </rdf:Description>'||wwv_flow.LF||
'            <rdf:Description xml';
    wwv_flow_api.g_varchar2_table(41) := 'ns:xmp="http://ns.adobe.com/xap/1.0/" rdf:about="">'||wwv_flow.LF||
'              <xmp:CreatorTool>Oracle %2B FOP</x';
    wwv_flow_api.g_varchar2_table(42) := 'mp:CreatorTool>'||wwv_flow.LF||
'              <xmp:Title>'||wwv_flow.LF||
'                <xsl:value-of select="$titlevar"/>'||wwv_flow.LF||
'       ';
    wwv_flow_api.g_varchar2_table(43) := '       </xmp:Title>'||wwv_flow.LF||
'            </rdf:Description>'||wwv_flow.LF||
'            <rdf:Description xmlns:pdfuaid="http:';
    wwv_flow_api.g_varchar2_table(44) := '//www.aiim.org/pdfua/ns/id/" rdf:about="">'||wwv_flow.LF||
'              <pdfuaid:part>1</pdfuaid:part>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(45) := '</rdf:Description>'||wwv_flow.LF||
'          </rdf:RDF>'||wwv_flow.LF||
'        </x:xmpmeta>'||wwv_flow.LF||
'      </fo:declarations>'||wwv_flow.LF||
'      <fo:page';
    wwv_flow_api.g_varchar2_table(46) := '-sequence master-reference="master0">'||wwv_flow.LF||
'        <fo:title>'||wwv_flow.LF||
'          <xsl:value-of select="$titlevar"/';
    wwv_flow_api.g_varchar2_table(47) := '>'||wwv_flow.LF||
'        </fo:title>'||wwv_flow.LF||
'        <xsl:variable name="_PW" select="number(612.0)"/>'||wwv_flow.LF||
'        <xsl:variabl';
    wwv_flow_api.g_varchar2_table(48) := 'e name="_PH" select="number(792.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_ML" select="number(72.0)"/>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(49) := '   <xsl:variable name="_MR" select="number(72.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_MT" select="number(';
    wwv_flow_api.g_varchar2_table(50) := '72.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_MB" select="number(72.0)"/>'||wwv_flow.LF||
'        <xsl:variable name="_HY" s';
    wwv_flow_api.g_varchar2_table(51) := 'elect="number(35.4)"/>'||wwv_flow.LF||
'        <xsl:variable name="_FY" select="number(35.4)"/>'||wwv_flow.LF||
'        <xsl:variabl';
    wwv_flow_api.g_varchar2_table(52) := 'e name="_SECTION_NAME" select="string(%26apos;master0%26apos;)"/>'||wwv_flow.LF||
'        <fo:flow flow-name="region';
    wwv_flow_api.g_varchar2_table(53) := '-body">'||wwv_flow.LF||
'          <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt';
    wwv_flow_api.g_varchar2_table(54) := '" text-align="start" padding-bottom="0.0pt" end-indent="5.4pt" padding-top="0.0pt" height="0.0pt" te';
    wwv_flow_api.g_varchar2_table(55) := 'xt-indent="0.0pt">'||wwv_flow.LF||
'            <fo:leader font-size="28.0pt" font-family="Calibri Light" leader-patt';
    wwv_flow_api.g_varchar2_table(56) := 'ern="space" leader-length="36.0pt"/>'||wwv_flow.LF||
'            <fo:inline font-family="Calibri Light" height="32.3';
    wwv_flow_api.g_varchar2_table(57) := '68pt" letter-spacing="-0.5pt" white-space-collapse="false" font-size="28.0pt">Test</fo:inline>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(58) := '     </fo:block>'||wwv_flow.LF||
'          <fo:block xsl:header-level="1" orphans="2" widows="2" linefeed-treatment=';
    wwv_flow_api.g_varchar2_table(59) := '"preserve" start-indent="5.4pt" text-align="start" padding-bottom="0.0pt" end-indent="5.4pt" padding';
    wwv_flow_api.g_varchar2_table(60) := '-top="12.0pt" height="0.0pt" keep-together="always" keep-with-next.within-page="always">'||wwv_flow.LF||
'           ';
    wwv_flow_api.g_varchar2_table(61) := ' <fo:inline white-space-collapse="false" font-family="Calibri Light" height="0.0pt" font-size="16.0p';
    wwv_flow_api.g_varchar2_table(62) := 't" color="#2e74b5">Tricky characters</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block orphans="';
    wwv_flow_api.g_varchar2_table(63) := '2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="start" padding-bottom="';
    wwv_flow_api.g_varchar2_table(64) := '0pt" end-indent="5.4pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'            <fo:inline white-space-colla';
    wwv_flow_api.g_varchar2_table(65) := 'pse="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">e-aigu: é</fo:inline>'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(66) := '</fo:block>'||wwv_flow.LF||
'          <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="5';
    wwv_flow_api.g_varchar2_table(67) := '.4pt" text-align="start" padding-bottom="0pt" end-indent="5.4pt" padding-top="0pt" height="0.0pt" te';
    wwv_flow_api.g_varchar2_table(68) := 'xt-indent="0pt">'||wwv_flow.LF||
'            <fo:inline white-space-collapse="false" height="0.0pt" font-family="Cal';
    wwv_flow_api.g_varchar2_table(69) := 'ibri" font-size="11.0pt">ampersand: %26amp;</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block or';
    wwv_flow_api.g_varchar2_table(70) := 'phans="2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="start" padding-b';
    wwv_flow_api.g_varchar2_table(71) := 'ottom="0pt" end-indent="5.4pt" padding-top="0pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'            <fo:i';
    wwv_flow_api.g_varchar2_table(72) := 'nline white-space-collapse="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">percent: ';
    wwv_flow_api.g_varchar2_table(73) := '%25</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block orphans="2" widows="2" linefeed-treatment=';
    wwv_flow_api.g_varchar2_table(74) := '"preserve" start-indent="5.4pt" text-align="start" padding-bottom="0pt" end-indent="5.4pt" padding-t';
    wwv_flow_api.g_varchar2_table(75) := 'op="0pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'            <fo:inline white-space-collapse="false" heigh';
    wwv_flow_api.g_varchar2_table(76) := 't="0.0pt" font-family="Calibri" font-size="11.0pt">plus: %2B</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(77) := '     <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align=';
    wwv_flow_api.g_varchar2_table(78) := '"start" padding-bottom="0pt" end-indent="5.4pt" padding-top="0pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(79) := '            <fo:inline white-space-collapse="false" height="0.0pt" font-family="Calibri" font-size="';
    wwv_flow_api.g_varchar2_table(80) := '11.0pt">apostrophe: %26apos;</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block orphans="2" widow';
    wwv_flow_api.g_varchar2_table(81) := 's="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="start" padding-bottom="0pt" end';
    wwv_flow_api.g_varchar2_table(82) := '-indent="5.4pt" padding-top="0pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'            <fo:inline white-spa';
    wwv_flow_api.g_varchar2_table(83) := 'ce-collapse="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">double-quote: %26quot;</';
    wwv_flow_api.g_varchar2_table(84) := 'fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block orphans="2" widows="2" linefeed-treatment="pres';
    wwv_flow_api.g_varchar2_table(85) := 'erve" start-indent="5.4pt" text-align="start" padding-bottom="0pt" end-indent="5.4pt" padding-top="0';
    wwv_flow_api.g_varchar2_table(86) := 'pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'            <fo:inline white-space-collapse="false" height="0.';
    wwv_flow_api.g_varchar2_table(87) := '0pt" font-family="Calibri" font-size="11.0pt">less-than : </fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'       ';
    wwv_flow_api.g_varchar2_table(88) := '   <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="s';
    wwv_flow_api.g_varchar2_table(89) := 'tart" padding-bottom="8.0pt" end-indent="5.4pt" padding-top="0pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(90) := '            <fo:inline white-space-collapse="false" height="0.0pt" font-family="Calibri" font-size="';
    wwv_flow_api.g_varchar2_table(91) := '11.0pt">%26lt;greater-than : %26gt;</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block text-align';
    wwv_flow_api.g_varchar2_table(92) := '="start" orphans="2" start-indent="5.4pt" linefeed-treatment="preserve" padding-top="0pt" end-indent';
    wwv_flow_api.g_varchar2_table(93) := '="5.4pt" padding-bottom="0pt" height="0.0pt" widows="2">'||wwv_flow.LF||
'            <fo:inline white-space-collapse';
    wwv_flow_api.g_varchar2_table(94) := '="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">check double-replacement errors on ';
    wwv_flow_api.g_varchar2_table(95) := 'the five xml special characters:</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block orphans="2" w';
    wwv_flow_api.g_varchar2_table(96) := 'idows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="start" padding-bottom="8.0p';
    wwv_flow_api.g_varchar2_table(97) := 't" end-indent="5.4pt" padding-top="0pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'            <fo:inline whi';
    wwv_flow_api.g_varchar2_table(98) := 'te-space-collapse="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">%26amp;amp; %26amp';
    wwv_flow_api.g_varchar2_table(99) := ';apos; %26amp;quot; %26amp;lt; %26amp;gt;</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block text';
    wwv_flow_api.g_varchar2_table(100) := '-align="start" orphans="2" start-indent="5.4pt" linefeed-treatment="preserve" padding-top="0pt" end-';
    wwv_flow_api.g_varchar2_table(101) := 'indent="5.4pt" padding-bottom="0pt" height="0.0pt" widows="2">'||wwv_flow.LF||
'            <fo:inline white-space-co';
    wwv_flow_api.g_varchar2_table(102) := 'llapse="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">check triple-replacement erro';
    wwv_flow_api.g_varchar2_table(103) := 'rs on the 5 xml special characters: </fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block orphans="';
    wwv_flow_api.g_varchar2_table(104) := '2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="start" padding-bottom="';
    wwv_flow_api.g_varchar2_table(105) := '8.0pt" end-indent="5.4pt" padding-top="0pt" height="0.0pt" text-indent="0pt">'||wwv_flow.LF||
'            <fo:inline';
    wwv_flow_api.g_varchar2_table(106) := ' white-space-collapse="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">%2526amp; %252';
    wwv_flow_api.g_varchar2_table(107) := '6apos; %2526quot; %2526lt; %2526gt;</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block text-align';
    wwv_flow_api.g_varchar2_table(108) := '="start" orphans="2" start-indent="5.4pt" linefeed-treatment="preserve" padding-top="0pt" end-indent';
    wwv_flow_api.g_varchar2_table(109) := '="5.4pt" padding-bottom="0pt" height="0.0pt" widows="2">'||wwv_flow.LF||
'            <fo:inline white-space-collapse';
    wwv_flow_api.g_varchar2_table(110) := '="false" height="0.0pt" font-family="Calibri" font-size="11.0pt">more weird encodings: %26amp;#60; %';
    wwv_flow_api.g_varchar2_table(111) := '26amp;#62; %26amp;#38; %26amp;#39; %26amp;#34;</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block';
    wwv_flow_api.g_varchar2_table(112) := ' orphans="2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="start" paddin';
    wwv_flow_api.g_varchar2_table(113) := 'g-bottom="8.0pt" end-indent="5.4pt" padding-top="0pt" height="0.0pt" font-size="11.0pt" font-family=';
    wwv_flow_api.g_varchar2_table(114) := '"Calibri" text-indent="0pt"/>'||wwv_flow.LF||
'          <fo:block xsl:header-level="1" orphans="2" widows="2" linefe';
    wwv_flow_api.g_varchar2_table(115) := 'ed-treatment="preserve" start-indent="5.4pt" text-align="start" padding-bottom="0.0pt" end-indent="5';
    wwv_flow_api.g_varchar2_table(116) := '.4pt" padding-top="0pt" height="0.0pt" keep-together="always" keep-with-next.within-page="always">'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(117) := '           <fo:inline white-space-collapse="false" font-family="Calibri Light" height="0.0pt" font-s';
    wwv_flow_api.g_varchar2_table(118) := 'ize="16.0pt" color="#2e74b5">Table</fo:inline>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block xsl:header-';
    wwv_flow_api.g_varchar2_table(119) := 'level="1" widows="2" orphans="2" padding-top="0.25pt" linefeed-treatment="preserve" padding-bottom="';
    wwv_flow_api.g_varchar2_table(120) := '0.25pt" end-indent="5.4pt" keep-with-next.within-page="always" text-align="start">'||wwv_flow.LF||
'            <fo:t';
    wwv_flow_api.g_varchar2_table(121) := 'able start-indent="0.0pt">'||wwv_flow.LF||
'              <xsl:variable name="_XDOFOPOS2" select="number(1)"/>'||wwv_flow.LF||
'      ';
    wwv_flow_api.g_varchar2_table(122) := '        <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'              <fo:table-column column-';
    wwv_flow_api.g_varchar2_table(123) := 'width="119.7pt"/>'||wwv_flow.LF||
'              <fo:table-column column-width="119.7pt"/>'||wwv_flow.LF||
'              <fo:table-co';
    wwv_flow_api.g_varchar2_table(124) := 'lumn column-width="119.7pt"/>'||wwv_flow.LF||
'              <fo:table-column column-width="119.7pt"/>'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(125) := '<fo:table-header>'||wwv_flow.LF||
'                <fo:table-row keep-with-next="always">'||wwv_flow.LF||
'                  <fo:table';
    wwv_flow_api.g_varchar2_table(126) := '-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-col';
    wwv_flow_api.g_varchar2_table(127) := 'or="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="';
    wwv_flow_api.g_varchar2_table(128) := '5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" heigh';
    wwv_flow_api.g_varchar2_table(129) := 't="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt" background-colo';
    wwv_flow_api.g_varchar2_table(130) := 'r="#e7f3fd">'||wwv_flow.LF||
'                    <fo:block orphans="2" widows="2" linefeed-treatment="preserve" star';
    wwv_flow_api.g_varchar2_table(131) := 't-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(132) := '                     <fo:inline white-space-collapse="false" height="11.0pt" font-family="Calibri" f';
    wwv_flow_api.g_varchar2_table(133) := 'ont-size="11.0pt" font-weight="bold">TEMPLATE_NAME</fo:inline>'||wwv_flow.LF||
'                    </fo:block>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(134) := '             </fo:table-cell>'||wwv_flow.LF||
'                  <fo:table-cell padding-start="5.15pt" vertical-align';
    wwv_flow_api.g_varchar2_table(135) := '="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end';
    wwv_flow_api.g_varchar2_table(136) := '-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-t';
    wwv_flow_api.g_varchar2_table(137) := 'op="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-';
    wwv_flow_api.g_varchar2_table(138) := 'bottom="0.0pt" border-start-width="0.5pt" background-color="#e7f3fd">'||wwv_flow.LF||
'                    <fo:block ';
    wwv_flow_api.g_varchar2_table(139) := 'orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding';
    wwv_flow_api.g_varchar2_table(140) := '-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                      <fo:inline white-space';
    wwv_flow_api.g_varchar2_table(141) := '-collapse="false" height="11.0pt" font-family="Calibri" font-size="11.0pt" font-weight="bold">NOTES<';
    wwv_flow_api.g_varchar2_table(142) := '/fo:inline>'||wwv_flow.LF||
'                    </fo:block>'||wwv_flow.LF||
'                  </fo:table-cell>'||wwv_flow.LF||
'                  <fo';
    wwv_flow_api.g_varchar2_table(143) := ':table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-e';
    wwv_flow_api.g_varchar2_table(144) := 'nd-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding';
    wwv_flow_api.g_varchar2_table(145) := '-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid"';
    wwv_flow_api.g_varchar2_table(146) := ' height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt" backgroun';
    wwv_flow_api.g_varchar2_table(147) := 'd-color="#e7f3fd">'||wwv_flow.LF||
'                    <fo:block orphans="2" widows="2" linefeed-treatment="preserve';
    wwv_flow_api.g_varchar2_table(148) := '" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0';
    wwv_flow_api.g_varchar2_table(149) := 'pt">'||wwv_flow.LF||
'                      <fo:inline white-space-collapse="false" height="11.0pt" font-family="Cali';
    wwv_flow_api.g_varchar2_table(150) := 'bri" font-size="11.0pt" font-weight="bold">MODIFIED</fo:inline>'||wwv_flow.LF||
'                    </fo:block>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(151) := '              </fo:table-cell>'||wwv_flow.LF||
'                  <fo:table-cell padding-start="5.15pt" vertical-alig';
    wwv_flow_api.g_varchar2_table(152) := 'n="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-en';
    wwv_flow_api.g_varchar2_table(153) := 'd-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-';
    wwv_flow_api.g_varchar2_table(154) := 'top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding';
    wwv_flow_api.g_varchar2_table(155) := '-bottom="0.0pt" border-start-width="0.5pt" background-color="#e7f3fd">'||wwv_flow.LF||
'                    <fo:block';
    wwv_flow_api.g_varchar2_table(156) := ' orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" paddin';
    wwv_flow_api.g_varchar2_table(157) := 'g-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                      <fo:inline white-spac';
    wwv_flow_api.g_varchar2_table(158) := 'e-collapse="false" height="11.0pt" font-family="Calibri" font-size="11.0pt" font-weight="bold">MODIF';
    wwv_flow_api.g_varchar2_table(159) := 'IED_BY</fo:inline>'||wwv_flow.LF||
'                    </fo:block>'||wwv_flow.LF||
'                  </fo:table-cell>'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(160) := '  </fo:table-row>'||wwv_flow.LF||
'              </fo:table-header>'||wwv_flow.LF||
'              <fo:table-body>'||wwv_flow.LF||
'                <xs';
    wwv_flow_api.g_varchar2_table(161) := 'l:variable name="_XDOFOOSTOTAL" select="(number(concat(%26apos;0%26apos;, $_XDOFOPOS2)) - 1) * numbe';
    wwv_flow_api.g_varchar2_table(162) := 'r(concat(%26apos;0%26apos;, $_XDOFOTOTAL))"/>'||wwv_flow.LF||
'                <xsl:variable name="_XDOFOTOTAL" selec';
    wwv_flow_api.g_varchar2_table(163) := 't="count(.//ROW)"/>'||wwv_flow.LF||
'                <xsl:for-each select=".//ROW">'||wwv_flow.LF||
'                  <xsl:sort selec';
    wwv_flow_api.g_varchar2_table(164) := 't="(.//MODIFIED)[1]" order="descending" data-type="text"/>'||wwv_flow.LF||
'                  <xsl:variable name="_XD';
    wwv_flow_api.g_varchar2_table(165) := 'OFOPOS" select="concat($_XDOFOPOS, %26apos;_%26apos;, position())"/>'||wwv_flow.LF||
'                  <xsl:variable';
    wwv_flow_api.g_varchar2_table(166) := ' name="_XDOFOPOS2" select="number(concat(%26apos;0%26apos;, $_XDOFOOSTOTAL)) %2B position()"/>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(167) := '             <fo:table-row>'||wwv_flow.LF||
'                    <fo:table-cell padding-start="5.15pt" vertical-align';
    wwv_flow_api.g_varchar2_table(168) := '="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end';
    wwv_flow_api.g_varchar2_table(169) := '-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-t';
    wwv_flow_api.g_varchar2_table(170) := 'op="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-';
    wwv_flow_api.g_varchar2_table(171) := 'bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                      <fo:block orphans="2" widows="2" li';
    wwv_flow_api.g_varchar2_table(172) := 'nefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-inden';
    wwv_flow_api.g_varchar2_table(173) := 't="0.0pt" padding-top="0.0pt" height="0pt">'||wwv_flow.LF||
'                        <fo:inline white-space-collapse=';
    wwv_flow_api.g_varchar2_table(174) := '"false" height="11.0pt" font-family="Calibri" font-size="11.0pt">'||wwv_flow.LF||
'                          <xsl:val';
    wwv_flow_api.g_varchar2_table(175) := 'ue-of select="(.//TEMPLATE_NAME)[1]"/>'||wwv_flow.LF||
'                        </fo:inline>'||wwv_flow.LF||
'                      </';
    wwv_flow_api.g_varchar2_table(176) := 'fo:block>'||wwv_flow.LF||
'                    </fo:table-cell>'||wwv_flow.LF||
'                    <fo:table-cell padding-start="5.1';
    wwv_flow_api.g_varchar2_table(177) := '5pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top';
    wwv_flow_api.g_varchar2_table(178) := '="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-s';
    wwv_flow_api.g_varchar2_table(179) := 'panned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-wid';
    wwv_flow_api.g_varchar2_table(180) := 'th="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                      <fo:block orphan';
    wwv_flow_api.g_varchar2_table(181) := 's="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-botto';
    wwv_flow_api.g_varchar2_table(182) := 'm="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                        <fo:inline ';
    wwv_flow_api.g_varchar2_table(183) := 'white-space-collapse="false" height="11.0pt" font-family="Calibri" font-size="11.0pt">'||wwv_flow.LF||
'             ';
    wwv_flow_api.g_varchar2_table(184) := '             <xsl:value-of select="(.//NOTES)[1]"/>'||wwv_flow.LF||
'                        </fo:inline>'||wwv_flow.LF||
'           ';
    wwv_flow_api.g_varchar2_table(185) := '           </fo:block>'||wwv_flow.LF||
'                    </fo:table-cell>'||wwv_flow.LF||
'                    <fo:table-cell paddi';
    wwv_flow_api.g_varchar2_table(186) := 'ng-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000';
    wwv_flow_api.g_varchar2_table(187) := '" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" num';
    wwv_flow_api.g_varchar2_table(188) := 'ber-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" b';
    wwv_flow_api.g_varchar2_table(189) := 'order-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                      <fo';
    wwv_flow_api.g_varchar2_table(190) := ':block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" ';
    wwv_flow_api.g_varchar2_table(191) := 'padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(192) := '  <fo:inline white-space-collapse="false" height="11.0pt" font-family="Calibri" font-size="11.0pt">'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(193) := '                          <xsl:value-of select="(.//MODIFIED)[1]"/>'||wwv_flow.LF||
'                        </fo:inl';
    wwv_flow_api.g_varchar2_table(194) := 'ine>'||wwv_flow.LF||
'                      </fo:block>'||wwv_flow.LF||
'                    </fo:table-cell>'||wwv_flow.LF||
'                    <fo:';
    wwv_flow_api.g_varchar2_table(195) := 'table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-en';
    wwv_flow_api.g_varchar2_table(196) := 'd-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-';
    wwv_flow_api.g_varchar2_table(197) := 'end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" ';
    wwv_flow_api.g_varchar2_table(198) := 'height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'         ';
    wwv_flow_api.g_varchar2_table(199) := '             <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" tex';
    wwv_flow_api.g_varchar2_table(200) := 't-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0pt">'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(201) := '                <fo:inline white-space-collapse="false" height="11.0pt" font-family="Calibri" font-s';
    wwv_flow_api.g_varchar2_table(202) := 'ize="11.0pt">'||wwv_flow.LF||
'                          <xsl:value-of select="(.//MODIFIED_BY)[1]"/>'||wwv_flow.LF||
'               ';
    wwv_flow_api.g_varchar2_table(203) := '         </fo:inline>'||wwv_flow.LF||
'                      </fo:block>'||wwv_flow.LF||
'                    </fo:table-cell>'||wwv_flow.LF||
'       ';
    wwv_flow_api.g_varchar2_table(204) := '           </fo:table-row>'||wwv_flow.LF||
'                </xsl:for-each>'||wwv_flow.LF||
'              </fo:table-body>'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(205) := '  </fo:table>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'          <fo:block orphans="2" widows="2" linefeed-treatment="p';
    wwv_flow_api.g_varchar2_table(206) := 'reserve" start-indent="5.4pt" text-align="start" padding-bottom="8.0pt" end-indent="5.4pt" padding-t';
    wwv_flow_api.g_varchar2_table(207) := 'op="0.0pt" height="0.0pt" font-size="11.0pt" font-family="Calibri">'||wwv_flow.LF||
'            <fo:inline id="{conc';
    wwv_flow_api.g_varchar2_table(208) := 'at(%26apos;page-total-%26apos;, $_SECTION_NAME, $_XDOFOPOS)}"/>'||wwv_flow.LF||
'            <fo:inline id="{concat(%';
    wwv_flow_api.g_varchar2_table(209) := '26apos;page-total%26apos;, $_XDOFOPOS)}"/>'||wwv_flow.LF||
'          </fo:block>'||wwv_flow.LF||
'        </fo:flow>'||wwv_flow.LF||
'      </fo:page-';
    wwv_flow_api.g_varchar2_table(210) := 'sequence>'||wwv_flow.LF||
'    </fo:root>'||wwv_flow.LF||
'  </xsl:template>'||wwv_flow.LF||
'</xsl:stylesheet>'||wwv_flow.LF||
'';
end;
/
begin
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(214548358683517338)
,p_report_layout_name=>'test layout 2020-09-23 é & + " '' < >'
,p_report_layout_type=>'XSL_FILE'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
);
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(214331774833937015)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/apex_clob_load
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(214360966038137268)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'APEX_CLOB_LOAD'
,p_display_name=>'APEX CLOB Load'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','APEX_CLOB_LOAD'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#apex-clob-load.js'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'FUNCTION apex_clob_load_render (',
'   p_dynamic_action IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'   p_plugin         IN APEX_PLUGIN.T_PLUGIN',
')',
'',
'   RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT',
'',
'IS',
'',
'   l_retval        APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'   l_action        VARCHAR2(10) := NVL(p_dynamic_action.attribute_01, ''RENDER'');',
'   l_change_only   VARCHAR2(1) := NVL(p_dynamic_action.attribute_06, ''Y'');',
'   l_make_blocking VARCHAR2(1) := NVL(p_dynamic_action.attribute_07, ''Y'');',
'   l_show_spinner  VARCHAR2(1) := NVL(p_dynamic_action.attribute_08, ''Y'');',
'   l_crlf          VARCHAR2(2) := CHR(13)||CHR(10);',
'   l_js_function   VARCHAR2(32767);',
'   l_onload_code   VARCHAR2(32767);',
'',
'BEGIN',
'',
'   IF apex_application.g_debug',
'   THEN',
'      apex_plugin_util.debug_dynamic_action(',
'         p_plugin         => p_plugin,',
'         p_dynamic_action => p_dynamic_action',
'      );',
'   END IF;',
'',
'   l_onload_code :=',
'      ''apex.jQuery(document).apexClobLoad({''|| l_crlf ||',
'      ''   pluginFilePrefix: "'' || p_plugin.file_prefix || ''"'' || l_crlf ||',
'      ''});'';',
'',
'   apex_javascript.add_onload_code(',
'      p_code => l_onload_code',
'   );',
'',
'   IF l_action = ''RENDER''',
'   THEN',
'      l_js_function :=',
'         ''function(){''|| l_crlf ||',
'         ''   apex.jQuery(document).apexClobLoad("renderClob", {'' || l_crlf ||',
'         ''      $elmt: this.affectedElements.eq(0),'' || l_crlf ||',
'         ''      ajaxIdentifier: "'' || apex_plugin.get_ajax_identifier() || ''",'' || l_crlf ||',
'         ''      showSpinner: "'' || l_show_spinner || ''"'' || l_crlf ||',
'         ''   });''|| l_crlf ||',
'         ''}'';',
'   ELSE',
'      l_js_function :=',
'         ''function(){''|| l_crlf ||',
'         ''   apex.jQuery(document).apexClobLoad("submitClob", {'' || l_crlf ||',
'         ''      $elmt: this.affectedElements.eq(0),'' || l_crlf ||',
'         ''      ajaxIdentifier: "'' || apex_plugin.get_ajax_identifier() || ''",'' || l_crlf ||',
'         ''      changeOnly: "'' || l_change_only || ''",'' || l_crlf ||',
'         ''      makeBlocking: "'' || l_make_blocking || ''",'' || l_crlf ||',
'         ''      showSpinner: "'' || l_show_spinner || ''"'' || l_crlf ||',
'         ''   });''|| l_crlf ||',
'         ''}'';',
'   END IF;',
'',
'   l_retval.javascript_function := l_js_function;',
'',
'   RETURN l_retval;',
'',
'END apex_clob_load_render;',
'',
'FUNCTION apex_clob_load_ajax (',
'   p_dynamic_action IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'   p_plugin         IN APEX_PLUGIN.T_PLUGIN',
')',
'',
'    RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_AJAX_RESULT',
'',
'IS',
'',
'   l_retval                   APEX_PLUGIN.T_DYNAMIC_ACTION_AJAX_RESULT;',
'   l_ajax_function            VARCHAR2(32767) := apex_application.g_x01;',
'   l_source                   VARCHAR2(20) := NVL(p_dynamic_action.attribute_02, ''COLLECTION'');',
'   l_render_collection_name   VARCHAR2(255) := p_dynamic_action.attribute_03;',
'   l_query                    VARCHAR2(32767) := p_dynamic_action.attribute_04;',
'   l_submit_collection_name   VARCHAR2(255) := p_dynamic_action.attribute_05;',
'   l_column_value_list        APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST2;',
'   l_clob_text                CLOB := EMPTY_CLOB();',
'   l_token                    VARCHAR2(32000);',
'   l_chunk_size               NUMBER := 4000;',
'',
'BEGIN',
'',
'   IF l_ajax_function = ''RENDER_CLOB''',
'   THEN',
'      IF l_source = ''COLLECTION''',
'      THEN',
'         IF apex_collection.collection_exists(l_render_collection_name)',
'         THEN',
'            SELECT clob001',
'            INTO l_clob_text',
'            FROM apex_collections',
'            WHERE collection_name = l_render_collection_name',
'               AND seq_id = 1;',
'         END IF;',
'      ELSE --must be SQL_QUERY',
'         BEGIN',
'',
'            l_column_value_list := apex_plugin_util.get_data2(',
'               p_sql_statement  => l_query,',
'               p_min_columns    => 1,',
'               p_max_columns    => 1,',
'               p_component_name => p_dynamic_action.action,',
'               p_first_row      => 1,',
'               p_max_rows       => 1',
'            );',
'',
'         EXCEPTION',
'',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               NULL;',
'',
'         END;',
'',
'         IF l_column_value_list.exists(1)',
'            AND l_column_value_list(1).value_list.exists(1)',
'         THEN',
'            l_clob_text := l_column_value_list(1).value_list(1).clob_value;',
'         END IF;',
'      END IF;',
'      ',
'      IF LENGTH(l_clob_text) > 0',
'      THEN',
'          FOR i IN 0 .. FLOOR(LENGTH(l_clob_text)/l_chunk_size)',
'          LOOP',
'             sys.htp.prn(substr(l_clob_text, i * l_chunk_size + 1, l_chunk_size));',
'          END LOOP;',
'      END IF;',
'   ELSE --must be SUBMIT_CLOB',
'      dbms_lob.createtemporary(l_clob_text, false, dbms_lob.session);',
'',
'      FOR i IN 1..apex_application.g_f01.count',
'      LOOP',
'         l_token := wwv_flow.g_f01(i);',
'',
'         IF length(l_token) > 0',
'         THEN',
'            dbms_lob.writeappend(l_clob_text, length(l_token), l_token);',
'         END IF;',
'      END LOOP;',
'',
'      apex_collection.create_or_truncate_collection(',
'         p_collection_name => l_submit_collection_name',
'      );',
'',
'      apex_collection.add_member(',
'         p_collection_name => l_submit_collection_name,',
'         p_clob001         => l_clob_text',
'      );',
'   END IF;',
'',
'   RETURN l_retval;',
'',
'END apex_clob_load_ajax;'))
,p_render_function=>'apex_clob_load_render'
,p_ajax_function=>'apex_clob_load_ajax'
,p_standard_attributes=>'ITEM:JQUERY_SELECTOR:REQUIRED'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'https://github.com/OraOpenSource/apex-plugin-clob-load'
,p_version_identifier=>'2017.08.04'
,p_about_url=>'https://github.com/OraOpenSource/apex-plugin-clob-load'
,p_files_version=>67
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214361215913137269)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'CLOB Action'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'RENDER'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(214361571044137271)
,p_plugin_attribute_id=>wwv_flow_api.id(214361215913137269)
,p_display_sequence=>10
,p_display_value=>'Render'
,p_return_value=>'RENDER'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(214362088897137271)
,p_plugin_attribute_id=>wwv_flow_api.id(214361215913137269)
,p_display_sequence=>20
,p_display_value=>'Submit'
,p_return_value=>'SUBMIT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214362543869137271)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Source'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'SQL_QUERY'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(214361215913137269)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'RENDER'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(214363007542137271)
,p_plugin_attribute_id=>wwv_flow_api.id(214362543869137271)
,p_display_sequence=>10
,p_display_value=>'Collection'
,p_return_value=>'COLLECTION'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(214363520331137272)
,p_plugin_attribute_id=>wwv_flow_api.id(214362543869137271)
,p_display_sequence=>20
,p_display_value=>'SQL Query'
,p_return_value=>'SQL_QUERY'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214363935957137272)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Collection Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>50
,p_max_length=>255
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(214362543869137271)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COLLECTION'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214364374354137272)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_sql_min_column_count=>1
,p_sql_max_column_count=>1
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(214362543869137271)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SQL_QUERY'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214364798273137272)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Collection Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>50
,p_max_length=>255
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(214361215913137269)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SUBMIT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214365218870137272)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Submit Only When Value Changed'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(214361215913137269)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SUBMIT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214365569256137272)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Make Synchronous (Blocking) '
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(214361215913137269)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SUBMIT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(214365983256137272)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Show Spinner'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(214368148942137277)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_name=>'apexclobloadrendercomplete'
,p_display_name=>'CLOB(s) Render Complete'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(214368574949137277)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_name=>'apexclobloadsubmitcomplete'
,p_display_name=>'CLOB(s) Submit Complete'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '766172207175657279537472696E67203D2027273B0A0A66756E6374696F6E20616464506172616D286E616D652C2076616C29207B0A202020696620287175657279537472696E67203D3D3D20272729207B0A2020202020207175657279537472696E67';
wwv_flow_api.g_varchar2_table(2) := '203D206E616D65202B20273D27202B20282876616C20213D206E756C6C29203F20656E636F6465555249436F6D706F6E656E742876616C2920203A202727293B0A2020207D20656C7365207B0A2020202020207175657279537472696E67203D20717565';
wwv_flow_api.g_varchar2_table(3) := '7279537472696E67202B202726272B206E616D65202B20273D27202B20282876616C20213D206E756C6C29203F20656E636F6465555249436F6D706F6E656E742876616C2920203A20272720293B0A2020207D0A7D0A0A66756E6374696F6E206368756E';
wwv_flow_api.g_varchar2_table(4) := '6B436C6F6228636C6F622C2073697A6529207B0A202020766172206C6F6F70436F756E74203D204D6174682E666C6F6F7228636C6F622E6C656E677468202F2073697A6529202B20313B0A0A202020666F7220287661722069203D20303B2069203C206C';
wwv_flow_api.g_varchar2_table(5) := '6F6F70436F756E743B20692B2B29207B0A202020202020616464506172616D2827663031272C20636C6F622E736C6963652873697A65202A20692C73697A652A28692B312929293B0A2020207D0A7D0A0A2F2A2A0A20202054686520666F6C6C6F77696E';
wwv_flow_api.g_varchar2_table(6) := '6720616A6178206C696272617279207761732074616B656E2066726F6D206D696E69616A61780A20202068747470733A2F2F636F64652E676F6F676C652E636F6D2F702F6D696E69616A61782F0A202A2F0A0A66756E6374696F6E20242865297B696628';
wwv_flow_api.g_varchar2_table(7) := '747970656F6620653D3D27737472696E672729653D646F63756D656E742E676574456C656D656E74427949642865293B72657475726E20657D3B0A66756E6374696F6E20636F6C6C65637428612C66297B766172206E3D5B5D3B666F722876617220693D';
wwv_flow_api.g_varchar2_table(8) := '303B693C612E6C656E6774683B692B2B297B76617220763D6628615B695D293B69662876213D6E756C6C296E2E707573682876297D72657475726E206E7D3B0A0A616A61783D7B7D3B0A616A61782E783D66756E6374696F6E28297B7472797B72657475';
wwv_flow_api.g_varchar2_table(9) := '726E206E657720416374697665584F626A65637428274D73786D6C322E584D4C4854545027297D63617463682865297B7472797B72657475726E206E657720416374697665584F626A65637428274D6963726F736F66742E584D4C4854545027297D6361';
wwv_flow_api.g_varchar2_table(10) := '7463682865297B72657475726E206E657720584D4C487474705265717565737428297D7D7D3B0A616A61782E73657269616C697A653D66756E6374696F6E2866297B76617220673D66756E6374696F6E286E297B72657475726E20662E676574456C656D';
wwv_flow_api.g_varchar2_table(11) := '656E747342795461674E616D65286E297D3B766172206E763D66756E6374696F6E2865297B696628652E6E616D652972657475726E20656E636F6465555249436F6D706F6E656E7428652E6E616D65292B273D272B656E636F6465555249436F6D706F6E';
wwv_flow_api.g_varchar2_table(12) := '656E7428652E76616C7565293B656C73652072657475726E2027277D3B76617220693D636F6C6C65637428672827696E70757427292C66756E6374696F6E2869297B69662828692E74797065213D27726164696F272626692E74797065213D2763686563';
wwv_flow_api.g_varchar2_table(13) := '6B626F7827297C7C692E636865636B65642972657475726E206E762869297D293B76617220733D636F6C6C6563742867282773656C65637427292C6E76293B76617220743D636F6C6C65637428672827746578746172656127292C6E76293B7265747572';
wwv_flow_api.g_varchar2_table(14) := '6E20692E636F6E6361742873292E636F6E6361742874292E6A6F696E28272627293B7D3B0A616A61782E73656E643D66756E6374696F6E28752C662C6D2C61297B76617220783D616A61782E7828293B782E6F70656E286D2C752C74727565293B782E6F';
wwv_flow_api.g_varchar2_table(15) := '6E726561647973746174656368616E67653D66756E6374696F6E28297B696628782E726561647953746174653D3D34296628782E726573706F6E736554657874297D3B6966286D3D3D27504F53542729782E736574526571756573744865616465722827';
wwv_flow_api.g_varchar2_table(16) := '436F6E74656E742D74797065272C276170706C69636174696F6E2F782D7777772D666F726D2D75726C656E636F64656427293B782E73656E642861297D3B0A616A61782E6765743D66756E6374696F6E2875726C2C66756E63297B616A61782E73656E64';
wwv_flow_api.g_varchar2_table(17) := '2875726C2C66756E632C2747455427297D3B0A616A61782E676574733D66756E6374696F6E2875726C297B76617220783D616A61782E7828293B782E6F70656E2827474554272C75726C2C66616C7365293B782E73656E64286E756C6C293B7265747572';
wwv_flow_api.g_varchar2_table(18) := '6E20782E726573706F6E7365546578747D3B0A616A61782E706F73743D66756E6374696F6E2875726C2C66756E632C61726773297B616A61782E73656E642875726C2C66756E632C27504F5354272C61726773297D3B0A616A61782E7570646174653D66';
wwv_flow_api.g_varchar2_table(19) := '756E6374696F6E2875726C2C656C6D297B76617220653D2428656C6D293B76617220663D66756E6374696F6E2872297B652E696E6E657248544D4C3D727D3B616A61782E6765742875726C2C66297D3B0A616A61782E7375626D69743D66756E6374696F';
wwv_flow_api.g_varchar2_table(20) := '6E2875726C2C656C6D2C66726D297B76617220653D2428656C6D293B76617220663D66756E6374696F6E2872297B652E696E6E657248544D4C3D727D3B616A61782E706F73742875726C2C662C616A61782E73657269616C697A652866726D29297D3B0A';
wwv_flow_api.g_varchar2_table(21) := '0A6164644576656E744C697374656E657228276D657373616765272C2066756E6374696F6E286529207B0A20202076617220776F726B6572203D20746869732C0A20202020202064617461203D20652E646174613B0A0A20202069662028646174612E78';
wwv_flow_api.g_varchar2_table(22) := '3031203D3D3D20275355424D49545F434C4F422729207B0A202020202020616464506172616D2827705F666C6F775F6964272C20646174612E705F666C6F775F6964293B0A202020202020616464506172616D2827705F666C6F775F737465705F696427';
wwv_flow_api.g_varchar2_table(23) := '2C20646174612E705F666C6F775F737465705F6964293B0A202020202020616464506172616D2827705F696E7374616E6365272C20646174612E705F696E7374616E6365293B0A202020202020616464506172616D2827705F72657175657374272C2064';
wwv_flow_api.g_varchar2_table(24) := '6174612E705F72657175657374293B0A202020202020616464506172616D2827783031272C20646174612E783031293B0A0A2020202020206368756E6B436C6F6228646174612E636C6F62446174612C203330303030293B0A0A202020202020616A6178';
wwv_flow_api.g_varchar2_table(25) := '2E706F7374280A202020202020202020646174612E70617468202B20277777765F666C6F772E73686F77272C0A20202020202020202066756E6374696F6E2864617461297B0A202020202020202020202020776F726B65722E706F73744D657373616765';
wwv_flow_api.g_varchar2_table(26) := '28277375636365737327293B0A2020202020202020207D2C0A2020202020202020207175657279537472696E670A202020202020293B0A2020207D20656C7365207B202F2F6D7573742062652052454E4445525F434C4F420A2020202020206164645061';
wwv_flow_api.g_varchar2_table(27) := '72616D2827705F666C6F775F6964272C20646174612E705F666C6F775F6964293B0A202020202020616464506172616D2827705F666C6F775F737465705F6964272C20646174612E705F666C6F775F737465705F6964293B0A2020202020206164645061';
wwv_flow_api.g_varchar2_table(28) := '72616D2827705F696E7374616E6365272C20646174612E705F696E7374616E6365293B0A202020202020616464506172616D2827705F72657175657374272C20646174612E705F72657175657374293B0A202020202020616464506172616D2827783031';
wwv_flow_api.g_varchar2_table(29) := '272C20646174612E783031293B0A0A202020202020616A61782E706F7374280A202020202020202020646174612E70617468202B20277777765F666C6F772E73686F77272C0A20202020202020202066756E6374696F6E2864617461297B0A2020202020';
wwv_flow_api.g_varchar2_table(30) := '202020202020207661722072657476616C203D207B7D3B0A0A20202020202020202020202072657476616C2E636C6F62203D20646174613B0A0A202020202020202020202020776F726B65722E706F73744D6573736167652872657476616C293B0A2020';
wwv_flow_api.g_varchar2_table(31) := '202020202020207D2C0A2020202020202020207175657279537472696E670A202020202020293B0A2020207D0A0A7D2C2066616C7365293B0A0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(214368935440137279)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_file_name=>'apex-clob-load-worker.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3B2866756E6374696F6E2824297B0D0A0D0A2775736520737472696374273B0D0A0D0A242E776964676574282775692E61706578436C6F624C6F6164272C207B0D0A2020206F7074696F6E733A7B0D0A20202020202073686F774D6F64616C3A206E756C';
wwv_flow_api.g_varchar2_table(2) := '6C2C0D0A2020202020206469616C6F675469746C653A206E756C6C2C0D0A2020202020206C6F6164696E67496D6167655372633A206E756C6C2C0D0A202020202020616A61784964656E7469666965723A206E756C6C2C0D0A2020202020206170657854';
wwv_flow_api.g_varchar2_table(3) := '6869733A206E756C6C2C0D0A202020202020706C7567696E46696C655072656669783A206E756C6C0D0A2020207D2C0D0A2020205F6372656174653A2066756E6374696F6E2829207B0D0A20202020202076617220756977203D20746869733B0D0A0D0A';
wwv_flow_api.g_varchar2_table(4) := '2020202020207569772E5F6372656174655072697661746553746F7261676528293B0D0A2020202020207569772E5F696E6974456C656D656E747328293B0D0A2020207D2C0D0A2020205F6372656174655072697661746553746F726167653A2066756E';
wwv_flow_api.g_varchar2_table(5) := '6374696F6E2829207B0D0A20202020202076617220756977203D20746869733B0D0A0D0A2020202020207569772E5F76616C756573203D207B0D0A2020202020202020206469616C6F67436F756E74446174613A2027636C6F625F6C6F61645F6469616C';
wwv_flow_api.g_varchar2_table(6) := '6F675F636F756E74270D0A2020202020207D3B0D0A0D0A2020202020207569772E5F656C656D656E7473203D207B0D0A202020202020202020246469616C6F673A207B7D0D0A2020202020207D3B0D0A2020207D2C0D0A2020205F696E6974456C656D65';
wwv_flow_api.g_varchar2_table(7) := '6E74733A2066756E6374696F6E2829207B0D0A20202020202076617220756977203D20746869733B0D0A0D0A2020202020207569772E5F656C656D656E74732E246469616C6F67203D202428276469762E636C6F622D6C6F61642D636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(8) := '27293B0D0A2020207D2C0D0A2020205F73686F775370696E6E65723A2066756E6374696F6E2829207B0D0A20202020202076617220756977203D20746869733B0D0A0D0A2020202020207569772E5F76616C7565732E7370696E6E6572203D2061706578';
wwv_flow_api.g_varchar2_table(9) := '2E7574696C2E73686F775370696E6E657228293B0D0A2020207D2C0D0A20202072656E646572436C6F623A2066756E6374696F6E286F70747329207B0D0A20202020202076617220756977203D20746869732C0D0A202020202020202020717565727953';
wwv_flow_api.g_varchar2_table(10) := '7472696E672C0D0A202020202020202020776F726B65722C0D0A202020202020202020776F726B657246696C654E616D653B0D0A0D0A202020202020696620286F7074732E73686F775370696E6E6572203D3D3D2027592729207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(11) := '20207569772E5F696E634469616C6F67436F756E7428293B0D0A0D0A202020202020202020696620287569772E5F6765744469616C6F67436F756E742829203D3D3D2031297B0D0A2020202020202020202020207569772E5F73686F775370696E6E6572';
wwv_flow_api.g_varchar2_table(12) := '28293B0D0A2020202020202020207D0D0A2020202020207D0D0A0D0A2020202020206966202877696E646F772E576F726B657229207B202F2F57656220776F726B65727320737570706F727465642C206D6F766520746F206261636B67726F756E64206A';
wwv_flow_api.g_varchar2_table(13) := '6F620D0A202020202020202020776F726B657246696C654E616D65203D2027617065782D636C6F622D6C6F61642D776F726B65722E6A73273B0D0A202020202020202020776F726B6572203D206E657720576F726B6572287569772E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(14) := '706C7567696E46696C65507265666978202B20776F726B657246696C654E616D65293B0D0A0D0A2020202020202020202F2F5573696E67206E61746976652062696E64696E6773206173206A51756572792773206361757365732070726F626C656D7320';
wwv_flow_api.g_varchar2_table(15) := '7769746820776F726B6572730D0A202020202020202020776F726B65722E6164644576656E744C697374656E657228276D657373616765272C2066756E6374696F6E286529207B0D0A2020202020202020202020207569772E5F68616E646C65436C6F62';
wwv_flow_api.g_varchar2_table(16) := '52656E6465725375636365737328652E646174612E636C6F622C206F707473293B0D0A2020202020202020207D2C2066616C7365293B0D0A0D0A202020202020202020776F726B65722E706F73744D657373616765287B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(17) := '20705F666C6F775F69643A202428272370466C6F77496427292E76616C28292C0D0A202020202020202020202020705F666C6F775F737465705F69643A202428272370466C6F7753746570496427292E76616C28292C0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(18) := '705F696E7374616E63653A202428272370496E7374616E636527292E76616C28292C0D0A202020202020202020202020705F726571756573743A2027504C5547494E3D27202B206F7074732E616A61784964656E7469666965722C0D0A20202020202020';
wwv_flow_api.g_varchar2_table(19) := '20202020207830313A202752454E4445525F434C4F42272C0D0A202020202020202020202020706174683A2077696E646F772E6C6F636174696F6E2E706174686E616D652E736C69636528302C2077696E646F772E6C6F636174696F6E2E706174686E61';
wwv_flow_api.g_varchar2_table(20) := '6D652E6C617374496E6465784F6628272F2729202B2031290D0A2020202020202020207D293B0D0A2020202020207D20656C7365207B0D0A2020202020202020207175657279537472696E67203D207B0D0A202020202020202020202020705F666C6F77';
wwv_flow_api.g_varchar2_table(21) := '5F69643A202428272370466C6F77496427292E76616C28292C0D0A202020202020202020202020705F666C6F775F737465705F69643A202428272370466C6F7753746570496427292E76616C28292C0D0A202020202020202020202020705F696E737461';
wwv_flow_api.g_varchar2_table(22) := '6E63653A202428272370496E7374616E636527292E76616C28292C0D0A202020202020202020202020705F726571756573743A2027504C5547494E3D27202B206F7074732E616A61784964656E7469666965722C0D0A2020202020202020202020207830';
wwv_flow_api.g_varchar2_table(23) := '313A202752454E4445525F434C4F42270D0A2020202020202020207D3B0D0A0D0A202020202020202020242E616A6178287B0D0A202020202020202020202020747970653A2027504F5354272C0D0A20202020202020202020202075726C3A2027777776';
wwv_flow_api.g_varchar2_table(24) := '5F666C6F772E73686F77272C0D0A202020202020202020202020646174613A207175657279537472696E672C0D0A20202020202020202020202064617465547970653A202774657874272C0D0A2020202020202020202020206173796E633A2074727565';
wwv_flow_api.g_varchar2_table(25) := '2C0D0A202020202020202020202020636F6E746578743A20746869732C0D0A202020202020202020202020737563636573733A2066756E6374696F6E2864617461297B0D0A2020202020202020202020202020207569772E5F68616E646C65436C6F6252';
wwv_flow_api.g_varchar2_table(26) := '656E6465725375636365737328646174612C206F707473293B0D0A2020202020202020202020207D0D0A2020202020202020207D293B0D0A2020202020207D0D0A2020207D2C0D0A2020205F68616E646C65436C6F6252656E646572537563636573733A';
wwv_flow_api.g_varchar2_table(27) := '2066756E6374696F6E28646174612C206F70747329207B0D0A20202020202076617220756977203D20746869733B0D0A0D0A2020202020202F2F202473286F7074732E24656C6D745B305D2C2064617461293B0D0A202020202020617065782E6974656D';
wwv_flow_api.g_varchar2_table(28) := '286F7074732E24656C6D745B305D292E73657456616C75652864617461293B0D0A202020202020242E64617461286F7074732E24656C6D745B305D2C202764656661756C7456616C7565272C2064617461293B0D0A0D0A202020202020696620286F7074';
wwv_flow_api.g_varchar2_table(29) := '732E73686F775370696E6E6572203D3D3D2027592729207B0D0A2020202020202020207569772E5F6465634469616C6F67436F756E7428293B0D0A2020202020207D0D0A0D0A202020202020696620287569772E5F6765744469616C6F67436F756E7428';
wwv_flow_api.g_varchar2_table(30) := '29203D3D3D203029207B0D0A2020202020202020207569772E5F76616C7565732E7370696E6E65722E72656D6F766528293B0D0A0D0A2020202020202020202428646F63756D656E74292E74726967676572282761706578636C6F626C6F616472656E64';
wwv_flow_api.g_varchar2_table(31) := '6572636F6D706C65746527293B0D0A2020202020207D0D0A2020207D2C0D0A2020207375626D6974436C6F623A2066756E6374696F6E286F707473297B0D0A20202020202076617220756977203D20746869732C0D0A202020202020202020656C6D742C';
wwv_flow_api.g_varchar2_table(32) := '0D0A202020202020202020636C6F62446174612C0D0A20202020202020202064656661756C7456616C75652C0D0A2020202020202020207175657279537472696E672C0D0A202020202020202020776F726B65723B0D0A0D0A202020202020656C6D7420';
wwv_flow_api.g_varchar2_table(33) := '3D206F7074732E24656C6D745B305D3B0D0A2020202020202F2F2043415345202D207768656E207573696E672072696368207465787420656469746F72207673207374616E64617264207465787420617265612E0D0A202020202020696620282428656C';
wwv_flow_api.g_varchar2_table(34) := '6D74292E686173436C6173732822726963685F746578745F656469746F72222929207B0D0A20202020202020202F2F2044756520746F207261636520636F6E646974696F6E2C2031732064656C6179206973206164646564206265666F72652074686520';
wwv_flow_api.g_varchar2_table(35) := '67657456616C756528290D0A20202020202020202F2F2054686973206973206E6F7420616E20696465616C20736F6C7574696F6E2E202053756767657374696F6E732077656C636F6D652E0D0A202020202020202073657454696D656F75742866756E63';
wwv_flow_api.g_varchar2_table(36) := '74696F6E28297B766F69642830293B7D2C2031303030293B0D0A2020202020207D0D0A0D0A2020202020202F2F204C657665726167652041504558204A53206C6962726172790D0A202020202020636C6F6244617461203D20617065782E6974656D2865';
wwv_flow_api.g_varchar2_table(37) := '6C6D74292E67657456616C756528293B0D0A0D0A20202020202064656661756C7456616C7565203D20242E6461746128656C6D742C202764656661756C7456616C756527293B0D0A202020202020247328656C6D742C202727293B202F2F616464656420';
wwv_flow_api.g_varchar2_table(38) := '64756520746F2074726F75626C65207375626D697474696E6720706167652C206C6F6F6B20696E746F206361746368696E67206572726F727320616E642070757474696E672076616C756573206261636B0D0A0D0A202020202020696620286F7074732E';
wwv_flow_api.g_varchar2_table(39) := '6368616E67654F6E6C79203D3D3D20274E27207C7C20636C6F624461746120213D3D2064656661756C7456616C756529207B0D0A202020202020202020696620286F7074732E73686F775370696E6E6572203D3D3D2027592729207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(40) := '2020202020207569772E5F696E634469616C6F67436F756E7428293B0D0A0D0A202020202020202020202020696620287569772E5F6765744469616C6F67436F756E742829203D3D3D2031297B0D0A2020202020202020202020202020207569772E5F73';
wwv_flow_api.g_varchar2_table(41) := '686F775370696E6E657228293B0D0A2020202020202020202020207D0D0A2020202020202020207D0D0A0D0A202020202020202020696620286F7074732E6D616B65426C6F636B696E67203D3D3D2027592729207B0D0A20202020202020202020202071';
wwv_flow_api.g_varchar2_table(42) := '75657279537472696E67203D207B0D0A202020202020202020202020202020705F666C6F775F69643A202428272370466C6F77496427292E76616C28292C0D0A202020202020202020202020202020705F666C6F775F737465705F69643A202428272370';
wwv_flow_api.g_varchar2_table(43) := '466C6F7753746570496427292E76616C28292C0D0A202020202020202020202020202020705F696E7374616E63653A202428272370496E7374616E636527292E76616C28292C0D0A202020202020202020202020202020705F726571756573743A202750';
wwv_flow_api.g_varchar2_table(44) := '4C5547494E3D27202B206F7074732E616A61784964656E7469666965722C0D0A2020202020202020202020202020207830313A20275355424D49545F434C4F42272C0D0A2020202020202020202020202020206630313A205B5D0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(45) := '202020207D3B0D0A0D0A2020202020202020202020207175657279537472696E67203D207569772E5F6368756E6B436C6F6228636C6F62446174612C2033303030302C20207175657279537472696E67293B0D0A0D0A202020202020202020202020242E';
wwv_flow_api.g_varchar2_table(46) := '616A6178287B0D0A202020202020202020202020202020747970653A2027504F5354272C0D0A20202020202020202020202020202075726C3A20277777765F666C6F772E73686F77272C0D0A202020202020202020202020202020646174613A20717565';
wwv_flow_api.g_varchar2_table(47) := '7279537472696E672C0D0A20202020202020202020202020202064617465547970653A202774657874272C0D0A2020202020202020202020202020206173796E633A2066616C73652C0D0A202020202020202020202020202020636F6E746578743A2074';
wwv_flow_api.g_varchar2_table(48) := '6869732C0D0A202020202020202020202020202020737563636573733A2066756E6374696F6E2864617461297B0D0A2020202020202020202020202020202020207569772E5F68616E646C655375626D6974436C6F6253756363657373286F707473293B';
wwv_flow_api.g_varchar2_table(49) := '0D0A2020202020202020202020202020207D0D0A2020202020202020202020207D293B0D0A2020202020202020207D20656C7365207B0D0A2020202020202020202020206966202877696E646F772E576F726B657229207B202F2F57656220776F726B65';
wwv_flow_api.g_varchar2_table(50) := '727320737570706F727465642C206D6F766520746F206261636B67726F756E64206A6F620D0A202020202020202020202020202020776F726B6572203D206E657720576F726B6572287569772E6F7074696F6E732E706C7567696E46696C655072656669';
wwv_flow_api.g_varchar2_table(51) := '78202B2027617065782D636C6F622D6C6F61642D776F726B65722E6A7327293B0D0A0D0A2020202020202020202020202020202F2F5573696E67206E61746976652062696E64696E6773206173206A51756572792773206361757365732070726F626C65';
wwv_flow_api.g_varchar2_table(52) := '6D73207769746820776F726B6572730D0A202020202020202020202020202020776F726B65722E6164644576656E744C697374656E657228276D657373616765272C2066756E6374696F6E286529207B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(53) := '7569772E5F68616E646C655375626D6974436C6F6253756363657373286F707473293B0D0A2020202020202020202020202020207D2C2066616C7365293B0D0A0D0A202020202020202020202020202020776F726B65722E706F73744D65737361676528';
wwv_flow_api.g_varchar2_table(54) := '7B0D0A202020202020202020202020202020202020705F666C6F775F69643A202428272370466C6F77496427292E76616C28292C0D0A202020202020202020202020202020202020705F666C6F775F737465705F69643A202428272370466C6F77537465';
wwv_flow_api.g_varchar2_table(55) := '70496427292E76616C28292C0D0A202020202020202020202020202020202020705F696E7374616E63653A202428272370496E7374616E636527292E76616C28292C0D0A202020202020202020202020202020202020705F726571756573743A2027504C';
wwv_flow_api.g_varchar2_table(56) := '5547494E3D27202B206F7074732E616A61784964656E7469666965722C0D0A2020202020202020202020202020202020207830313A20275355424D49545F434C4F42272C0D0A202020202020202020202020202020202020636C6F62446174613A20636C';
wwv_flow_api.g_varchar2_table(57) := '6F62446174612C0D0A202020202020202020202020202020202020706174683A2077696E646F772E6C6F636174696F6E2E706174686E616D652E736C69636528302C2077696E646F772E6C6F636174696F6E2E706174686E616D652E6C617374496E6465';
wwv_flow_api.g_varchar2_table(58) := '784F6628272F2729202B2031290D0A2020202020202020202020202020207D293B0D0A2020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020207175657279537472696E67203D207B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(59) := '20202020202020705F666C6F775F69643A202428272370466C6F77496427292E76616C28292C0D0A202020202020202020202020202020202020705F666C6F775F737465705F69643A202428272370466C6F7753746570496427292E76616C28292C0D0A';
wwv_flow_api.g_varchar2_table(60) := '202020202020202020202020202020202020705F696E7374616E63653A202428272370496E7374616E636527292E76616C28292C0D0A202020202020202020202020202020202020705F726571756573743A2027504C5547494E3D27202B206F7074732E';
wwv_flow_api.g_varchar2_table(61) := '616A61784964656E7469666965722C0D0A2020202020202020202020202020202020207830313A20275355424D49545F434C4F42272C0D0A2020202020202020202020202020202020206630313A205B5D0D0A2020202020202020202020202020207D3B';
wwv_flow_api.g_varchar2_table(62) := '0D0A0D0A2020202020202020202020202020207175657279537472696E67203D207569772E5F6368756E6B436C6F6228636C6F62446174612C2033303030302C20207175657279537472696E67293B0D0A0D0A202020202020202020202020202020242E';
wwv_flow_api.g_varchar2_table(63) := '616A6178287B0D0A202020202020202020202020202020202020747970653A2027504F5354272C0D0A20202020202020202020202020202020202075726C3A20277777765F666C6F772E73686F77272C0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(64) := '646174613A207175657279537472696E672C0D0A20202020202020202020202020202020202064617465547970653A202774657874272C0D0A2020202020202020202020202020202020206173796E633A20747275652C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(65) := '20202020202020636F6E746578743A20746869732C0D0A202020202020202020202020202020202020737563636573733A2066756E6374696F6E2864617461297B0D0A2020202020202020202020202020202020202020207569772E5F68616E646C6553';
wwv_flow_api.g_varchar2_table(66) := '75626D6974436C6F6253756363657373286F707473293B0D0A2020202020202020202020202020202020207D0D0A2020202020202020202020202020207D293B0D0A2020202020202020202020207D0D0A2020202020202020207D0D0A2020202020207D';
wwv_flow_api.g_varchar2_table(67) := '0D0A2020207D2C0D0A2020205F68616E646C655375626D6974436C6F62537563636573733A2066756E6374696F6E286F707473297B0D0A20202020202076617220756977203D20746869733B0D0A0D0A202020202020696620286F7074732E73686F7753';
wwv_flow_api.g_varchar2_table(68) := '70696E6E6572203D3D3D2027592729207B0D0A2020202020202020207569772E5F6465634469616C6F67436F756E7428293B0D0A2020202020207D0D0A0D0A202020202020696620287569772E5F6765744469616C6F67436F756E742829203D3D3D2030';
wwv_flow_api.g_varchar2_table(69) := '29207B0D0A2020202020202020207569772E5F76616C7565732E7370696E6E65722E72656D6F766528293B0D0A0D0A2020202020202020202428646F63756D656E74292E74726967676572282761706578636C6F626C6F61647375626D6974636F6D706C';
wwv_flow_api.g_varchar2_table(70) := '65746527293B0D0A2020202020207D0D0A2020207D2C0D0A2020205F696E634469616C6F67436F756E743A2066756E6374696F6E28297B0D0A20202020202076617220756977203D20746869732C0D0A202020202020202020636F756E74203D20756977';
wwv_flow_api.g_varchar2_table(71) := '2E5F6765744469616C6F67436F756E7428293B0D0A0D0A20202020202069662028636F756E74203D3D3D20756E646566696E6564207C7C20636F756E74203C203029207B0D0A202020202020202020636F756E74203D20313B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(72) := '7569772E5F7365744469616C6F67436F756E7428636F756E74293B0D0A2020202020207D20656C7365207B0D0A202020202020202020636F756E742B2B3B0D0A2020202020202020207569772E5F7365744469616C6F67436F756E7428636F756E74293B';
wwv_flow_api.g_varchar2_table(73) := '0D0A2020202020207D0D0A2020207D2C0D0A2020205F6465634469616C6F67436F756E743A2066756E6374696F6E28297B0D0A20202020202076617220756977203D20746869732C0D0A202020202020202020636F756E74203D207569772E5F67657444';
wwv_flow_api.g_varchar2_table(74) := '69616C6F67436F756E7428293B0D0A0D0A20202020202069662028636F756E74203E3D203029207B0D0A202020202020202020636F756E742D2D3B0D0A2020202020202020207569772E5F7365744469616C6F67436F756E7428636F756E74293B0D0A20';
wwv_flow_api.g_varchar2_table(75) := '20202020207D0D0A2020207D2C0D0A2020205F6765744469616C6F67436F756E743A2066756E6374696F6E28297B0D0A20202020202076617220756977203D20746869732C0D0A202020202020202020636F756E74203D20242E6461746128646F63756D';
wwv_flow_api.g_varchar2_table(76) := '656E742C207569772E5F76616C7565732E6469616C6F67436F756E7444617461293B0D0A0D0A20202020202072657475726E2028636F756E74203D3D3D20756E646566696E6564207C7C20636F756E74203C203029203F2030203A20636F756E743B0D0A';
wwv_flow_api.g_varchar2_table(77) := '2020207D2C0D0A2020205F7365744469616C6F67436F756E743A2066756E6374696F6E286E6577436F756E74297B0D0A20202020202076617220756977203D20746869733B0D0A0D0A202020202020242E6461746128646F63756D656E742C207569772E';
wwv_flow_api.g_varchar2_table(78) := '5F76616C7565732E6469616C6F67436F756E74446174612C206E6577436F756E74293B0D0A2020207D2C0D0A2020205F6368756E6B436C6F623A2066756E6374696F6E28636C6F622C73697A652C7175657279537472696E67297B0D0A20202020202076';
wwv_flow_api.g_varchar2_table(79) := '617220756977203D20746869732C0D0A2020202020202020206C6F6F70436F756E74203D204D6174682E666C6F6F7228636C6F622E6C656E677468202F2073697A6529202B20313B0D0A0D0A202020202020666F7220287661722069203D20303B206920';
wwv_flow_api.g_varchar2_table(80) := '3C206C6F6F70436F756E743B20692B2B29207B0D0A2020202020202020207175657279537472696E672E6630312E7075736828636C6F622E736C6963652873697A65202A20692C73697A652A28692B312929293B0D0A2020202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(81) := '20202072657475726E207175657279537472696E673B0D0A2020207D0D0A7D293B0D0A7D2928617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(214369341048137279)
,p_plugin_id=>wwv_flow_api.id(214360966038137268)
,p_file_name=>'apex-clob-load.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(214331589571937005)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(214289198374936963)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(214325666136936990)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(214331476411937005)
,p_nav_bar_list_template_id=>wwv_flow_api.id(214322735692936988)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(214331589571937005)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.t-Footer {display:none}',
'.t-Body-content {padding-bottom:0}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PILKEYR'
,p_last_upd_yyyymmddhh24miss=>'20200923135619'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214216472686385974)
,p_plug_name=>'Source'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(214305368900936979)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Original Source and documentation:',
'<br />',
'<a href="https://github.com/patrickmonaco/BIP_TO_FOP">https://github.com/patrickmonaco/BIP_TO_FOP</a>',
'<br />',
'<A HREF="http://gpmfactory.com/index.php/2019/10/16/using-bi-publisher-rtf-templates-with-oracle-apex/">http://gpmfactory.com/index.php/2019/10/16/using-bi-publisher-rtf-templates-with-oracle-apex/</a>',
'<br />',
'<a href="https://web.archive.org/web/20200610191958/http://gpmfactory.com/index.php/2019/10/16/using-bi-publisher-rtf-templates-with-oracle-apex/">web archive (wayback machine</a>)',
''))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214216588675385975)
,p_plug_name=>'What is this?'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(214305368900936979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Allows you to create a MS-Word file (with fields, looping), convert it  into XSL-FO program output for Apex''s APEX_UTIL.DOWNLOAD_PRINT_DOCUMENT() function to send to Apache FOP to produce PDF or RTF. Or the Report Query/Report Layout system (again us'
||'ing Apache FOP).'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214216690512385976)
,p_plug_name=>'Instructions/Requirements'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(214305368900936979)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ol>',
'    <li>Required: MS-Office. (Microsoft Word, 2013 or later(?))</li>',
'    <li>Install <a href="https://www.oracle.com/middleware/technologies/bi-publisher.html">Oracle Business Intelligence Publisher plugin</a>. (aka BIP, aka BI Publisher)</li>',
'    <li>create a Word file, export to xsl-fo:</li>',
'    <p>',
'    <ul>Menu',
'        <li>"BI Publisher"</li>',
'        <ul>',
'            <li>"Export"</li>',
'            <ul>',
'                <li>XSL-FO Stylesheet</li>',
'            </ul>',
'        </ul>',
'    </ul>',
'    </p>',
'    <li>It should create an output xml file in a temp folder something like <code>C:\Users\pilkeyr\AppData\Local\Oracle\BIPublisher\TemplateBuilderforWord\tmp\tmp\421600451937253out.xml</code>, paste its contents into a template form here, in the "in'
||'_bip" field. If it opened automatically in IE, don''t copy from there, that code has been modified by IE.</li>',
'    <li>This file has tags in it that Apache FOP doesn''t understand, so it needs to be converted to the "out_fop" field.<br />',
'    Take the code in "out_fop" and use it as your xsl-fo for the APEX_UTIL.DOWNLOAD_PRINT_DOCUMENT() function, or paste into an Apex "Report Layout"</li>',
'</ol>',
'<p>"Report Queries" and "Report Layouts" are in the database in internal apex tables.  You can push a layout from here straight to the layout if you grant this user permission to update that table, saving copy/paste time (see original documentation b'
||'elow)<br />',
'e.g.<br />',
'<code>',
'grant SELECT, UPDATE on APEX_050000.WWV_FLOW_REPORT_LAYOUTS TO fop;<br />',
'grant SELECT on APEX_050000.WWV_FLOW_SHARED_QUERIES TO fop;',
'</code>',
'</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214333371373937027)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(214308679852936980)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(214332853599937024)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(214326909086936994)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(214331589571937005)
,p_name=>'Template List'
,p_page_mode=>'NORMAL'
,p_step_title=>'Template List'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.t-Footer {display:none}',
'.t-Body-content {padding-bottom:0}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PILKEYR'
,p_last_upd_yyyymmddhh24miss=>'20200921124004'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214350148175092005)
,p_plug_name=>'Template List'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(214304885822936979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select b."ID", ',
'b."TEMPLATE_NAME",',
'b."NOTES",',
'b."MODIFIED",',
'b."LAYOUT_ID",',
'l.REPORT_LAYOUT_NAME,',
'b."MODIFIED_BY"',
'from "BIP2FOP" b',
'left outer join apex_050000.wwv_flow_report_layouts l on b.layout_id = l.id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(214350625510092007)
,p_name=>'Template List'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.::::P4_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'PILKEYR'
,p_internal_uid=>9303397936384481
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214350660557092008)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214351051731092008)
,p_db_column_name=>'TEMPLATE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Template Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214351482425092008)
,p_db_column_name=>'NOTES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214351917608092008)
,p_db_column_name=>'MODIFIED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Modified'
,p_column_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214352325932092010)
,p_db_column_name=>'LAYOUT_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Layout Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214352656987092010)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214414807162953033)
,p_db_column_name=>'REPORT_LAYOUT_NAME'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Report layout name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(214354843547095841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'93077'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:TEMPLATE_NAME:NOTES:MODIFIED:MODIFIED_BY:REPORT_LAYOUT_NAME'
,p_sort_column_1=>'MODIFIED'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214353715339092011)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(214308679852936980)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(214332853599937024)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(214326909086936994)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214353091400092010)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(214350148175092005)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(214331589571937005)
,p_name=>'Edit BIP2FOP Template'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit BIP2FOP Template'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.t-Footer {display:none}',
'.t-Body-content {padding-bottom:0}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PILKEYR'
,p_last_upd_yyyymmddhh24miss=>'20201007152735'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214340822431091918)
,p_plug_name=>'Edit BIP2FOP template'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(214305368900936979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214354322466092011)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(214308679852936980)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(214332853599937024)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(214326909086936994)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214414902259953034)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(214340822431091918)
,p_button_name=>'ConvertBIPtoFOP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(214326474596936993)
,p_button_image_alt=>'Convert BIP to FOP'
,p_button_position=>'BODY'
,p_icon_css_classes=>'fa-level-down'
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214414144225953027)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(214340822431091918)
,p_button_name=>'RunApexReportQuery'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_image_alt=>'Run apex report query'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214414302700953028)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(214340822431091918)
,p_button_name=>'ReplaceLayout'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_image_alt=>'Replace Layout'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>7
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214341293099091919)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(214340822431091918)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214341489157091919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(214340822431091918)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214341150176091919)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(214340822431091918)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214341345872091919)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(214340822431091918)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(214343329765091922)
,p_branch_name=>'Go To Page 3'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(204160840743681604)
,p_name=>'P4_URLENCODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Urlencode for use in Layout'
,p_source=>'P4_URLENCODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The report/layout system requires text() and attribute values to be urlencoded <br />(like "+" --> "%2b")<br /> , because they like to make things harder.  But running APEX_UTIL.DOWNLOAD_PRINT_DOCUMENT() like we do for PDFGen and NMS, it doesn''t need'
||' the xsl-fo to be encoded?.  anyway, try one way, then the other.  RP  '
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214343768801091980)
,p_name=>'P4_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214344085168091988)
,p_name=>'P4_TEMPLATE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Template Name'
,p_source=>'TEMPLATE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214344518914091990)
,p_name=>'P4_NOTES'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214344907936091990)
,p_name=>'P4_MODIFIED'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified:'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_source=>'MODIFIED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214345267896091991)
,p_name=>'P4_LAYOUT_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Layout'
,p_source=>'LAYOUT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'--flow_id || '': '' || ',
'report_layout_name as d, ',
'       id as r',
'  from APEX_050000.WWV_FLOW_REPORT_LAYOUTS ',
'  ',
'  where flow_id = :APP_ID --don''t mess with other apps (for now)',
' order by last_updated_on desc, created_on desc;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select a saved Layout (Shared Components)'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214345688500091991)
,p_name=>'P4_MODIFIED_BY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified By:'
,p_source=>'MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214386879303189327)
,p_name=>'P4_IN_BIP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_prompt=>'in_bip'
,p_pre_element_text=>'Save this before conversion, to get Oracle xmltype validation/cleanup.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cHeight=>10
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214387139263191891)
,p_name=>'P4_OUT_FOP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_prompt=>'out_fop'
,p_pre_element_text=>'(readonly, populate with the "Convert" button, then Save to get Oracle xmltype validation/cleanup.)'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cHeight=>10
,p_tag_attributes=>'readonly '
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214416360425953049)
,p_name=>'P4_WORD_SOURCE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upload new Word source file (RTF)'
,p_source=>'WORD_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_03=>'WORD_SOURCE_FILENAME'
,p_attribute_05=>'WORD_SOURCE_MODIFIED'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214416619974953051)
,p_name=>'P4_REPORT_QUERY_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Query'
,p_source=>'REPORT_QUERY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'--flow_id || '': '' || ',
'--''query: '' || q.name || '', layout: '' || l.report_layout_name as d, ',
'q.name as d, ',
'       q.id as r',
'  from APEX_050000.WWV_FLOW_SHARED_QUERIES q',
'  join APEX_050000.WWV_FLOW_REPORT_LAYOUTS l on q.REPORT_LAYOUT_ID = l.id',
'  ',
'  where q.flow_id = :APP_ID --don''t mess with other apps (for now)',
' order by q.last_updated_on desc, q.created_on desc;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select a saved Report Query (Shared Components)'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214416700182953052)
,p_name=>'P4_WORD_SOURCE_FILENAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Word source'
,p_source=>'WORD_SOURCE_FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214416768183953053)
,p_name=>'P4_WORD_SOURCE_MODIFIED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source modified:'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_source=>'WORD_SOURCE_MODIFIED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214417383347953059)
,p_name=>'P4_PASTE_INSTRUCTIONS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_source=>'Paste output from Word BI Plugin here.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214418397395953069)
,p_name=>'P4_REPORT_QUERY_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(214340822431091918)
,p_source=>'P4_REPORT_QUERY_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214384513146158571)
,p_name=>'APEX Clob Plugin - Fetch in_bip'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P4_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214384847904158571)
,p_event_id=>wwv_flow_api.id(214384513146158571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_IN_BIP'
,p_attribute_01=>'RENDER'
,p_attribute_02=>'SQL_QUERY'
,p_attribute_04=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*',
'use substr to avoid null at char 4000, causing string to repeat there?',
'ref: http://stackoverflow.com/a/15008645',
'no, that fails once in a while',
'*/',
'',
'',
'select ',
'/*xmltype.getclobval(s.xml_contents) xml_contents*/',
'/*substr(xmltype.getclobval(s.xml_contents), 0) xml_contents*/',
'',
'/*added the "indent", seems to always work???*/',
'XMLSerialize(DOCUMENT x.in_bip as CLOB INDENT size=2) in_bip',
'/*substr(XMLSerialize(DOCUMENT s.xml_contents as CLOB), 0) xml_contents*/',
'',
'from bip2fop x',
'where ',
'id = :P4_ID'))
,p_attribute_08=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214216059372385970)
,p_name=>'APEX Clob Plugin - Fetch out_fop'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P4_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214216160300385971)
,p_event_id=>wwv_flow_api.id(214216059372385970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OUT_FOP'
,p_attribute_01=>'RENDER'
,p_attribute_02=>'SQL_QUERY'
,p_attribute_04=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*',
'use substr to avoid null at char 4000, causing string to repeat there?',
'ref: http://stackoverflow.com/a/15008645',
'no, that fails once in a while',
'*/',
'',
'',
'select ',
'/*xmltype.getclobval(s.xml_contents) xml_contents*/',
'/*substr(xmltype.getclobval(s.xml_contents), 0) xml_contents*/',
'',
'/*added the "indent", seems to always work???*/',
'XMLSerialize(DOCUMENT x.out_fop as CLOB INDENT size=2) out_fop',
'/*substr(XMLSerialize(DOCUMENT s.xml_contents as CLOB), 0) xml_contents*/',
'',
'from bip2fop x',
'where ',
'id = :P4_ID'))
,p_attribute_08=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214385296953160672)
,p_name=>'Clob to Table'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214385653086160672)
,p_event_id=>wwv_flow_api.id(214385296953160672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_IN_BIP'
,p_attribute_01=>'SUBMIT'
,p_attribute_05=>'APEX_CLOB_PLUGIN_IN_BIP'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214216320442385972)
,p_event_id=>wwv_flow_api.id(214385296953160672)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OUT_FOP'
,p_attribute_01=>'SUBMIT'
,p_attribute_05=>'APEX_CLOB_PLUGIN_OUT_FOP'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214414342688953029)
,p_name=>'ReplaceLayout_Clicked'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(214414302700953028)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P4_LAYOUT_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214414615266953031)
,p_event_id=>wwv_flow_api.id(214414342688953029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OUT_FOP'
,p_attribute_01=>'SUBMIT'
,p_attribute_05=>'APEX_CLOB_PLUGIN_OUT_FOP'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214414474184953030)
,p_event_id=>wwv_flow_api.id(214414342688953029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'',
'  l_out_fop clob;',
'',
'begin',
'',
'  SELECT clob001',
'  INTO l_out_fop',
'  FROM apex_collections',
'  WHERE collection_name = ''APEX_CLOB_PLUGIN_OUT_FOP'';',
'',
'  update APEX_050000.WWV_FLOW_REPORT_LAYOUTS ',
'  set PAGE_TEMPLATE = l_out_fop where ID = :P4_LAYOUT_ID;',
'  ',
'  commit;',
'',
'end;'))
,p_attribute_02=>'P4_LAYOUT_ID'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214414691839953032)
,p_event_id=>wwv_flow_api.id(214414342688953029)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OUT_FOP'
,p_attribute_01=>'RENDER'
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'APEX_CLOB_PLUGIN_OUT_FOP'
,p_attribute_08=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214414928923953035)
,p_name=>'ConvertBIPtoFOP_clicked'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(214414902259953034)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214415200480953037)
,p_event_id=>wwv_flow_api.id(214414928923953035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_IN_BIP'
,p_attribute_01=>'SUBMIT'
,p_attribute_05=>'APEX_CLOB_PLUGIN_IN_BIP'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(192254920988774003)
,p_event_id=>wwv_flow_api.id(214414928923953035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OUT_FOP'
,p_attribute_01=>'SUBMIT'
,p_attribute_05=>'APEX_CLOB_PLUGIN_OUT_FOP'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214415051202953036)
,p_event_id=>wwv_flow_api.id(214414928923953035)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'l_in_bip CLOB;',
'',
'BEGIN',
'',
'  SELECT clob001 ',
'  INTO l_in_bip',
'  FROM apex_collections',
'  WHERE collection_name = ''APEX_CLOB_PLUGIN_IN_BIP'';',
'    ',
'  --original regexp',
'  --BIP2FOP_PKG.convert_fo_template(l_in_bip); ',
'  l_in_bip := BIP2FOP_PKG.convert_fo_template(xml_in=> l_in_bip, fix_urlencode=>:P4_URLENCODE); ',
'',
'  --can''t just assign a big clob to a page item.  newer apex or oracle  handles this, but when backporting to apex 5.0, this failed on large data',
'  --:P4_OUT_FOP := l_in_bip;',
'                            ',
'  APEX_COLLECTION.UPDATE_MEMBER (p_collection_name => ''APEX_CLOB_PLUGIN_OUT_FOP'', p_seq => 1, p_clob001 => l_in_bip);',
'  ',
'',
'end;',
'',
'',
''))
,p_attribute_02=>'P4_URLENCODE'
,p_attribute_03=>'P4_OUT_FOP'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214415669588953042)
,p_event_id=>wwv_flow_api.id(214414928923953035)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_IN_BIP'
,p_attribute_01=>'RENDER'
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'APEX_CLOB_PLUGIN_IN_BIP'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214418671130953072)
,p_event_id=>wwv_flow_api.id(214414928923953035)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX_CLOB_LOAD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OUT_FOP'
,p_attribute_01=>'RENDER'
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'APEX_CLOB_PLUGIN_OUT_FOP'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214417675689953062)
,p_event_id=>wwv_flow_api.id(214414928923953035)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_OUT_FOP_MODIFIED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select TO_CHAR(SYSTIMESTAMP,''YYYY-MM-DD HH24:MI:SS'') from dual;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214418182725953067)
,p_name=>'onchange_report_query_id'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_REPORT_QUERY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214590155617900032)
,p_event_id=>wwv_flow_api.id(214418182725953067)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_REPORT_QUERY_NAME'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.item( "P4_REPORT_QUERY_NAME" ).setValue(null);',
'console.log (''P4_REPORT_QUERY_NAME setvalue(null):''+apex.item( "P4_REPORT_QUERY_NAME" ).getValue());',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214418866737953074)
,p_event_id=>wwv_flow_api.id(214418182725953067)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(214414144225953027)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214418973831953075)
,p_event_id=>wwv_flow_api.id(214418182725953067)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log("hide RunApexReportQuery");'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214418297362953068)
,p_event_id=>wwv_flow_api.id(214418182725953067)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_REPORT_QUERY_NAME'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var pNd,selected_text;',
'',
'//RP displayValueFor() only appeared after apex 5.1, yay',
'//var retvalue, displayvalue;',
'//retvalue = apex.item(''P1_XML'').getValue();',
'//console.log (''retvalue:''+retvalue);',
'//displayvalue = apex.item(''P1_XML'').displayValueFor(retvalue);',
'',
'',
'pNd = $x(''P4_REPORT_QUERY_ID'');',
'console.log("pNd:"+pNd);',
'',
'selected_text = pNd.options[pNd.selectedIndex].text;',
'console.log("selected_text:"+selected_text);',
'',
'apex.item( "P4_REPORT_QUERY_NAME" ).setValue( selected_text );',
'console.log (''P4_REPORT_QUERY_NAME:''+apex.item( "P4_REPORT_QUERY_NAME" ).getValue());',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214418812960953073)
,p_event_id=>wwv_flow_api.id(214418182725953067)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(214414144225953027)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214590359206900034)
,p_event_id=>wwv_flow_api.id(214418182725953067)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log("show RunApexReportQuery");'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214418465389953070)
,p_name=>'onclick runApexReportquery'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(214414144225953027)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214418621475953071)
,p_event_id=>wwv_flow_api.id(214418465389953070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var report_query_name = encodeURI(apex.item(''P4_REPORT_QUERY_NAME'').getValue());',
'console.log(''report_query_name :''+report_query_name );',
'',
'var report_url = ''f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=''+report_query_name ;',
'console.log(''report_url:''+report_url);',
'',
'window.open(report_url);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214589657986900027)
,p_name=>'onchange_layout_id'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_LAYOUT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214589755980900028)
,p_event_id=>wwv_flow_api.id(214589657986900027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(214414302700953028)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214589919923900029)
,p_event_id=>wwv_flow_api.id(214589657986900027)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(214414302700953028)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214589962116900030)
,p_event_id=>wwv_flow_api.id(214589657986900027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log("show ReplaceLayout");'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214590036234900031)
,p_event_id=>wwv_flow_api.id(214589657986900027)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log("hide ReplaceLayout");'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214590549448900036)
,p_name=>'onchange_layout_id log'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_LAYOUT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214590722358900037)
,p_event_id=>wwv_flow_api.id(214590549448900036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log (''P4_LAYOUT_ID:''+apex.item( "P4_LAYOUT_ID" ).getValue());'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214347952984091993)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BIP2FOP'
,p_attribute_02=>'BIP2FOP'
,p_attribute_03=>'P4_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214348355313091993)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BIP2FOP'
,p_attribute_02=>'BIP2FOP'
,p_attribute_03=>'P4_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P4_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214386174704164863)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process APEX_CLOB_PLUGIN_IN_BIP Collection'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_clob clob;',
'   l_cloblength number;',
'BEGIN',
'',
'SELECT clob001,dbms_lob.getlength(clob001)',
'INTO l_clob,l_cloblength',
'FROM apex_collections',
'WHERE collection_name = ''APEX_CLOB_PLUGIN_IN_BIP'';',
'',
'if l_cloblength > 0 then',
'    UPDATE BIP2FOP',
'    SET in_bip = xmltype(l_clob)',
'    WHERE id = :P4_ID;',
'else',
'    UPDATE BIP2FOP',
'    SET in_bip = null',
'    WHERE id = :P4_ID;',
'end if;   ',
'',
'end;'))
,p_process_error_message=>'in_bip CLOB Save error: #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,CREATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214216392888385973)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process APEX_CLOB_PLUGIN_OUT_FOP Collection'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_clob clob;',
'   l_cloblength number;',
'BEGIN',
'',
'SELECT clob001,dbms_lob.getlength(clob001)',
'INTO l_clob,l_cloblength',
'FROM apex_collections',
'WHERE collection_name = ''APEX_CLOB_PLUGIN_OUT_FOP'';',
'',
'if l_cloblength > 0 then',
'    UPDATE BIP2FOP',
'    SET out_fop = xmltype(l_clob)',
'    WHERE id = :P4_ID;',
'else',
'    UPDATE BIP2FOP',
'    SET out_fop = null',
'    WHERE id = :P4_ID;',
'end if;   ',
'',
'end;'))
,p_process_error_message=>'out_fop CLOB Save error: #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,CREATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214386464383167741)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(214341345872091919)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(214331589571937005)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'BIP2FOP - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(214291139983936969)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'PILKEYR'
,p_last_upd_yyyymmddhh24miss=>'20201008154908'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214332051349937021)
,p_plug_name=>'BIP2FOP - Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(214305368900936979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Login with Apex developer credentials.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(214332376318937024)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(214332051349937021)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(214326345999936993)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214332160098937022)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(214332051349937021)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214332262504937022)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(214332051349937021)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(214325920292936991)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214332607780937024)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214332439372937024)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214332759232937024)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(214332691441937024)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(214333669066938608)
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(214334146529963426)
,p_install_id=>wwv_flow_api.id(214333669066938608)
,p_name=>'create table'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'CREATE TABLE "BIP2FOP" ',
'   (	"ID" NUMBER, ',
'	"IN_BIP" "XMLTYPE", ',
'	"OUT_FOP" "XMLTYPE", ',
'	"TEMPLATE_NAME" VARCHAR2(200), ',
'	"NOTES" VARCHAR2(1000), ',
'	"MODIFIED" DATE, ',
'	"LAYOUT_ID" NUMBER, ',
'	"MODIFIED_BY" VARCHAR2(50), ',
'	"REPORT_QUERY_ID" NUMBER, ',
'	"WORD_SOURCE" BLOB, ',
'	"WORD_SOURCE_MODIFIED" TIMESTAMP (6), ',
'	"WORD_SOURCE_FILENAME" VARCHAR2(100), ',
'	 CONSTRAINT "BIP2FOP_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
' CREATE SEQUENCE  "BIP2FOP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;',
'',
'CREATE OR REPLACE TRIGGER "BI_BIP2FOP" BEFORE',
'    INSERT ON "BIP2FOP"',
'    FOR EACH ROW',
'BEGIN',
'    IF inserting THEN',
'        IF :new."ID" IS NULL THEN',
'            SELECT',
'                BIP2FOP_SEQ.nextval',
'            INTO :new."ID"',
'            FROM',
'                dual;',
'',
'        END IF;',
'',
'',
'        IF :new."MODIFIED" IS NULL THEN',
'            :new.MODIFIED := sysdate;',
'        END IF;',
'',
'        IF :NEW."MODIFIED_BY" IS NULL THEN',
'            :new.modified_by    := NVL(SYS_CONTEXT(''APEX$SESSION'',''APP_USER''),USER);',
'        END IF;',
'',
'    END IF;',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_BIP2FOP" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "BU_BIP2FOP" ',
'BEFORE UPDATE ON "BIP2FOP" FOR EACH ROW ',
'',
'BEGIN',
'    :new.MODIFIED := sysdate;',
'    :new.modified_by := NVL(SYS_CONTEXT(''APEX$SESSION'',''APP_USER''),user);',
'END;',
'',
'/',
'',
'',
'ALTER TRIGGER "BU_BIP2FOP" ENABLE;',
'',
'CREATE UNIQUE INDEX "BIP2FOP_PK" ON "BIP2FOP" ("ID") ',
'  ;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(214334641432963429)
,p_script_id=>wwv_flow_api.id(214334146529963426)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'BIP2FOP_PK'
,p_last_updated_by=>'PILKEYR'
,p_last_updated_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
,p_created_by=>'PILKEYR'
,p_created_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(214334286492963427)
,p_script_id=>wwv_flow_api.id(214334146529963426)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'BIP2FOP_SEQ'
,p_last_updated_by=>'PILKEYR'
,p_last_updated_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
,p_created_by=>'PILKEYR'
,p_created_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(214334516353963427)
,p_script_id=>wwv_flow_api.id(214334146529963426)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'BIP2FOP'
,p_last_updated_by=>'PILKEYR'
,p_last_updated_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
,p_created_by=>'PILKEYR'
,p_created_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(214334892959963429)
,p_script_id=>wwv_flow_api.id(214334146529963426)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'BI_BIP2FOP'
,p_last_updated_by=>'PILKEYR'
,p_last_updated_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
,p_created_by=>'PILKEYR'
,p_created_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(214335097912963429)
,p_script_id=>wwv_flow_api.id(214334146529963426)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'BU_BIP2FOP'
,p_last_updated_by=>'PILKEYR'
,p_last_updated_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
,p_created_by=>'PILKEYR'
,p_created_on=>to_date('20200918102235','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(214612447485411224)
,p_install_id=>wwv_flow_api.id(214333669066938608)
,p_name=>'Create Package'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "BIP2FOP_PKG" as',
'   ',
'function clob2blob(AClob CLOB) return BLOB;',
'FUNCTION blob2clob (i_blob IN BLOB) RETURN CLOB;',
'procedure convert_fo_template(p in out nocopy clob);',
'',
'function convert_fo_template(xml_in clob, fix_urlencode in varchar2 default ''no'') return clob;',
'',
'end;',
'/',
'',
'',
'CREATE OR REPLACE PACKAGE BODY "BIP2FOP_PKG" is',
'',
'function convert_fo_template(xml_in clob, fix_urlencode in VARCHAR2 default ''no'') return clob is',
'  l_xslfo clob;',
'  l_xsl_urlencodefix clob;',
'  l_xml_out clob;',
'',
'BEGIN',
'  l_xslfo := ''<!-- do not forget to include all the namespaces that we want to work with from the xslt that we are transforming. -->',
'<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"',
' xmlns:xdofo="http://xmlns.oracle.com/oxp/fo/extensions" ',
' xmlns:fo="http://www.w3.org/1999/XSL/Format" ',
' xmlns:ora="http://www.oracle.com/XSL/Transform/java/" ',
' xmlns:xdoxslt="http://www.oracle.com/XSL/Transform/java/oracle.xdo.template.rtf.XSLTFunctions" ',
'>',
'    ',
'<!-- identity transform, which copies everything forward -->',
'<xsl:template match="@*|node()">',
'  <xsl:copy>',
'    <xsl:apply-templates select="@*|node()"/>',
'  </xsl:copy>',
'</xsl:template>',
'',
'<!--XSLT 1.0 does not have a replace function -->',
'<xsl:template name="replace-string">',
' <xsl:param name="text"/>',
' <xsl:param name="replace"/>',
' <xsl:param name="with"/>',
' <xsl:choose>',
'  <xsl:when test="$replace and contains($text,$replace)">',
'   <xsl:value-of select="substring-before($text,$replace)"/>',
'   <xsl:value-of select="$with"/>',
'   <xsl:call-template name="replace-string">',
'    <xsl:with-param name="text" select="substring-after($text,$replace)"/>',
'    <xsl:with-param name="replace" select="$replace"/>',
'    <xsl:with-param name="with" select="$with"/>',
'   </xsl:call-template>',
'  </xsl:when>',
'  <xsl:otherwise>',
'   <xsl:value-of select="$text"/>',
'  </xsl:otherwise>',
' </xsl:choose>',
'</xsl:template>',
'',
'  <!-- the regexp program removes xmlns:ora="http://www.oracle.com/XSL/Transform/java/", that is a namespace _declaration_, different from a namespace, ',
'  and it is hard to do that (of course) -->',
'  <!--',
'  <xsl:stylesheet version="2.0" ',
'  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" ',
'  xmlns:fo="http://www.w3.org/1999/XSL/Format" ',
'  xmlns:ora="http://www.oracle.com/XSL/Transform/java/" ',
'  xmlns:xdofo="http://xmlns.oracle.com/oxp/fo/extensions" ',
'  xmlns:xdoxslt="http://www.oracle.com/XSL/Transform/java/oracle.xdo.template.rtf.XSLTFunctions" ',
'  xmlns:xdoxliff="urn:oasis:names:tc:xliff:document:1.1" ',
'  xmlns:xlink="http://www.w3.org/1999/xlink">',
'-->',
'<!--<xsl:template match="@xmlns:ora"/> --> <!--nope-->',
'',
'<!-- the oracle xslt engine has to interpret this namespace to transform I think? so make sure to declare it above in the xsl:stylesheet tag -->',
'<xsl:template match="//xsl:value-of[@select=''''xdoxslt:one($titlevar)'''' and @xdofo:field-name=''''$titlevar'''']" >',
'    <xsl:copy>',
'        <xsl:attribute name="select">$titlevar</xsl:attribute>',
'   </xsl:copy>',
'</xsl:template>',
'',
'<!--these are oracle custom tags...-->',
'<xsl:template match="xdofo:list-styles" />',
'',
'<!-- remove these custom attributes, fop does not have them -->',
'<xsl:template match="@xdofo:field-name|@xdofo:tobetranslated|@xdofo:nf-separator|@xdofo:alt|@xdofo:line-spacing|@xdofo:align|@xdofo:table-summary|@xdofo:row-header-count|@xdofo:xliff-note|@xdofo:repeat|@xdofo:ctx|@xdofo:ctx2|@xdofo:tab-stops" />',
'',
'<!--replace "xdofo:" namespace strings on remaining attributes, with "xsl:", because some of them work -->',
'<xsl:template match="@xdofo:*">   ',
'        <xsl:attribute name="xsl:{local-name()}">',
'            <xsl:value-of select="."/>',
'        </xsl:attribute>    ',
'</xsl:template>        ',
'',
'<!--remove this xdoxslt variable, some kind of context object? -->',
'<xsl:template match="//xsl:variable[@name=''''_XDOXSLTCTX'''']" />',
'',
'<!--remove this Oracle BI version comment ? ok -->',
'<xsl:template match="comment()[contains(., ''''Generated by'''')]" />',
'',
'<!--remove foreign objects-->',
'<xsl:template match="//fo:instream-foreign-object" />',
'',
'<!--remove call to a oracle custom function-->',
'<xsl:template match="//xsl:value-of[@select=''''xdoxslt:chkPrcCancel($_XDOXSLTCTX)'''']" />',
'',
'<!--remove xdoxslt:set_variable-->',
'<xsl:template match="//xsl:value-of[@select=''''xdoxslt:set_variable'''']" />',
'',
'<!-- Switch BODY and BEFORE',
'    fop error: For "fo:simple-page-master", "fo:region-body" must be declared before "fo:region-before"! -->',
'<xsl:template match="//fo:simple-page-master">',
'    <xsl:copy>',
'        <xsl:apply-templates select="@*"/>',
'        <xsl:apply-templates select="fo:region-body"/>',
'        <xsl:apply-templates select="fo:region-before"/>',
'        <xsl:apply-templates select="fo:region-after"/>',
'    </xsl:copy>',
'</xsl:template>',
'',
'<!--remove xdofo custom namespace from tags... -->',
'<xsl:template match="//xdofo:*">',
'        <xsl:element name="xsl:{local-name()}">',
'            <xsl:for-each select="@*">',
'                <xsl:attribute name="{local-name()}">',
'                    <xsl:value-of select="."/>',
'                </xsl:attribute>',
'            </xsl:for-each>',
'            <xsl:apply-templates/>',
'        </xsl:element>',
'</xsl:template>',
'',
'<xsl:template match="//xsl:template[@name=''''_XDOATTRIBUTESET'''']" >',
'        <xsl:apply-templates />',
'</xsl:template>',
'',
'<xsl:template match="//xsl:call-template[@name=''''_XDOATTRIBUTESET'''']" />',
'',
'<xsl:template match="//fo:static-content" />',
'',
'<!--remove other incompatible attributes -->',
'<xsl:template match="@style-name|@style-id|@font-family-generic|@xml:space" />',
'',
'<!--RP fix: org.apache.fop.fo.ValidationException: Invalid property encountered on "fo:table-row": xdo-banded-col -->',
'<!--RP fix: org.apache.fop.fo.ValidationException: Invalid property encountered on "fo:table-row": xdo-banded-row -->',
'<!--RP fix: org.apache.fop.fo.ValidationException: Invalid property encountered on "fo:table-row": xdo-last-col -->',
'<xsl:template match="@xdo-banded-row|@xdo-banded-col|@xdo-first-col|@xdo-last-col|@xdo-first-row|@xdo-last-row" />',
'',
'<!--RP accessibility fix: add language attr to fo:root (program to something else if you do not like en) -->',
'<xsl:template match="//fo:root">',
'    <xsl:copy>',
'        <xsl:attribute name="language">en</xsl:attribute>',
'        <xsl:apply-templates select="@*|node()" />',
'    </xsl:copy>',
'</xsl:template>',
'',
'<!--RP accessibility meta -->',
'<xsl:template match="fo:layout-master-set">',
'    <xsl:copy>',
'        <xsl:apply-templates select="@*|node()" />',
'    </xsl:copy>',
'      <fo:declarations>',
'        <pdf:catalog xmlns:pdf="http://xmlgraphics.apache.org/fop/extensions/pdf">',
'          <pdf:dictionary type="normal" key="ViewerPreferences">',
'            <pdf:boolean key="DisplayDocTitle">true</pdf:boolean>',
'          </pdf:dictionary>',
'        </pdf:catalog>',
'        <x:xmpmeta xmlns:x="adobe:ns:meta/">',
'          <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">',
'            <rdf:Description rdf:about="" xmlns:dc="http://purl.org/dc/elements/1.1/">',
'              <!-- Dublin Core properties go here -->',
'              <dc:title>',
'                <rdf:Alt>',
'                  <rdf:li xml:lang="x-default">                ',
'                    <xsl:element name="xsl:value-of"><xsl:attribute name="select">$titlevar</xsl:attribute></xsl:element>',
'                  </rdf:li>',
'                </rdf:Alt>',
'              </dc:title>',
'              <dc:creator>',
'                <rdf:Seq>',
'                  <rdf:li>my company</rdf:li>',
'                </rdf:Seq>',
'              </dc:creator>',
'              <dc:description>',
'                <rdf:Alt>',
'                  <rdf:li xml:lang="x-default">',
'                    <xsl:element name="xsl:value-of"><xsl:attribute name="select">$titlevar</xsl:attribute></xsl:element>',
'                  </rdf:li>',
'                </rdf:Alt>',
'              </dc:description>',
'              <dc:rights>',
'                <xsl:text>© copyright my company</xsl:text>',
'              </dc:rights>',
'            </rdf:Description>',
'',
'            <rdf:Description rdf:about="" xmlns:xmp="http://ns.adobe.com/xap/1.0/">',
'              <!-- XMP properties go here -->',
'              <xmp:CreatorTool>Oracle + FOP</xmp:CreatorTool>',
'              <xmp:Title>',
'                    <xsl:element name="xsl:value-of"><xsl:attribute name="select">$titlevar</xsl:attribute></xsl:element>              ',
'              </xmp:Title>',
'            </rdf:Description>',
'',
'<rdf:Description xmlns:pdfuaid="http://www.aiim.org/pdfua/ns/id/" rdf:about="">',
'<pdfuaid:part>1</pdfuaid:part>',
'</rdf:Description>',
'',
'         </rdf:RDF>',
'        </x:xmpmeta>',
'      </fo:declarations>',
'</xsl:template>',
'',
'<!-- replace <xsl:value-of select="xdoxslt:ms_format_date($_XDOXSLTCTX, string(xdoxslt:one($fv2)), &apos;dd-MMM-yyyy&apos;)"/> -->',
'<xsl:template match="@*[starts-with(.,''''xdoxslt:ms_format_date('''')]">',
'    <xsl:attribute name="{name()}">',
'        <xsl:value-of select="substring-before(substring-after(.,''''string(xdoxslt:one(''''),'''')), '''')"/>',
'    </xsl:attribute>',
'</xsl:template>',
'',
'',
'<!--replace ($_XDOXSLTCTX, xdoxslt:one'''',''''format-number(number'''') -->',
'<xsl:template match="@*[starts-with(.,''''xdoxslt:ms_format_number($_XDOXSLTCTX, xdoxslt:one'''')]">',
'<xsl:variable name="replaced-xdoxsl-ms-one">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="."/>',
'  <xsl:with-param name="replace"><![CDATA[xdoxslt:ms_format_number($_XDOXSLTCTX, xdoxslt:one]]></xsl:with-param>',
'  <xsl:with-param name="with">format-number(number</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'<xsl:attribute name="select"><xsl:value-of select="$replaced-xdoxsl-ms-one" /></xsl:attribute>',
'</xsl:template>',
'',
'<!--replace ($_XDOXSLTCTX, xdoxslt:number'''',''''format-number(number'''') -->',
'<xsl:template match="@*[starts-with(.,''''xdoxslt:ms_format_number($_XDOXSLTCTX, xdoxslt:number'''')]">',
'<xsl:variable name="replaced-xdoxsl-ms-number">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="."/>',
'  <xsl:with-param name="replace"><![CDATA[xdoxslt:ms_format_number($_XDOXSLTCTX, xdoxslt:number]]></xsl:with-param>',
'  <xsl:with-param name="with">format-number(number</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'<xsl:attribute name="select"><xsl:value-of select="$replaced-xdoxsl-ms-number" /></xsl:attribute>',
'</xsl:template>',
'',
'</xsl:stylesheet>',
''';',
'',
'',
'SELECT',
'    XMLSERIALIZE(DOCUMENT    ',
'        xmltransform(xmltype(xml_in),xmltype(l_xslfo)',
'    -- adding encoding string this way is a trick, might break',
'    )as CLOB VERSION ''1.0" encoding="UTF-8'' indent size=2 )',
'into l_xml_out',
'from dual;',
'',
'',
'if (fix_urlencode != ''no'') then',
'',
'l_xsl_urlencodefix := ''',
'<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"',
' xmlns:xdofo="http://xmlns.oracle.com/oxp/fo/extensions" ',
' xmlns:fo="http://www.w3.org/1999/XSL/Format" ',
' xmlns:ora="http://www.oracle.com/XSL/Transform/java/" ',
' xmlns:xdoxslt="http://www.oracle.com/XSL/Transform/java/oracle.xdo.template.rtf.XSLTFunctions" ',
'>',
'    ',
'<!-- identity transform, which copies everything forward -->',
'<xsl:template match="@*|node()">',
'  <xsl:copy>',
'    <xsl:apply-templates select="@*|node()"/>',
'  </xsl:copy>',
'</xsl:template>',
'',
'<!--XSLT 1.0 does not have a replace function -->',
'<xsl:template name="replace-string">',
' <xsl:param name="text"/>',
' <xsl:param name="replace"/>',
' <xsl:param name="with"/>',
' <xsl:choose>',
'  <xsl:when test="$replace and contains($text,$replace)">',
'   <xsl:value-of select="substring-before($text,$replace)"/>',
'   <xsl:value-of select="$with"/>',
'   <xsl:call-template name="replace-string">',
'    <xsl:with-param name="text" select="substring-after($text,$replace)"/>',
'    <xsl:with-param name="replace" select="$replace"/>',
'    <xsl:with-param name="with" select="$with"/>',
'   </xsl:call-template>',
'  </xsl:when>',
'  <xsl:otherwise>',
'   <xsl:value-of select="$text"/>',
'  </xsl:otherwise>',
' </xsl:choose>',
'</xsl:template>',
'',
'<xsl:template match="text()">',
'  ',
'<xsl:variable name="replaced-percnt">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="."/>',
'  <xsl:with-param name="replace"><![CDATA[%]]></xsl:with-param>',
'  <xsl:with-param name="with">%25</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="replaced-plus">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$replaced-percnt"/>',
'  <xsl:with-param name="replace"><![CDATA[+]]></xsl:with-param>',
'  <xsl:with-param name="with">%2B</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="replaced-apos">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$replaced-plus"/>',
'  <xsl:with-param name="replace"><![CDATA['''']]></xsl:with-param>',
'  <xsl:with-param name="with">%26apos;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="replaced-quot">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$replaced-apos"/>',
'  <xsl:with-param name="replace"><![CDATA["]]></xsl:with-param>',
'  <xsl:with-param name="with">%26quot;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="replaced-amp">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$replaced-quot"/>',
'  <xsl:with-param name="replace"><![CDATA[&]]></xsl:with-param>',
'  <xsl:with-param name="with">%26amp;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="replaced-lt">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$replaced-amp"/>',
'  <xsl:with-param name="replace"><![CDATA[<]]></xsl:with-param>',
'  <xsl:with-param name="with">%26lt;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="replaced-gt">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$replaced-lt"/>',
'  <xsl:with-param name="replace"><![CDATA[>]]></xsl:with-param>',
'  <xsl:with-param name="with">%26gt;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<!-- Output --> ',
'<xsl:value-of select="$replaced-gt" />',
'</xsl:template>',
'',
'<xsl:template match="@*">',
'  ',
'<xsl:variable name="areplaced-percnt">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="."/>',
'  <xsl:with-param name="replace"><![CDATA[%]]></xsl:with-param>',
'  <xsl:with-param name="with">%25</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="areplaced-plus">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$areplaced-percnt"/>',
'  <xsl:with-param name="replace"><![CDATA[+]]></xsl:with-param>',
'  <xsl:with-param name="with">%2B</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="areplaced-apos">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$areplaced-plus"/>',
'  <xsl:with-param name="replace"><![CDATA['''']]></xsl:with-param>',
'  <xsl:with-param name="with">%26apos;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="areplaced-quot">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$areplaced-apos"/>',
'  <xsl:with-param name="replace"><![CDATA["]]></xsl:with-param>',
'  <xsl:with-param name="with">%26quot;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="areplaced-amp">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$areplaced-quot"/>',
'  <xsl:with-param name="replace"><![CDATA[&]]></xsl:with-param>',
'  <xsl:with-param name="with">%26amp;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="areplaced-lt">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$areplaced-amp"/>',
'  <xsl:with-param name="replace"><![CDATA[<]]></xsl:with-param>',
'  <xsl:with-param name="with">%26lt;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<xsl:variable name="areplaced-gt">',
' <xsl:call-template name="replace-string">',
'  <xsl:with-param name="text" select="$areplaced-lt"/>',
'  <xsl:with-param name="replace"><![CDATA[>]]></xsl:with-param>',
'  <xsl:with-param name="with">%26gt;</xsl:with-param>',
' </xsl:call-template>',
'</xsl:variable>',
'',
'<!-- Output --> ',
'<xsl:attribute name="{name()}">',
'<xsl:value-of select="$areplaced-gt" />',
'</xsl:attribute>',
'</xsl:template>',
'',
'</xsl:stylesheet>',
''';',
'',
'SELECT',
'    XMLSERIALIZE(DOCUMENT    ',
'        xmltransform(xmltype(l_xml_out),xmltype(l_xsl_urlencodefix)',
'    -- adding encoding string this way is a trick, might break',
'    )as CLOB VERSION ''1.0" encoding="UTF-8'' indent size=2 )',
'into l_xml_out',
'from dual;',
'end if;',
'',
'--not this...return DBMS_XMLGEN.CONVERT(l_xml_out);',
'--not this...return utl_url.escape(l_xml_out);',
'return l_xml_out;',
'end;',
'',
'',
'function clob2blob(AClob CLOB) return BLOB is',
'  Result BLOB;',
'  o1 integer;',
'  o2 integer;',
'  c integer;',
'  w integer;',
'begin',
'  o1 := 1;',
'  o2 := 1;',
'  c := 0;',
'  w := 0;',
'  DBMS_LOB.CreateTemporary(Result, true);',
'  DBMS_LOB.ConvertToBlob(Result, AClob, length(AClob), o1, o2, 0, c, w);',
'  return(Result);',
'end clob2blob;',
'',
'FUNCTION blob2clob (i_blob IN BLOB) RETURN CLOB AS',
'    o_clob CLOB;',
'    i_dest_offset PLS_INTEGER := 1;',
'    i_src_offset PLS_INTEGER := 1;',
'    i_lang_context PLS_INTEGER := DBMS_LOB.DEFAULT_LANG_CTX;',
'    i_Warning PLS_INTEGER;',
'BEGIN',
'  IF i_blob IS NOT NULL THEN',
'   IF LENGTH(i_blob) = 0 THEN',
'     RETURN EMPTY_CLOB();',
'   END IF;',
'   DBMS_LOB.createTemporary(lob_loc => o_clob,',
'     cache => TRUE); -- read into buffer cache',
'   DBMS_LOB.CONVERTTOCLOB(',
'     dest_lob => o_clob,',
'     src_blob => i_blob,',
'     amount => DBMS_LOB.LOBMAXSIZE,',
'     dest_offset => i_dest_Offset,',
'     src_offset => i_src_Offset,',
'     blob_csid => DBMS_LOB.DEFAULT_CSID,',
'     lang_context => i_lang_context,',
'     warning => i_Warning',
'   );',
'   ELSE',
'    o_clob := NULL;',
'   END IF;',
'   RETURN o_Clob;',
'  EXCEPTION',
'    WHEN OTHERS THEN RAISE;',
'  END blob2clob;',
'',
'',
'-- -------------------------------------------------------------- ',
'-- Pavel Glebov - Creation',
'-- P. Monaco - Adding more filters',
'--Roger Pilkey - adding even more filters 2020-06',
'-- --------------------------------------------------------------',
'procedure convert_fo_template(p in out nocopy clob)   ',
' is',
'   --v_region_before  varchar2(32000);',
'   --v_region_body    varchar2(32000);',
'   --v_region_after   varchar2(32000);',
'   v_region_before  clob;',
'   v_region_body    clob;',
'   v_region_after   clob;',
' begin',
'    -- tested with Oracle BI Publisher Desktop 12.2.1.2.0 Build 12.212.00.0',
'',
'    -- del incompatible strings',
'    p:= replace(p,''<xsl:variable name="_XDOXSLTCTX" select="xdoxslt:set_xslt_locale($_XDOCTX, $_XDOLOCALE, $_XDOTIMEZONE, $_XDOCALENDAR, $_XDODFOVERRIDE, $_XDOCURMASKS, $_XDONFSEPARATORS)"/>'','''');',
'    p := regexp_replace(p,''<!--Generated by[^>]+>'','''');',
'    p := regexp_replace(p,''xmlns:ora=[^>]+/"'','''');',
'    p := regexp_replace(p,''xmlns:xdofo[^>]+/"'','''');',
'    -- convert foreign objects into static images',
'    -- the task is managed in a very limited way !',
'    -- remove all foreign objects',
'   p := regexp_replace(p,''<fo:instream-foreign-object [^<]*</fo:instream-foreign-object>'','''');',
'    -- p := regexp_replace(p,''<fo:instream-foreign-object [^>]+>'',''<fo:external-graphic  width="167.55pt" height="147.35pt" content-width="scale-to-fit"  src="url(''''data:image/png;base64,'');',
'   -- p := regexp_replace(p,''<fo:instream-foreign-object [^>]+>'',''<fo:external-graphic  width="167.55pt" height="147.35pt" content-width="scale-to-fit"  src="url(''''data:image/png;base64,'');',
'',
'    --p := replace(p,''</fo:instream-foreign-object>'','''''')"/>'');',
'',
'    -- p:= replace(p,''xmlns:xdofo="http://xmlns.oracle.com/oxp/fo/extensions"'','''');',
'    -- p:= replace(p,''xmlns:xdoxslt="http://www.oracle.com/XSL/Transform/java/oracle.xdo.template.rtf.XSLTFunctions"'','''');',
'    p:= replace(p,''xmlns:xdoxliff="urn:oasis:names:tc:xliff:document:1.1"'','''');',
'    -- p:= replace(p,''_XDO'',''_FOP'');',
'    p := replace(p, ''<xsl:value-of select="xdoxslt:chkPrcCancel($_XDOXSLTCTX)"/>'','''');',
'    p:= replace(p,''<fo:title>'','''');',
'    p:= replace(p,''<xsl:value-of select="xdoxslt:one($titlevar)" xdofo:field-name="$titlevar"/>'','''');',
'    p:= replace(p,''</fo:title>'','''');',
'    p := regexp_replace(p,''<xsl:variable name="titlevar"[^>]+/>'','''');',
'    -- Add a enclosing block after a fo:flow  / no more needed with saxon parser',
'',
'    --p := regexp_replace(p,''<fo:flow flow-name="[^>]+/>'','''');',
'    -- <fo:flow flow-name="region-body">',
'    --p:= replace(p,''</fo:flow>'',''</fo:block></fo:flow>'');',
'',
'    -- formatting',
'    p := replace(p,''xdoxslt:ms_format_number($_XDOXSLTCTX, xdoxslt:one'',''format-number(number'');',
'    p := replace(p,''xdoxslt:ms_format_number($_XDOXSLTCTX, xdoxslt:number'',''format-number(number'');',
'',
'    -- Remove all others variable settings',
'    p := regexp_replace(p,''<xsl:value-of select="xdoxslt:set_variable[^>]'','''');',
'    p:= replace(p,''xdoxslt:one'',''number'');',
'    -- del  xdofo: attributes',
'    -- <fo:root xdofo:nf-separator="{$_XDONFSEPARATORS}"> => <fo:root >    ',
'    p := regexp_replace(p,''xdofo:(\w|[-])+="[^"]+"'','''');',
'    -- del xdofo: open and close tags',
'    -- <xdofo:property name="default-tab-width">35.4pt</xdofo:property> => NULL',
'    p := regexp_replace(p,''<xdofo:[^/]+/xdofo:(\w|[-])+>'','''');',
'    -- del standalone xdofo: tags',
'    -- <xdofo:properties> = > NULL',
'    p := regexp_replace(p,''</?xdofo:(\w|[-])+>'','''');',
'    --del empty <fo:static-content/>',
'    p := regexp_replace(p,''<fo:static-content[^>]+/>'','''');',
'',
'    --remove other incompatible attributes',
'    p := regexp_replace(p,''style\-name="[^"]+"'','''');',
'    p := regexp_replace(p,''font\-family\-generic="[^"]+"'','''');',
'    p := regexp_replace(p,''style\-id="[^"]+"'','''');',
'    p := regexp_replace(p,''xml:space="[^"]+"'','''');',
'',
'   -- Switch BODY and BEFORE',
'   -- In XSLT 1 and 2?,  "body" must be after "before"',
'    /*',
'               <fo:region-before region-name="region-header" extent="35.45pt"/>',
'               <fo:region-body region-name="region-body" margin-top="35.45pt" margin-bottom="21.3pt"/>',
'               <fo:region-after region-name="region-footer" extent="21.3pt" display-align="after"/>',
'         =>',
'               <fo:region-body region-name="region-body" margin-top="35.45pt" margin-bottom="21.3pt"/>',
'               <fo:region-before region-name="region-header" extent="35.45pt"/>               ',
'               <fo:region-after region-name="region-footer" extent="21.3pt" display-align="after"/>',
'   */   ',
'   v_region_before  := regexp_substr(p,''<fo:region\-before .+/>'');',
'   v_region_body    := regexp_substr(p,''<fo:region\-body .+/>'');',
'   v_region_after   := regexp_substr(p,''<fo:region\-after .+/>'');',
'   p := replace(p,v_region_before,'''');',
'   p := replace(p,v_region_body,'''');',
'   p := replace(p,v_region_after,v_region_body||v_region_before||v_region_after);',
'',
'   --remove empty rows',
'   p := regexp_replace(p,''<fo:table-row>[^<]*<fo:table-cell [^/]*/>[^<]*</fo:table-row>'','''');  ',
'',
'   --RP fix: org.apache.fop.fo.ValidationException: Invalid property encountered on "fo:table-row": xdo-banded-col ',
'   p := regexp_replace(p,''xdo-banded-col="[^"]+"'','''');',
'',
'   --RP fix: org.apache.fop.fo.ValidationException: Invalid property encountered on "fo:table-row": xdo-banded-row',
'   p := regexp_replace(p,''xdo-banded-row="[^"]+"'','''');',
'',
'   --RP fix: org.apache.fop.fo.ValidationException: Invalid property encountered on "fo:table-row": xdo-last-col',
'    p := regexp_replace(p,''xdo-last-col="[^"]+"'','''');   ',
'    p := regexp_replace(p,''xdo-first-col="[^"]+"'',''''); ',
'    p := regexp_replace(p,''xdo-last-row="[^"]+"'','''');   ',
'    p := regexp_replace(p,''xdo-first-row="[^"]+"'',''''); ',
'',
'   --RP fix:            <xdofo:list-template template-id="1322736315"> has no end tag, just end here to validate, not sure what it is good for',
'   p := regexp_replace(p,''<xdofo:list-template template-id="(\d*)">'',''<xdofo:list-template template-id="\1" />'');',
'',
'   --RP fix: xml tag should use quote, not apostrophe',
'   p := regexp_replace(p,''<\?xml version = ''''1.0'''' encoding = ''''utf-8''''\?>'',''<?xml version="1.0" encoding="utf-8"?>'');',
'',
'   --RP fix:',
'   --replace (some?) xml special characters because APEX_UTIL.DOWNLOAD_PRINT_DOCUMENT sends to FOP with urlencode, which breaks on these unencoded chars?',
'   --most are only necessary when this was a CLOB, now that it''s an XMLTYPE, these are automatically converted, I think',
'   ',
'   --RP for Report Query and Report layout, "fix" just these three encodings?',
'   --p := regexp_replace(p,''%'',''%25'');  ',
'   --p := regexp_replace(p,''\+'',''%2b''); ',
'   --p := regexp_replace(p,''&'',''%26'');',
'   ',
'   --But for sending to download_print_document with all of our replace_string calls like NMS, don''t do that?',
'   ',
'   -- RP other character encodings I tried:',
'   ',
'   --p := regexp_replace(p,''%'',''%25'');  ',
'   --p := regexp_replace(p,''\+'',''%2b''); ',
'   --p := regexp_replace(p,'''''''',''%26apos;'');',
'   --p := regexp_replace(p,''&amp;'',''%26amp;'');',
'   --p := regexp_replace(p,''"'',''%26quot;'');',
'   --p := regexp_replace(p,''<'',''%26lt;'');   ',
'   --p := regexp_replace(p,''>'',''%26gt;'');   ',
'',
' end convert_fo_template;',
'',
'end "BIP2FOP_PKG";',
'/',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(214612624383411227)
,p_script_id=>wwv_flow_api.id(214612447485411224)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'BIP2FOP_PKG'
,p_last_updated_by=>'PILKEYR'
,p_last_updated_on=>to_date('20200923103637','YYYYMMDDHH24MISS')
,p_created_by=>'PILKEYR'
,p_created_on=>to_date('20200923103637','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
