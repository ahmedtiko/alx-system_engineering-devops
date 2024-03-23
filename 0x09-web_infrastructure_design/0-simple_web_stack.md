Description:
This basic web infrastructure hosts a website accessible via www.foobar.com. It lacks firewalls or SSL certificates to secure the server's network. Each component (database, application server) must share the server's resources (CPU, RAM, and SSD).

Specifics About This Infrastructure:

Server: A server, whether hardware or software, provides services to other computers, known as clients.

Domain Name Role: A domain name offers a human-friendly alias for an IP Address, facilitating easier recognition and memorization. It's mapped in the Domain Name System (DNS).

DNS Record Type for www.foobar.com: www.foobar.com employs an A record, confirmed by using "dig www.foobar.com". This record maps a hostname to its corresponding IPv4 address.

Web Server Role: The web server accepts HTTP or HTTPS requests and responds with requested content or error messages.

Application Server Role: It installs, operates, and hosts applications and services for end users, IT services, and organizations, facilitating hosting and delivery of consumer or business applications.

Database Role: The database organizes information for easy access, management, and updating.

Server Communication with Client: Communication occurs over the internet network using the TCP/IP protocol suite.

Issues With This Infrastructure:

Single Points of Failure (SPOF): Multiple SPOFs exist; for instance, if the MySQL database server goes down, the entire site becomes inaccessible.

Downtime During Maintenance: Maintenance checks necessitate component shutdown or server restart. With only one server, the website experiences downtime.

Inability to Scale with High Traffic: Scaling is challenging since all required components reside on a single server. Resource depletion or slowdown occurs with increased requests.
