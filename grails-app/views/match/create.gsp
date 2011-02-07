

<%@ page import="visifoos.Match" %>
<%@ page import="visifoos.Player" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${matchInstance}">
            <div class="errors">
                <g:renderErrors bean="${matchInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    
                    <div id="gaming-floor">
                        <div id="white" class="row">
                            <div class="offense position">
                                <div><label for="whiteOffense"><g:message code="match.whiteOffense.label" default="White Offense" /></label></div>
                                <div><g:select name="whiteOffense.id" 
                                    from="${visifoos.Player.list()}" 
                                    optionKey="id" 
                                    optionValue="name"
                                    value="${matchInstance?.whiteOffense?.id}"
                                    noSelection="${['null':'Select Player...']}" />
                                </div>
                            </div>
                            <div class="defense position">
                                <div><label for="whiteDefense"><g:message code="match.whiteDefense.label" default="White Defense" /></label></div>
                                <div><g:select name="whiteDefense.id" 
                                    from="${visifoos.Player.list()}" 
                                    optionKey="id" 
                                    optionValue="name" 
                                    value="${matchInstance?.whiteDefense?.id}"
                                    noSelection="${['null':'Select Player...']}"  />
                                </div>
                            </div>
                            <div class="clear">&nbsp;</div>
                        </div>
                        <div id="table" class="row">
                            <div id="table-inner"></div>
                            <fieldset id="options" class="row"><legend>Options</legend>
                                <div id="doubleVictory">
                                    <div><label for="doubleVictory"><g:message code="match.doubleVictory.label" default="Double Victory" /></label></div>
                                    <div><g:checkBox name="doubleVictory" value="${matchInstance?.doubleVictory}" /></div>
                                </div>
                                <div id="winningTeam">
                                    <div><label for="winningTeam"><g:message code="match.winningTeam.label" default="Winning Team" /></label></div>
                                    <div><select name="winningTeam">
                                            <option value="">Select Winner</option>
                                            <option value="white" />White</option>
                                            <option value="white" />Black</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="buttons">
                                    <span class="button"><g:submitButton name="create" class="save" value="Score It!" /></span>
                                </div>
                            </fieldset>
                            <div class="clear"></div>
                        </div>
                        <div id="black" class="row">
                            <div class="defense position">
                                <div><label for="blackDefense"><g:message code="match.blackDefense.label" default="Black Defense" /></label></div>
                                <div><g:select name="blackDefense.id" 
                                    from="${visifoos.Player.list()}" 
                                    optionKey="id" 
                                    optionValue="name" 
                                    value="${matchInstance?.blackDefense?.id}" 
                                    noSelection="${['null':'Select Player...']}"  />
                                </div>
                            </div>
                            <div class="offense position">
                                <div><label for="blackOffense"><g:message code="match.blackOffense.label" default="Black Offense" /></label></div>
                                <div><g:select name="blackOffense.id" from="${visifoos.Player.list()}" 
                                    optionValue="name" 
                                    optionKey="id" 
                                    value="${matchInstance?.blackOffense?.id}" 
                                    noSelection="${['null':'Select Player...']}"  />
                                </div>
                            </div>
                            <div class="clear">&nbsp;</div>
                        </div>
                        
                    </div>
                </div>
            </g:form>
        </div>
    </body>
</html>
