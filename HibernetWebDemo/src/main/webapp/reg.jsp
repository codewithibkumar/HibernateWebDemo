<%@ page import='org.hibernate.*, org.hibernate.cfg.*,ducat.hibernate.model.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String name = request.getParameter("tname");
   String salary = request.getParameter("tsalary");
   String desc = request.getParameter("tdesc");
   String caddr = request.getParameter("caddr");
   String paddr = request.getParameter("paddr");
   
   SessionFactory factory = new Configuration().configure().buildSessionFactory();
   Session session1 = factory.openSession();
   
   Address address = new Address();
   address.setCorr_address(caddr);
   address.setPermanent_address(paddr);
   Employee e1 = new Employee();
   e1.setName(name);
   e1.setSalary(Integer.parseInt(salary));
   e1.setAddress(address);
   e1.setDescription(desc);
   
   session1.beginTransaction();
   session1.save(e1);
   
   
   
   
%>
<jsp:include page="index.jsp" />
<h4 align='center'>Record saved</h2>

</body>
</html>