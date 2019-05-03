<%
	// Oddly resource ordering values are highest-first
	ui.includeJavascript("kpui", "underscore.js", 101)
	ui.includeJavascript("kpui", "jquery.js", 100)
	ui.includeJavascript("kpui", "select2.js", 99)
	ui.includeJavascript("kpui", "jquery-ui.js", 98)
	ui.includeJavascript("kpui", "angular.js", 97)
	ui.includeJavascript("kpui", "jquery.toastmessage.js", 96)
	ui.includeJavascript("kpui", "pagebus/simple/pagebus.js", 95)
	ui.includeJavascript("kpui", "ui.js", 94)
	ui.includeJavascript("kpui", "kpui.js", 93)
	ui.includeJavascript("kpui", "kpui-tabs.js", 92)
	ui.includeJavascript("kpui", "kpui-legacy.js", 92)

	ui.includeCss("kpui", "select2.css", 100)
	ui.includeCss("kpui", "jquery-ui.css", 99)
	ui.includeCss("kpui", "toastmessage/css/jquery.toastmessage.css", 98)
	ui.includeCss("kpui", "kpui.css", 97)
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<% if (config.pageTitle) { %><title>${ config.pageTitle }</title><% } %>
		<% if (config.faviconIco) { %><link rel="shortcut icon" type="image/ico" href="${ config.faviconIco }"><% } %>
		<% if (config.faviconPng) { %><link rel="icon" type="image/png" href="${ config.faviconPng }"><% } %>

		<%= ui.resourceLinks() %>
	</head>
	<body <% if (config.angularApp) { %>ng-app="${ config.angularApp }"<% } %>>
		<script type="text/javascript">
			var OPENMRS_CONTEXT_PATH = '${ contextPath }';
		</script>

		${ ui.includeFragment("kpui", "notifications") }

		<% if (config.beforeContent) { %>
			${ config.beforeContent }
		<% } %>

		<div class="ke-page-container">
			<%= config.content %>
		</div>
	</body>
</html>