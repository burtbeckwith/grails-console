<html>

<head>
	<title>Grails Console</title>
	<meta name="layout" content="consolePluginSpecificLayout" />
</head>

<body>

<div id="header">
	<h1>Grails Debug Console</h1>

	<div class="buttons">
		<div class="buttonset">
			<button class="first selected horizontal button" title="Horizontal">
				<img src="${resource(dir: 'images', file: 'h.png', plugin: 'console')}" alt="Vertical"/>
			</button>
			<button class="last vertical button" title="Vertical">
				<img src="${resource(dir: 'images', file: 'v.png', plugin: 'console')}" alt="Horizontal"/>
			</button>
		</div>
	</div>
</div>

<div id="editor" style="display: none">
	<div class="buttons">
		<button class="submit button" title="(Ctrl + Enter)">Execute</button>

		<input type='text' name='filename' id='filename' />
		<button class='fromFile button'>Execute from file:</button>
	</div>

	<div id="code-wrapper">
		<g:textArea name="code" value="${code}" rows="25" cols="100"/>
	</div>

</div>

<div class="east results" style="display: none">
	<div class="buttons">
		<button class="clear button" title="(Esc)">Clear</button>
		<label class="wrap"><input type="checkbox" /> <span>Wrap text</span></label>
	</div>

	<div id="result"><div class="inner"></div></div>
</div>

<div class="south" style="display: none"></div>

<script type="text/javascript" charset="utf-8">
window.gconsole = {
	pluginContext: "${resource(plugin: 'console')}",
	executeLink: "${createLink(action: 'execute')}"
}
</script>

</body>
</html>
