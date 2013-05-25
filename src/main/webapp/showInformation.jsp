<html>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<head>
<f:loadBundle var="msgs" basename="messages" />
<link href="styles.css" rel="stylesheet" type="text/css"></link>
</head>
<f:view>
	<head>
	<title><h:outputText value="#{msgs.indexWindowTitle}"></h:outputText>
	</title>
	</head>
	<body>
	<h:outputFormat value="#{msgs.thankYouLabel}">
		<f:param value="#{form.name}" />
	</h:outputFormat>
	<p></p>
	<table>
		<tr>
			<td><h:outputText value="#{msgs.contactMeLabel}"></h:outputText>
			</td>
			<td><h:outputText value="#{form.contactMe}"></h:outputText></td>
		</tr>
		<tr>
			<td><h:outputText value="#{msgs.bestDayLabel}"></h:outputText>
			</td>
			<td><h:outputText value="#{form.bestDaysConcatenated}"></h:outputText></td>
		</tr>
		<tr>
			<td><h:outputText value="#{msgs.yearOfBirthLabel}"></h:outputText>
			</td>
			<td><h:outputText value="#{form.yearOfBirth}"></h:outputText></td>
		</tr>
		<tr>
			<td><h:outputText value="#{msgs.languageLabel}"></h:outputText>
			</td>
			<td><h:outputText value="#{form.languagesConcatenated}"></h:outputText></td>
		</tr>
		<tr>
			<td><h:outputText value="#{msgs.colorLabel}"></h:outputText>
			</td>
			<td><h:outputText value="#{form.colorsConcatenated}"></h:outputText></td>
		</tr>
		<tr>
			<td><h:outputText value="#{msgs.educationLabel}"></h:outputText>
			</td>
			<td><h:outputText value="#{form.education}"></h:outputText></td>
		</tr>

	</table>
	</body>
</f:view>
</html>