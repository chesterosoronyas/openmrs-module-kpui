<%
	def visibleFieldId = config.visibleFieldId ?: ui.randomId("field")
	config.visibleFieldId = visibleFieldId
	
	ui.decorateWith("kpui", "labeled", config)
%>

${ ui.includeFragment("kpui", "widget/field", config) }

<% if (config.afterField) { %>
	${ config.afterField }
<% } %>