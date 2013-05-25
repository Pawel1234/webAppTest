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
	<h:outputText value="#{msgs.indexPageTitle}"
		styleClass="indexPageTitle"></h:outputText>
	<h:form>
	<h:messages layout="table" errorClass="errors"></h:messages>
		<table>
			<tr>
				<td><h:outputText value="#{msgs.namePrompt}"></h:outputText></td>
				<td><h:inputText id="name" required="true" value="#{form.name}"></h:inputText>
				</td>
				<td><h:message for="name" errorClass="errors"></h:message>
				</td>
			</tr>
			<tr>
				<td><h:outputText value="#{msgs.contactMePrompt}"></h:outputText></td>
				<td><h:selectBooleanCheckbox value="#{form.contactMe}"></h:selectBooleanCheckbox>
				</td>
			</tr>
			<tr>
				<td><h:outputText value="#{msgs.bestDayPrompt}"></h:outputText>
				</td>
				<td><h:selectManyMenu value="#{form.bestDaysToContact}">
					<f:selectItems value="#{form.daysOfTheWeekItems}" />
				</h:selectManyMenu></td>
			</tr>
			<tr>
				<td><h:outputText value="#{msgs.yearOfBirthPrompt}"></h:outputText>
				</td>
				<td><h:selectOneListbox size="5" value="#{form.yearOfBirth}">
					<f:selectItems value="#{form.yearItems}" />
				</h:selectOneListbox></td>
			</tr>
			<tr>
				<td><h:outputText value="#{msgs.colorPrompt}"></h:outputText></td>
				<td><h:selectManyCheckbox value="#{form.colors}">
					<f:selectItems value="#{form.colorItems}" />
				</h:selectManyCheckbox></td>
			</tr>
			<tr>
				<td><h:outputText value="#{msgs.languagePrompt}"></h:outputText></td>
				<td><h:selectManyListbox value="#{form.languages}">
					<f:selectItems value="#{form.languageItems}" />
				</h:selectManyListbox></td>
			</tr>

			<tr>
				<td><h:outputText value="#{msgs.educationPrompt}"></h:outputText></td>
				<td><h:selectOneRadio value="#{form.education}"
					layout="pageDirection">
					<f:selectItems value="#{form.educationItems}" />
				</h:selectOneRadio></td>
			</tr>
		</table>
		<h:commandButton value="#{msgs.buttonPrompt}" action="showInformation"></h:commandButton>
	</h:form>
<!--	<h:messages/>-->
	</body>
</f:view>
</html>