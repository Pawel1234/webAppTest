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
	<body class="panelBackground">
	<h:outputText value="#{msgs.indexPageTitle}"
		styleClass="indexPageTitle"></h:outputText>
	<h:form>

		<h:panelGrid columns="2" columnClasses="oddRows,evenRows">
			<h:outputText value="#{msgs.namePrompt}"></h:outputText>
			<h:panelGroup>
				<h:inputText id="name" required="true"></h:inputText>
				<h:message for="name" errorClass="errors"></h:message>
			</h:panelGroup>
			<h:outputText value="#{msgs.agePrompt}"></h:outputText>
			<h:inputText size="3"></h:inputText>

		</h:panelGrid>
		<br />

		<h:commandButton value="#{msgs.buttonPrompt}"></h:commandButton>
	</h:form>
	<!--	<h:messages/>-->
	</body>
</f:view>
</html>