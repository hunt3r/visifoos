
<%@ page import="visifoos.Match" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="match.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: matchInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="match.blackDefense.label" default="Black Defense" /></td>
                            
                            <td valign="top" class="value"><g:link controller="player" action="show" id="${matchInstance?.blackDefense?.id}">${matchInstance?.blackDefense?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="match.blackOffense.label" default="Black Offense" /></td>
                            
                            <td valign="top" class="value"><g:link controller="player" action="show" id="${matchInstance?.blackOffense?.id}">${matchInstance?.blackOffense?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="match.doubleVictory.label" default="Double Victory" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${matchInstance?.doubleVictory}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="match.whiteDefense.label" default="White Defense" /></td>
                            
                            <td valign="top" class="value"><g:link controller="player" action="show" id="${matchInstance?.whiteDefense?.id}">${matchInstance?.whiteDefense?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="match.whiteOffense.label" default="White Offense" /></td>
                            
                            <td valign="top" class="value"><g:link controller="player" action="show" id="${matchInstance?.whiteOffense?.id}">${matchInstance?.whiteOffense?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="match.winningTeam.label" default="Winning Team" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: matchInstance, field: "winningTeam")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${matchInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
