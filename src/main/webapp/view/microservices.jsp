<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp" />

	<div class="body-main">There is need for distributed and
		centralized configuration in spring micorservies We can implement the
		distributed configuration using various APIs like 1) Spring cloud
		consul 2) Spring cloud config 3) Zookeeper Consul is service
		networking solution to automate configuratoin Consul help to maintain
		configuration data accros all the services at one place called consul
		server Consul server shares the respective data to all the microserves
		during bootstrap phase
		-----------------------------------------------------------------------------
		C:\SoftwareCenterApplications\Consul\consul_1.16.0_windows_amd64 1)
		start the consul agent (consul agent is core process of consul) acting
		as server consul agent -server -bootstrp-expect=1
		-data-dir=consul-data2 -ui -bind=IP_ADDRESS_OF_HOSTMACHINE consul
		agent -server -bootstrap-expect=1 -data-dir=consul-data2 -ui
		-bind=192.168.53.137 access consul UI
		http://localhost:8500/ui/dc1/services
		---------------------------------------------------------------------
		distributed configuration with consul
		================================================================ click
		on key/value on consul UI for all the common data provide in
		config/application/data path for each microservice create seperate
		data file like config/PlanMs/data and provide the properties
		================================================================
		provide dependency in the pom of MS org.springframework.cloud
		spring-cloud-starter-consul-config 3.1.1
		----------------------------------------------------------------
		provide the below properties in application.properties file
		spring.application.name=PlanMS server.port=8080
		spring.cloud.consul.config.enabled=true
		spring.cloud.consul.config.name=PlanMS
		spring.cloud.consul.config.format=yaml
		spring.cloud.consul.config.profile-separator='::'
		spring.cloud.consul.config.prefixes=config
		spring.cloud.consul.config.default-context=application
		spring.config.import=consul: data-key=data is data file name
		----------------------------------------------------------------
		bootstrap.yml is loaded before application.yml. It is typically used
		for the following: when using Spring Cloud Config Server, you should
		specify spring.application.name and spring.cloud.config.server.git.uri
		inside bootstrap.yml some encryption/decryption information
		Technically, bootstrap.yml is loaded by a parent Spring
		ApplicationContext. That parent ApplicationContext is loaded before
		the one that uses application.yml. after spring 2.4.X bootstap.yml is
		not required
		==================================================================================================
		Service Registry ----------------- In service registry pattern each
		microservices needs to register itself to central server known as
		service registry. once the service gets registered in service registry
		various details like name host port are stored in service registry and
		also list of registered service are available to the new service There
		are many service registry solutions like: Netflix Eureka Zookeeper
		Consul Consul helps in service registry and discovery apart from
		distributed configuration support In case of consul all the service
		must be registered to the consul and registered services can discover
		the URL of other services through the consul registry During discovery
		process consul also checks the health of registerd services
		periodically and consul also shares the URL only after health check
		for service discovery add the following dependency in the POM
		org.springframework.cloud spring-cloud-starter-consul-discovery 3.1.1
		org.springframework.cloud spring-cloud-netflix-hystrix
		org.springframework.cloud spring-cloud-starter-netflix-ribbon the the
		property in the propery file
		spring.cloud.consul.discovery.hostname=localhost also add the actuator
		for helth check from consul or we can define health check URL
		healthCheckPath: /my-health-check healthCheckInterval: 20s Questions:
		what if service is stopped and same service is started at different
		port and at previous port some other application is running with same
		health check URL http://localhost:8080/actuator/healthcheck consul
		services deregister -id=FriendFamilyMS
		=========================================================================
		load balancer -------------- load balancing can be at server side or
		client side there are multiple ways to implement load balancing Here
		we will be using sping cloud load balancing. It supports both static
		and dynamic load balancing When we provide statically where the
		service are running and how many it is called static load balancing In
		dynamic load balancing it will interact with discovery service and
		choose only which is up and runnig dynamically to implement dynamic
		load balancer with consul: 1) add dependency org.springframework.cloud
		spring-cloud-starter-loadbalancer 3.1.1 2) create a load balancer
		config class with inner class as below class
		DemoSericeInstanceListSupplier implements ServiceInstanceListSupplier
		3) in inner class use @Autowired DiscoveryClient discoveryClient; to
		fetch the registered instances with help of
		discoveryClient.getInstances("FriendFamilyMS") 4) at controller add at
		class level @EnableAutoConfiguration @LoadBalancerClient(name =
		"MyLoadBalancer", configuration = LoadBalancerConfig.class) 5) create
		a bean of resttemplate with @LoadBalanced 6) call with resttemplate
		with MyLoadBalancer as host:port name eg
		http://MyLoadBalancer/get/friends
		==================================================================================================================
		Resilience -------------------------- Resilence to make application
		fault tolerant If any of the service is not reponding then other
		service should stop sending to that fault prone service to implement
		resilience we can incorporate circuit breaker patter such that if
		number of errors within a timeframe is beyond acceptable limit then
		circuit can be opened which means that there will be no request sent
		to the service which is not responding Resilence4j and Hystrix are two
		APIs to implement resilience in the microservices Fallback pattern ->
		an alternate code is executed when circuit is opened So resilience4j
		helps in degrading gracefully fallback executed when either an error
		occured or timeout occured or circuit opened To implement resilience
		follow the steps: 1) add two dependencies io.github.resilience4j
		resilience4j-spring-boot2 1.7.0 org.springframework.boot
		spring-boot-starter-aop 2) in the controller class methods annotate
		the method with @CircuitBreaker(name="customerservice", fallbackMethod
		= "getFallbackMethod") 3) write the getFallbackMethod with same
		signature with one extra parameter Throwable t public String
		getFallbackMethod(Throwable t) 4) in application properties file
		define the prperties #resilience properites
		resilience4j.circuitbreaker.instances.customerservice.failure-rate-threshold=50
		resilience4j.circuitbreaker.instances.customerservice.ring-buffer-size-in-closed-state=5
		resilience4j.circuitbreaker.instances.customerservice.ring-buffer-size-in-half-open-state=3
		#duration to move from open to half open state
		resilience4j.circuitbreaker.instances.customerservice.waitDurationInOpenState=10s
		resilience4j.circuitbreaker.instances.customerservice.automaticTransitionFromOpenToHalfOpenEnabled=true
		=============================================================================
		Circuit breaker -------------------- Circuit can be in three phase:
		Open state Half open state closed state closed state --> after
		threashold errors --> open state --> after wait duration --> half open
		state --> if error is fixed --> closed state Circuit breaker can
		follow: count based sliding window by default all exception count as
		failure but we can also define list of exception that can be defined
		as failure in that case all other exception counted as success unitl
		or unless they are ignored Exception can also be ignored so that it
		can be neither counted as success not as failure
		================================================================
		ansynchronous call ------------------------- Micoreservices can
		communicate synchronously or asynchronously In synchronous
		communication microservice send request sequencely and get the
		response But in asynchronous communication microservice send request
		to different microservices parallely and get the response back If call
		to other microservice is dependent on first microservice then
		asynchronous call is not possible to impletement ansynch call we can
		use Future.of method eg: Future
		fromFriend=Future.of(()->restTemplate.getForObject("http://MyLoadBalancer/get/friends",
		String.class)); and to retrieve use fromFriend.get();
		===================================================================
		API Gateway ----------- An API gateway sits between external consumers
		and your microservices, providing a unified entry point. Api gateway
		performs intelligent routing, client specific api (mobile and
		desktop), request aggregation from single request (by clent) to
		multiple service calls, protocal translation You can use it not just
		for routing but for rate limiting and access quota management,
		caching, security and more. there are multiple ways to implement API
		gateway one such method is: SPRING CLOUD GATEWAY spring cloud gateway
		helps to route request appropriately to respective MS To work with
		sping cloud gateway we need to confirgure following paramerters:
		Route: Route is basic building block of gateway. It is defined by an
		Id a destination URI and collection of predicates and filters and root
		is matched if aggregate predicate is true Pridicate: This is java8
		predicate api and it helps in matching the request by method parameter
		header and by multiple other fields Filter: it is spring web filter
		api Predicate: there are multiple predicates that we have path:
		path=/sports/* , /hobbies/* after match the request made after
		specified date and time before between methods: helps in matching
		request based on the method specified Query: Filter: load balanced if
		the URL has lb prefix that means we are using load balance client
		filter internally this makes use of spring cloud load balancer to
		resolve the final URL eg: uri:lb://CustomerMS Prefix path we also have
		prefix path filter in this case it takes prefix parameter eg:
		PrefixPath=/myprefix Spring cloud gateway is also registered in consul
		so that it can discver URL of other microservices from the consul
		registry The gate with load balancer filter receives the details of
		all the services through consul after implementing API gateway we need
		not to call the specific API just call the API gateway URL with
		relative URL of required MS gateway doesnt work with web dependency in
		the project Spring cloud gateway automatically provides circuit
		breaker support how to implement API gateway:
		----------------------------- 1) Create a new application for gateway
		to implement API gateway add dependency: org.springframework.cloud
		spring-cloud-starter-gateway 3.1.1 2) add the following properties in
		property file server.port=9000 spring.application.name=GatewayMS
		spring.cloud.consul.discovery.hostname=localhost
		spring.cloud.gateway.discovery.locator.enabled=true
		spring.cloud.gateway.routes[0].id=CallDetailsMS
		spring.cloud.gateway.routes[0].uri=lb://CallDetailsMS
		spring.cloud.gateway.routes[0].predicates[0]=Path=/*/calldetails/**
		spring.cloud.gateway.routes[1].id=PlanMS
		spring.cloud.gateway.routes[1].uri=lb://PlanMS
		spring.cloud.gateway.routes[1].predicates[0]=Path=/*/plans/**
		spring.cloud.gateway.routes[2].id=FriendFamilyMS
		spring.cloud.gateway.routes[2].uri=lb://FriendFamilyMS
		spring.cloud.gateway.routes[2].predicates[0]=Path=/*/friends/**
		spring.cloud.gateway.routes[3].id=CustomerMS
		spring.cloud.gateway.routes[3].uri=lb://CustomerMS
		spring.cloud.gateway.routes[3].predicates[0]=Path=/*/costumer/**
		===================================================================================================
		Declarative Client -------------------------- When calling one
		microservice to other we were using Rest Template to make rest call
		But when we place load balancer and circuit breaker it becomes a
		complicated also to make Rest call we need to know the various methods
		of Restteamplate, need seperate beam for loadbalancing and also
		seperate service for circuit breaker To overcome these problems and
		simply call from one MS to other MS we have declarative client
		Declarative client helps integrating with load balancing API and
		circuit breaker API to provide load balancing and fallback mechanism
		Feign --------- Feign is a declarative client from Netflix. It is
		declarative because we as a developer declare API to contact other
		microservices In feign we define rules in form of Interfaces and at
		runtime feign create implementation of our interfaces automatically
		thus with minimul code at interfaces we can have greater control over
		how MS communicates with other Advantages ----------- Feign
		automatically uses loadbalancer API With appropriate depedency and
		configuration feign automatically uses circuit breaker Feign client
		wraps all its call through ribbon How to implement -------------------
		Add dependency 1) org.springframework.cloud
		spring-cloud-starter-openfeign 3.1.1 2) Annotate with
		@EnableFeignClient 3) Make the sevice interface and annotate it with
		@FeignClient(name = "PlanFeign", url = "http://localhost:9000") or
		@FeignClient("FriendMS") make the methods in this interface and
		provide @Request mapping for required URL
		@RequestMapping("/get/plans") public String getPlans();
		===============================================================================================================
		Microservices are implemented with the following APIs Service
		discovery + Load Balancing + resilience + API gateway But it is
		equally important to analyze the performance of the application as
		whenever we run any application lots of resources like processor
		memory etc get used. So we need to continuously monitor the
		application to analyze its performance monitoring + measuring of
		resources = anaylis of performance Prometheus ------------------ for
		monitoring spring provides multiple endpoints like /actuator
		/actuator/metrics /actuator/health these endpints helps in providing
		all the data that need to monitor our application like threads cache
		requests jvm memory etc Spring boot actuator provides all these
		details with micrometer data provider There are various monitoring
		system that are provided with various vendors like: Prometheus AWS
		Cloudwatch Netflix Atlas Grafana All these vendor requires metrix data
		in different different format to process and display in graphical
		representation Micrometer --------------------------- micrometer
		converts these metrics data to vendor required format Micometer is not
		the part of sping ecosystem, it is an open source project Prometheus
		---------------------------- Prometheus is in memory dimentional time
		series database and it is designed to operate in pull model that is it
		pull the data from application periodically. It has simple built in UI
		and it also supports custom query language and math operation to
		extract relevant metrics data Implementing prometheus
		------------------------------ 1)TO implement prometheus install
		prometheus 2)Start prometheus with exe 3)change the configuration
		files prometheus.yml file provide the configuration as below:
		scrape_configs: - job_name: 'CustomerMS'
		metrics_path:'/actuator/prometheus' static_config: -
		targets:['localhost:9200'] 4) add dependency of io.micrometer
		micrometer-core io.micrometer micrometer-registry-prometheus 5)
		properties in properties file #prometheus #metrics endpoint is
		bydefault disabled management.endpoint.metrics.enabled=true #exposure
		ofall the endpoints management.endpoints.web.exposure.include=*
		#enable endpint /actuator/prometheus #due to this micometer converts
		actuators data into prometheus specified format
		management.endpoint.prometheus.enabled=true #enables the exporting of
		the metics management.metrics.export.prometheus.enabled=true
		prometheus bydefault runs on 9090
		================================================================= Will
		your application take advantage of multiple instances of related
		services and load balance across them? In the cloud, a lot of things
		can go wrong. If a service is suddenly unavailable, is your
		application resilient enough? In the cloud, instances can be
		increased, decreased, moved around, and so on. Will your application
		automatically adapt to such changes? If yes, then the application is
		cloud-native as it was designed to work on cloud advantages.
		----------------------------------------------------------------------------------------------------------
		Since the services are deployed at random hosts and ports, how can
		Customer microservice know where to find the other microservices? Most
		of the configuration details of the 4 microservices are similar. How
		can we avoid this duplication? Since in cloud plan and friend-family
		are dynamically deployed, how will the customer microservice know
		where to find them? When we scale friend-family in the cloud, how
		customer service can load balance the load across multiple instances
		of them? What if while fetching the profile the request friend-family
		service fails. How to bring in resilience? Since the application is
		now spread across as multiple microservices, how do we trace the flow
		of a request? --------------------------------------------------- We
		have many solutions to the challenges posed by cloud native
		applications. Some of them are: Netflix OSS Spring Cloud Vertx Restlet
		Akka Ninja We will be using Spring Cloud in this course. Spring Cloud
		also uses open source components from Netflix.
		-------------------------------------- Some of the major projects
		under the Spring Cloud umbrella project are: Spring Cloud Config-- to
		access our configurations from GIT. Spring Cloud Netflix Spring Cloud
		Security Spring Cloud Sleuth, etc
		---------------------------------------------------------------------------
		Spring Cloud Config =================== Spring Cloud project allows us
		to write cloud compatible code One of its sub-project is Spring Cloud
		Config Cloud-Config allows keeping all configurations in a central
		place Since this uses the Bootstrap context, we need to use
		bootstrap.properties file A config server contacts the GIT repo. The
		config clients contact the config server at startup to gather the
		configurations Changes made to configurations don?t automatically
		reflect in the clients The configuration files use a specific order of
		priority.
		--------------------------------------------------------------------------
		Load balancer =============== various load balancers provided by
		Spring Cloud to perform client-side load balancing are Ribbon, Spring
		Cloud Load Balancer, etc. Some examples of software load balancers
		are: HAProxy NGINX mod_athena Varnish ------------------------------
		Need for Service Discovery? The service cannot go and modify the
		properties present in the configuration server every time there is a
		change and also all the relevant microservices have to be refreshed.
		That will be very cumbersome. In Service Discovery pattern, a service
		registers itself with a central server called the Service Registry.
		Now, once it registers itself with the Service Registry, two things
		happen: Its details like name, port, host, etc. are stored in the
		Service Registry A list of other registered services become available
		to it Thus, even if one of the services were to get redeployed at a
		different host and port, the other services need not worry about it.
		When the service gets redeployed, it would simply update its
		information in the service registry again. The other services would
		discover its updated details through the service registry. There are
		many Service Registry solutions like Netflix Eureka, ZooKeeper,
		Consul, etc. -------------------------------------------------------
		CIRCUIT BREAKER -Hystrix, Resilience4j APIs
		============================================= Because of this latency,
		the requests start queuing up in all the related services slowing
		everything down. This is a cascading failure. To prevent cascading
		effect, when applied in fault tolerance is called the circuit breaker
		pattern. When does a fuse trip in a house? When the current flow
		exceeds a threshold. Similarly, in microservices communication, when
		the number of errors in a given time frame is beyond an acceptable
		limit, the circuit opens, thereby preventing further flow and
		protecting other parts of the application. This sort of alternate
		arrangement when the circuit is open is called a Fallback pattern.
		Hystrix allows you to mention any alternate piece of code that you
		wish to run if a service is down. Thus Hystrix allows you to degrade
		gracefully. The user continues to have access to the application, but
		some of the features will be unavailable temporarily. Compared to
		FailFast this is the FailSilent pattern. Fallback executes when: An
		error occurs A timeout occurs Circuit opens
		----------------------------------------------------------------------------------
		API Gateway- ZUUL ================== the UI application has to send
		requests to the different microservices directly but since the
		microservices are in the cloud, the host and port are changing
		frequently. Hence, it is not sustainable for the UI application to
		talk to the microservices directly. The better approach is the UI
		application sends its request to a proxy server which then forwards
		the request to appropriate microservices. This type of proxy is also
		called a reverse proxy. The API gateway pattern is a solution to the
		problems of a client invoking microservices. In an API gateway
		pattern, you have an API gateway server that comes in between the
		client and the services. The API gateway performs complex tasks
		including: Intelligent routing: When a request comes from the client,
		it intelligently routes it to the appropriate services The various API
		gateways which help in intelligent routing and load balancing are
		Zuul, Spring Cloud Gateway, etc. A BFF or Backend for Front End is a
		variation of the API gateway pattern. Instead of having a single API
		gateway for all types of UI applications, we can have a dedicated API
		gateway for desktop, mobile, etc.
		--------------------------------------------------------------------------------------------
		Problems with RestTemplate- Feign =================================
		The RestTemplate is being used for making calls to other services but
		when used with Loadbalancing APIs and Circuit Breaker APIs, it becomes
		cumbersome. Netflix provides an easier-to-use client called Feign. The
		Feign client automatically integrates with Load balancing APIs and
		Circuit Breaker APIs to provide load balancing and fallback mechanism.
		Feign is a declarative client from Netflix. It is declarative because
		we as developers declare the API for contacting other microservices.
		We define the rules in the form of our own interfaces. At runtime,
		Feign will create an implementation for our interfaces automatically.
		Thus with minimal code and self made interfaces, we can have greater
		control over how one microservice communicates with the other.
		------------------------------------------------------------------------------------------
		Many challenges of microservices can be solved by using appropriate
		design patterns. We have already seen some of them in the course. The
		challenges can be addressed by patterns such as: As the number of
		microservices increases, managing them and scaling them becomes
		difficult Load Balancing pattern (Ribbon), Messaging Patterns Failure
		points are more Circuit Breaker Pattern, Fallback pattern (Hystrix)
		Since the attack area increases, security challenges also increase
		Spring-Cloud-Security, Spring-Cloud-OAuth2 Since the number of
		microservices is high, keeping track of what is happening where
		becomes difficult Service Discovery(Eureka Dashboard), Circuit Breaker
		( Hystrix, Turbine ), Distributed Tracing Pattern (Zipkin) We need to
		monitor the different services and find out which are up, which are
		down, which need scaling, etc Service Discovery(Eureka Dashboard),
		Circuit Breaker ( Hystrix, Turbine ), Distributed Tracing Pattern
		(Zipkin) Log data will be immense and we need to find out meaningful
		information from them Distributed Tracing ( Sleuth, ELK Stack ) A
		single faulty service can bring down all the other services Circuit
		Breaker ( Hystrix ) Coordinating with external services is a challenge
		API Gateway, Backend For Frontend Managing databases becomes
		increasingly difficult Single DB, DB Per Service, API composition,
		Saga, CQRS Since each service may use different technology stack,
		deploying them also becomes a challenge Multiple service instances per
		host, Service instance per host, Service instance per Container
		---------------------------------------------------------------------------
		What is Sleuth? Spring Cloud Sleuth is one of the projects under
		Spring Cloud which allows us to trace a request. Sleuth adds two
		things: a traceId and a spanId in our logs. TraceId is a unique ID
		generated for every request. Span ID is a unique ID generated for the
		span or path of a single microservice. So if a request flows through
		two microservices, it will have one TraceId and two SpanId's. One span
		is created for the network hop and the other is for the application
		execution. The below image shows a sample log statement. The first
		parameter is the Service name, the second is the traceId, third is the
		span Id. The fourth parameter is false as it is not yet linked it with
		Zipkin. We will look at Zipkin later.
		---------------------------------------------------------------------------
		Some of the Database patterns are: Single DB - There is only one DB
		which is shared by all the microservices DB Per Service - Each
		microservice has its own DB. This throws challenges on what if there
		is data related across databases. To address this we have other
		patterns like: API composition - This is the pattern we saw at the
		beginning of the course, where the microservice was aggregating the
		result from other microservices by adding additional REST endpoints in
		those microservices instead of performing a table join. Saga - In this
		pattern, a sequence of individual or local Database operations are
		carried out through event driven database management model. For
		example, if we delete a customer, the related friend and family should
		also be deleted. These two operations can be considered a saga. In
		this model, when a customer is deleted, a delete event is raised on
		the friend service. The friend service listens to such events and once
		it receives the delete event, it performs a local delete transaction
		on the friend table CQRS - This is called the Command Query
		Responsibility Segregation. In this pattern, we maintain two copies or
		views of the database. One view is based on the common queries that
		get executed on the database. Thus this view can be a join of
		different tables. The other model of the same database is based on the
		update operations that get executed on the database. Thus the database
		is segregated based on the common commands and queries.
		-------------------------------------------------------------------------
		Two ways in which they can be deployed are: Multiple Service per host:
		In this pattern, multiple service instances are deployed on the same
		host. The advantage is that it takes a lesser resource, however, this
		also has the problem of monitoring. It is difficult to monitor which
		service is consuming more resource since multiple services are running
		in the same host Single service per host: In this pattern, each
		instance of a service is individually deployed on a separate host.
		This allows us to monitor which service is consuming more resources.
		However, this is complex as the number of hosts is more.
		---------------------------------------------------------------------------
		The microservices can also be packaged in the below ways:
		container-less: The executable is a JAR or WAR but the dependent
		frameworks are separate. For example, it does not include Tomcat,
		Jboss, etc self-contained: This contains the executable as well as the
		frameworks. in-container: The executable, frameworks and the entire
		JVM is packaged in one go, using a container technology like Docker,
		Kubernetes, etc The best way is to go for in-container as this ensures
		that the development, testing, deployment environments are the same
		for everyone and it is best from DevOps perspective.
		--------------------------------------------------------------------------
	</div>
</body>
</html>