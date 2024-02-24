<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp" />

	<div class="body-main">
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif"; text-align: center;'>
			<strong><u><span
					style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529; background: white;'>Microserves</span></u></strong>
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif"; text-align: center;'>
			<strong><u><span
					style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529; background: white;'><span
						style="text-decoration: none;">&nbsp;</span></span></u></strong>
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif";'>
			<span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529; background: white;'>There
				is need for distributed and centralized configuration in spring
				micorservies</span><span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529;'><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">We can implement the
					distributed configuration using various APIs like</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">1) Spring cloud consul</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">2) Spring cloud config</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">3) Zookeeper</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Consul is service networking
					solution to automate configuration</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Consul help to maintain
					configuration data across all the services at one place called
					consul server</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Consul server shares the
					respective data to all the microservices during bootstrap phase</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<strong><span style="background: white;">Install and
						start the consul agent</span></strong><span style="background: white;">&nbsp;</span><br>
				<span style="background: white;">C:\SoftwareCenterApplications\Consul\consul_1.16.0_windows_amd64</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">1) start the consul agent
					(consul agent is core process of consul)</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">acting as server</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">consul agent -server
					-bootstrp-expect=1 -data-dir=consul-data2 -ui
					-bind=IP_ADDRESS_OF_HOSTMACHINE</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">consul agent -server
					-bootstrap-expect=1 -data-dir=consul-data2 -ui -bind=192.168.53.137</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">access consul UI</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">http://localhost:8500/ui/dc1/services</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<strong><span style="background: white;">Distributed
						configuration with consul</span></strong><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br>
				<span style="background: white;">click on key/value on consul
					UI</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">for all the common data
					provide in config/application/data path</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">for each microservice create
					seperate data file like config/PlanMs/data</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">and provide the properties</span></span>
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif";'>
			<span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529;'><br>
				<strong><span style="background: white;">Springboot
						configuration</span></strong><br> <span style="background: white;">provide
					dependency in the pom of MS</span></span>
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif";'>
			<br>&nbsp;org.springframework.cloud<br>&nbsp;spring-cloud-starter-consul-config<br>3.1.1<span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529;'><br>&nbsp;</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">----------------------------------------------------------------</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">provide the below properties
				in application.properties file</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.application.name=PlanMS</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">server.port=8080</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.cloud.consul.config.enabled=true</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.cloud.consul.config.name=PlanMS</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.cloud.consul.config.format=yaml</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.cloud.consul.config.profile-separator=&apos;::&apos;</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.cloud.consul.config.prefixes=config</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.cloud.consul.config.default-context=application</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">spring.config.import=consul:</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">data-key=data</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">is data file name</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
			<span style="background: white;">NOTE:<br> <span
				style="background: white;">bootstrap.yml is loaded before
					application.yml.</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">It is typically used for the
					following:</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">when using Spring Cloud
					Config Server, you should specify spring.application.name and
					spring.cloud.config.server.git.uri inside bootstrap.yml</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">some encryption/decryption
					information</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Technically, bootstrap.yml
					is loaded by a parent Spring ApplicationContext. That parent
					ApplicationContext is loaded before the one that uses
					application.yml.</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">after spring&nbsp;</span></span>2.4.X&nbsp;bootstap.yml
			is not required<span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529;'><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br>
				<strong><u><span style="background: white;">Service
							Registry</span></u></strong><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">In service registry pattern
					each microservices needs to register itself to central server known
					as service registry.</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">once the service gets
					registered in service registry various details like name host port
					are stored in service registry and also list of registered service
					are available to the new service</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">There are many service
					registry solutions like:</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Netflix Eureka</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Zookeeper</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Consul</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Consul helps in service
					registry and discovery apart from distributed configuration support</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">In case of consul all the
					service must be registered to the consul and registered services
					can discover the URL of other services through the consul registry</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">During discovery process
					consul also checks the health of registerd services periodically
					and consul also shares the URL only after health check</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">for service discovery add
					the following dependency in the POM</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br>&nbsp;org.springframework.cloud<br>&nbsp;spring-cloud-starter-consul-discovery<br>&nbsp;3.1.1<br>&nbsp;<br>&nbsp;org.springframework.cloud<br>&nbsp;spring-cloud-netflix-hystrix<br>&nbsp;<br>&nbsp;org.springframework.cloud<br>
				spring-cloud-starter-netflix-ribbon<span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529;'><br>&nbsp;</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Add the property in the
					properties file</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">spring.cloud.consul.discovery.hostname=localhost</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">also add the actuator for
					helth check from consul</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">or</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">we can define health check
					URL</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">healthCheckPath:
					/my-health-check</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">healthCheckInterval: 20s</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Questions: What if service
					is stopped and same service is started at different port and at
					previous port some other application is running with same health
					check URL http://localhost:8080/actuator/healthcheck</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;
				To deregister a microservices:<br> <span
				style="background: white;">consul services deregister
					-id=FriendFamilyMS</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;</span>
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif";'>
			<strong><u><span
					style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529; background: white;'>Load
						Balancer</span></u></strong><span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529;'><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br>
				<span style="background: white;">load balancing can be at
					server side or client side</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">there are multiple ways to
					implement load balancing</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">Here we will be using sping
					cloud load balancing. It supports both static and dynamic load
					balancing</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">When we provide statically
					where the service are running and how many it is called static load
					balancing</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">In dynamic load balancing it
					will interact with discovery service and choose only which is up
					and running dynamically</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">to implement dynamic load
					balancer with consul:</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">1) add dependency</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br>&nbsp;org.springframework.cloud<br>&nbsp;spring-cloud-starter-loadbalancer<br>
				3.1.1<span
				style='font-size: 11px; line-height: 115%; font-family: "Segoe UI", "sans-serif"; color: #212529;'><br>&nbsp;</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">2) create a public class
					LoadBalancerConfig with inner class as below</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">class
					DemoSericeInstanceListSupplier implements
					ServiceInstanceListSupplier</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">which implements</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">@Component</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">public class
					LoadBalancerConfig {</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">@Bean</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">@Primary</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">ServiceInstanceListSupplier
					serviceInstanceListSupplier() {</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">return new
					DemoSericeInstanceListSupplier(&quot;FriendFamilyMS&quot;);</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">}</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">}</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">class
					DemoSericeInstanceListSupplier implements
					ServiceInstanceListSupplier{</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">@Autowired</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">DiscoveryClient
					discoveryClient;</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">private final String
					serviceId;</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">public
					DemoSericeInstanceListSupplier(String serviceId) {</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">super();</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">this.serviceId = serviceId;</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">}</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">&nbsp;<br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">@Override</span><br
				style="font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;">
				<span style="background: white;">public Flux</span></span>&lt;list&gt;
			get() {<br>&nbsp;// TODO Auto-generated method stub<br>&nbsp;return
			Flux.just(discoveryClient.getInstances(serviceId));<br>&nbsp;}<br>&nbsp;<br>&nbsp;@Override<br>&nbsp;public
			String getServiceId() {<br>&nbsp;// TODO Auto-generated method
			stub<br>&nbsp;return null;<br>&nbsp;}<br>&nbsp;<br>&nbsp;}<br>&nbsp;<br>&nbsp;3)
			In inner class use
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif";'>
			<br>&nbsp;@Autowired<br>&nbsp;DiscoveryClient
			discoveryClient;<br>&nbsp;<br>&nbsp;to fetch the registered
			instances with help of<br>&nbsp;discoveryClient.getInstances(&quot;FriendFamilyMS&quot;)<br>&nbsp;<br>&nbsp;4)
			at controller add at class level<br>&nbsp;@EnableAutoConfiguration<br>&nbsp;@LoadBalancerClient(name
			= &quot;MyLoadBalancer&quot;, configuration =
			LoadBalancerConfig.class)<br>&nbsp;<br>&nbsp;5) create a
			bean of resttemplate with @LoadBalanced<br>&nbsp;<br>&nbsp;6)
			call with resttemplate with MyLoadBalancer as host:port name<br>&nbsp;ex:
			http://MyLoadBalancer/get/friends<br>&nbsp;<br> <strong><u>Resilience</u></strong><br>&nbsp;Resilience
			to make application fault tolerant<br>&nbsp;If any of the
			service is not responding then other service should stop sending to
			that fault prone service<br>&nbsp;to implement resilience we can
			incorporate circuit breaker patter such that<br>&nbsp;if number
			of errors within a timeframe is beyond acceptable limit then circuit
			can be opened which means that there will be no request sent to the<br>&nbsp;service
			which is not responding<br>&nbsp;<br>&nbsp;Resilence4j and
			Hystrix are two APIs to implement resilience in the Microservices<br>&nbsp;Fallback
			pattern -&gt; an alternate code is executed when circuit is opened<br>&nbsp;<br>&nbsp;So
			resilience4j helps in degrading gracefully<br>&nbsp;<br>&nbsp;fallback
			executed when either an error occured or timeout occured or circuit
			opened<br>&nbsp;<br>&nbsp;To implement resilience follow
			the steps:<br>&nbsp;<br>&nbsp;1) add two dependencies<br>&nbsp;<br>&nbsp;io.github.resilience4j<br>&nbsp;resilience4j-spring-boot2<br>&nbsp;1.7.0<br>&nbsp;<br>&nbsp;org.springframework.boot<br>&nbsp;spring-boot-starter-aop<br>&nbsp;<br>&nbsp;<br>&nbsp;2)
			in the controller class methods annotate the method with<br>&nbsp;@CircuitBreaker(name=&quot;customerservice&quot;,
			fallbackMethod = &quot;getFallbackMethod&quot;)<br>&nbsp;<br>&nbsp;3)
			write the getFallbackMethod with same signature with one extra
			parameter Throwable t<br>&nbsp;<br>&nbsp;public String
			getFallbackMethod(Throwable t)<br>&nbsp;<br>&nbsp;4) in
			application properties file define the properties<br>&nbsp;<br>&nbsp;#resilience
			properites<br>&nbsp;resilience4j.circuitbreaker.instances.customerservice.failure-rate-threshold=50<br>&nbsp;resilience4j.circuitbreaker.instances.customerservice.ring-buffer-size-in-closed-state=5<br>&nbsp;resilience4j.circuitbreaker.instances.customerservice.ring-buffer-size-in-half-open-state=3<br>&nbsp;#duration
			to move from open to half open state<br>&nbsp;resilience4j.circuitbreaker.instances.customerservice.waitDurationInOpenState=10s<br>&nbsp;resilience4j.circuitbreaker.instances.customerservice.automaticTransitionFromOpenToHalfOpenEnabled=true<br>&nbsp;<br>
			<strong><u>Circuit breaker</u></strong><br>&nbsp;Circuit can be
			in three phase:<br>&nbsp;Open state<br>&nbsp;Half open
			state<br>&nbsp;closed state<br>&nbsp;<br>&nbsp;closed
			state --&gt; after threshold errors --&gt; open state --&gt; after
			wait duration --&gt; half open state --&gt; if error is fixed --&gt;
			closed state<br>&nbsp;<br>&nbsp;Circuit breaker can follow:<br>&nbsp;count
			based sliding window<br>&nbsp;<br>&nbsp;By default all
			exception count as failure but we can also define list of exception
			that can be defined as failure in that case all other exception
			counted as success until or unless they are ignored<br>&nbsp;Exception
			can also be ignored so that it can be neither counted as success not
			as failure<br>&nbsp;<br> <strong><u>Asynchronous
					call</u></strong><br>&nbsp;Microservices can communicate synchronously or
			asynchronously<br>&nbsp;In synchronous communication
			microservice send request sequencely and get the response<br>&nbsp;But
			in asynchronous communication microservice send request to different
			microservices parallely and get the response back<br>&nbsp;If
			call to other microservice is dependent on first microservice then
			asynchronous call is not possible<br>&nbsp;<br>&nbsp;to
			impletement ansynch call we can use Future.of method<br>&nbsp;Ex:
			Future
			fromFriend=Future.of(()-&gt;restTemplate.getForObject(&quot;http://MyLoadBalancer/get/friends&quot;,
			String.class));<br>&nbsp;<br>&nbsp;and to retrieve use
			fromFriend.get();
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif";'>
			<br> <strong><u>API Gateway</u></strong><br>&nbsp;An API
			gateway sits between external consumers and your microservices,
			providing a unified entry point.<br>&nbsp;Api gateway performs
			intelligent routing, client specific api (mobile and desktop),
			request aggregation from single request (by client) to multiple
			service calls, protocol translation<br>&nbsp;You can use it not
			just for routing but for rate limiting and access quota management,
			caching, security and more.<br>&nbsp;<br>&nbsp;there are
			multiple ways to implement API gateway one such method is:<br>&nbsp;SPRING
			CLOUD GATEWAY<br>&nbsp;<br>&nbsp;spring cloud gateway helps
			to route request appropriately to respective MS<br>&nbsp;To work
			with spring cloud gateway we need to configure following parameters:<br>&nbsp;<br>&nbsp;Route:
			Route is basic building block of gateway. It is defined by an Id, a
			destination URI and collection of predicates and filters and root is
			matched if aggregate predicate is true<br>&nbsp;<br>&nbsp;Predicate:
			This is java8 predicate API and it helps in matching the request by
			method parameter header and by multiple other fields<br>&nbsp;<br>&nbsp;Filter:
			it is spring web filter API<br>&nbsp;<br>&nbsp;Predicate:<br>&nbsp;there
			are multiple predicates that we have<br>&nbsp;path:
			path=/sports/* , /hobbies/*<br>&nbsp;after match the request
			made after specified date and time<br>&nbsp;before<br>&nbsp;between<br>&nbsp;methods:
			helps in matching request based on the method specified<br>&nbsp;Query:<br>&nbsp;<br>&nbsp;Filter:<br>&nbsp;<br>&nbsp;load
			balanced<br>&nbsp;<br>&nbsp;if the URL has lb prefix that
			means we are using load balance client filter<br>&nbsp;internally
			this makes use of spring cloud load balancer to resolve the<br>&nbsp;final
			URL<br>&nbsp;eg: uri:lb://CustomerMS<br>&nbsp;<br>&nbsp;Prefix
			path<br>&nbsp;we also have prefix path filter<br>&nbsp;in
			this case it takes prefix parameter<br>&nbsp;eg:
			PrefixPath=/myprefix<br>&nbsp;<br>&nbsp;<br>&nbsp;Spring
			cloud gateway is also registered in consul so that it can discver URL
			of other microservices from the consul registry<br>&nbsp;The
			gate with load balancer filter receives the details of all the
			services through consul<br>&nbsp;<br>&nbsp;after
			implementing API gateway we need not to call the specific API just
			call the API gateway URL with relative URL of required MS<br>&nbsp;<br>&nbsp;gateway
			doesn&rsquo;t work with web dependency in the project<br>&nbsp;<br>&nbsp;Spring
			cloud gateway automatically provides circuit breaker support<br>&nbsp;<br>
			<strong>how to implement API gateway:</strong><br>&nbsp;1)
			Create a new application for gateway<br>&nbsp;to implement API
			gateway add dependency:<br>&nbsp;<br>&nbsp;org.springframework.cloud<br>&nbsp;spring-cloud-starter-gateway<br>&nbsp;3.1.1<br>&nbsp;<br>&nbsp;2)
			add the following properties in property file<br>&nbsp;server.port=9000<br>&nbsp;<br>&nbsp;spring.application.name=GatewayMS<br>&nbsp;<br>&nbsp;spring.cloud.consul.discovery.hostname=localhost<br>&nbsp;spring.cloud.gateway.discovery.locator.enabled=true<br>&nbsp;<br>&nbsp;spring.cloud.gateway.routes[0].id=CallDetailsMS<br>&nbsp;spring.cloud.gateway.routes[0].uri=lb://CallDetailsMS<br>&nbsp;spring.cloud.gateway.routes[0].predicates[0]=Path=/*/calldetails/**<br>&nbsp;<br>&nbsp;spring.cloud.gateway.routes[1].id=PlanMS<br>&nbsp;spring.cloud.gateway.routes[1].uri=lb://PlanMS<br>&nbsp;spring.cloud.gateway.routes[1].predicates[0]=Path=/*/plans/**<br>&nbsp;<br>&nbsp;spring.cloud.gateway.routes[2].id=FriendFamilyMS<br>&nbsp;spring.cloud.gateway.routes[2].uri=lb://FriendFamilyMS<br>&nbsp;spring.cloud.gateway.routes[2].predicates[0]=Path=/*/friends/**<br>&nbsp;<br>&nbsp;spring.cloud.gateway.routes[3].id=CustomerMS<br>&nbsp;spring.cloud.gateway.routes[3].uri=lb://CustomerMS<br>&nbsp;spring.cloud.gateway.routes[3].predicates[0]=Path=/*/costumer/**<br>&nbsp;<br>
			<strong><u>Declarative Client</u></strong><br>&nbsp;When calling
			one microservice to other we were using Rest Template to make rest
			call<br>&nbsp;But when we place load balancer and circuit
			breaker it becomes a complicated<br>&nbsp;also to make Rest call
			we need to know the various methods of Rest template, need separate
			beam for load balancing and also separate service for circuit breaker<br>&nbsp;<br>&nbsp;To
			overcome these problems and simply call from one MS to other MS we
			have declarative client<br>&nbsp;Declarative client helps
			integrating with load balancing API and circuit breaker API to
			provide load balancing and fallback mechanism<br>&nbsp;<br>
			<strong>Feign</strong><br>&nbsp;Feign is a declarative client
			from Netflix.<br>&nbsp;It is declarative because we as a
			developer declare API to contact other microservices<br>&nbsp;In
			feign we define rules in form of Interfaces and at runtime feign
			create implementation of our interfaces automatically thus with
			minimul code at interfaces we can have greater control over how MS
			communicates with other<br>&nbsp;<br>&nbsp;Advantages:<br>&nbsp;*
			Feign automatically uses loadbalancer API<br>&nbsp;* With
			appropriate depedency and configuration feign automatically uses
			circuit breaker<br>&nbsp;* Feign client wraps all its call
			through ribbon<br>&nbsp;<br> <strong>How to
				implement</strong><br>&nbsp;<br>&nbsp;1) Add dependency<br>&nbsp;<br>&nbsp;org.springframework.cloud<br>&nbsp;spring-cloud-starter-openfeign<br>&nbsp;3.1.1<br>&nbsp;<br>&nbsp;2)
			Annotate with @EnableFeignClients<br>&nbsp;<br>&nbsp;3)
			Make the sevice interface and annotate it with<br>&nbsp;@FeignClient(name
			= &quot;PlanFeign&quot;, url = &quot;http://localhost:9000&quot;)<br>&nbsp;or<br>&nbsp;@FeignClient(&quot;FriendMS&quot;)<br>&nbsp;<br>&nbsp;make
			the methods in this interface and provide @Request mapping for
			required URL<br>&nbsp;@RequestMapping(&quot;/get/plans&quot;)<br>&nbsp;public
			String getPlans();
		</p>
		<p
			style='margin-top: 0cm; margin-right: 0cm; margin-bottom: 10.0pt; margin-left: 0cm; line-height: 115%; font-size: 15px; font-family: "Calibri", "sans-serif";'>
			--------------------------------------------------------------------------------------------------------------<br>&nbsp;Microservices
			are implemented with the following APIs<br>&nbsp;<br>&nbsp;Service
			discovery + Load Balancing + resilience + API gateway<br>&nbsp;<br>&nbsp;But
			it is equally important to analyze the performance of the application
			as whenever we run any application lots of resources like processor
			memory etc get used.<br>&nbsp;<br>&nbsp;So we need to
			continuously monitor the application to analyze its performance<br>&nbsp;<br>&nbsp;monitoring
			+ measuring of resources = analysis of performance<br>&nbsp;<br>
			<strong>Prometheus</strong><br>&nbsp;for monitoring spring
			provides multiple endpoints like<br>&nbsp;<br>&nbsp;/actuator<br>&nbsp;/actuator/metrics<br>&nbsp;/actuator/health<br>&nbsp;<br>&nbsp;these
			endpints helps in providing all the data that need to monitor our
			application like threads cache requests jvm memory etc<br>&nbsp;<br>&nbsp;Spring
			boot actuator provides all these details with micrometer data
			provider<br>&nbsp;<br>&nbsp;There are various monitoring
			system that are provided with various vendors like:<br>&nbsp;Prometheus<br>&nbsp;AWS
			Cloudwatch<br>&nbsp;Netflix Atlas<br>&nbsp;Grafana<br>&nbsp;<br>&nbsp;All
			these vendor requires metrix data in different different format to
			process and display in graphical representation<br>&nbsp;<br>
			<strong><u>Micrometer</u></strong><br>&nbsp;micrometer converts
			these metrics data to vendor required format<br>&nbsp;Micometer
			is not the part of sping ecosystem, it is an open source project<br>&nbsp;<br>&nbsp;<br>
			<strong><u>Prometheus</u></strong><br>&nbsp;Prometheus is in
			memory dimensional time series database and it is designed to operate
			in pull model that is it pull the data from application periodically.
			It has simple built in UI and it also supports custom query language
			and math operation to extract relevant metrics data<br>&nbsp;<br>
			<strong><u>Implementing prometheus</u></strong><br>&nbsp;1) To
			implement prometheus install prometheus<br>&nbsp;2) Start
			prometheus with exe<br>&nbsp;3) Change the configuration files
			prometheus.yml file<br>&nbsp;provide the configuration as below:<br>&nbsp;<br>&nbsp;scrape_configs:<br>&nbsp;-
			job_name: &apos;CustomerMS&apos;<br>&nbsp;metrics_path:&apos;/actuator/prometheus&apos;<br>&nbsp;static_config:<br>&nbsp;-
			targets:[&apos;localhost:9200&apos;]<br>&nbsp;<br>&nbsp;4)
			Add dependency of<br>&nbsp;io.micrometer<br>&nbsp;micrometer-core<br>&nbsp;<br>&nbsp;io.micrometer<br>&nbsp;micrometer-registry-prometheus<br>&nbsp;<br>&nbsp;5)
			Properties in properties file<br>&nbsp;<br>&nbsp;#prometheus<br>&nbsp;#metrics
			endpoint is bydefault disabled<br>&nbsp;management.endpoint.metrics.enabled=true<br>&nbsp;#exposure
			ofall the endpoints<br>&nbsp;management.endpoints.web.exposure.include=*<br>&nbsp;#enable
			endpint /actuator/prometheus<br>&nbsp;#due to this micometer
			converts actuators data into prometheus specified format<br>&nbsp;management.endpoint.prometheus.enabled=true<br>&nbsp;#enables
			the exporting of the metics<br>&nbsp;management.metrics.export.prometheus.enabled=true<br>&nbsp;<br>&nbsp;prometheus
			bydefault runs on 9090
		</p>
	</div>
</body>
</html>