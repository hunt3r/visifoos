

<%@ page import="visifoos.Match" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${matchInstance}">
            <div class="errors">
                <g:renderErrors bean="${matchInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${matchInstance?.id}" />
                <g:hiddenField name="version" value="${matchInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="blackDefense"><g:message code="match.blackDefense.label" default="Black Defense" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: matchInstance, field: 'blackDefense', 'errors')}">
                                    <g:select name="blackDefense.id" from="${visifoos.Player.list()}" optionKey="id" value="${matchInstance?.blackDefense?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="blackOffense"><g:message code="match.blackOffense.label" default="Black Offense" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: matchInstance, field: 'blackOffense', 'errors')}">
                                    <g:select name="blackOffense.id" from="${visifoos.Player.list()}" optionKey="id" value="${matchInstance?.blackOffense?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="doubleVictory"><g:message code="match.doubleVictory.label" default="Double Victory" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: matchInstance, field: 'doubleVictory', 'errors')}">
                                    <g:checkBox name="doubleVictory" value="${matchInstance?.doubleVictory}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="whiteDefense"><g:message code="match.whiteDefense.label" default="White Defense" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: matchInstance, field: 'whiteDefense', 'errors')}">
                                    <g:select name="whiteDefense.id" from="${visifoos.Player.list()}" optionKey="id" value="${matchInstance?.whiteDefense?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="whiteOffense"><g:message code="match.whiteOffense.label" default="White Offense" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: matchInstance, field: 'whiteOffense', 'errors')}">
                                    <g:select name="whiteOffense.id" from="${visifoos.Player.list()}" optionKey="id" value="${matchInstance?.whiteOffense?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="winningTeam"><g:message code="match.winningTeam.label" default="Winning Team" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: matchInstance, field: 'winningTeam', 'errors')}">
                                    <g:textField name="winningTeam" value="${matchInstance?.winningTeam}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
