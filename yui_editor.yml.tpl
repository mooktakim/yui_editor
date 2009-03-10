version: '2.7.0'
selector: rich_text_editor
simple_editor: false
body_class: yui-skin-sam
editor_extension_callbacks: "
  yuiImgUploader(editor, '/upload_url','param_name');
  // MyExtension.install(editor);
"
javascript_base_uri: //yui.yahooapis.com
editor_extension_javascripts:
  - yui-image-uploader.js
  # - extension1.js
  # - extension2.js
additional_yui_javascripts:
  - connection/connection
editor_config_javascript: "
{
  handleSubmit: true,
  autoHeight: false,
  dompath: false,
  collapse: true
}"
