<%-- 
    Document   : index
    Created on : Feb 3, 2022, 4:44:56 AM
    Author     : Dell
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:out value="${param.name}" default="no data"/>
    
        <c:import url="abc.xml" var="data" />
        ${data}
        
        <jsp:useBean id="user" class="com.User" />
        <c:set target="${user}" property="name" value="manoharan" />
       
        
        <c:set var="app" value="hi heelo" scope="request"/>
        
        <c:remove var="app" scope="request"/>
        ${app}
        ${app}
        ${user.name}
        
        
        <c:if test="${3<6}">
                <h3>ok</h3>
            </c:if>
                
                
        <c:catch var="ex">
          <%  int x=10/50 ;%>
          
        </c:catch>
        
        ${ex.message}
        
        <c:if test="${ex != null}">
            
            <h3>Error :${ex}</h3>
        </c:if>
        <c:if test="${4>1}" var="valid" />
        
        <c:if test="${valid}" >
            <h1>noo</h1>
        </c:if>
            
            <c:set var="amount" value="1000"/>
            <c:choose>
                <c:when test="%${amount >5000}">
                    <h1>high amount</h1>
                </c:when>
                <c:when test="${amount >=1000}">
                    <h1>low amount</h1>
                </c:when>
                <c:otherwise>
                    <h1>minum amount</h1>
                </c:otherwise>
            </c:choose>
            
                    <%=request.getParameter("name") %>
                    
                    <c:url var="link" value="index.jsp" >
                        <c:param name="name" value="agi"/>
                        <c:param name="age" value="13"/>
                        
                    </c:url>
                    
                    <a href="${link}">Clieck Here</a>
                    
                    
                    <%   
                    String[] ar={"A","B","C"};
                    pageContext.setAttribute("ar", ar);
                    

                    ArrayList<User> users = new ArrayList<>();
                    
                       User u= new User();
                       u.setName("agi");
                       u.setEmail("ddd");
                       
                    User u1 = new User();
                    u1.setName("rimon");
                    u1.setEmail("oo");
                    
                    users.add(u);
                    users.add(u1);
                    pageContext.setAttribute("users", users);

                    %>
                    
                    <c:forEach var="user" items="${users}" varStatus="st">
                        <h1>title ${user.email}</h1>
                        <h1>title ${user.name}</h1>
                        <h1>count ${st.count} isfirst= ${st.first} islast= ${st.last}</h1>
                        <h1>index ${st.index}  ${st.current.name}</h1>
                    </c:forEach>
                    <c:forEach var="i" items="${ar}">
                        <h1>Hellow ${i}</h1>
                    </c:forEach>
    </body>
</html>
