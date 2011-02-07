

<%@ page import="visifoos.Series" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'series.label', default: 'Series')}" />
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
            <g:hasErrors bean="${seriesInstance}">
            <div class="errors">
                <g:renderErrors bean="${seriesInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${seriesInstance?.id}" />
                <g:hiddenField name="version" value="${seriesInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="series.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: seriesInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${seriesInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="endDate"><g:message code="series.endDate.label" default="End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: seriesInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" precision="day" value="${seriesInstance?.endDate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="matches"><g:message code="series.matches.label" default="Matches" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: seriesInstance, field: 'matches', 'errors')}">
                                    <g:select name="matches" from="${visifoos.Match.list()}" multiple="yes" optionKey="id" size="5" value="${seriesInstance?.matches*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="startDate"><g:message code="series.startDate.label" default="Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: seriesInstance, field: 'startDate', 'errors')}">
                                    <g:datePicker name="startDate" precision="day" value="${seriesInstance?.startDate}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="series.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: seriesInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${seriesInstance?.title}" />
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
