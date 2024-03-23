Description:
This distributed web infrastructure aims to alleviate traffic on the primary server by delegating some load to a replica server, facilitated by a load balancer responsible for distributing the workload between these two servers (primary and replica).

Specifics About This Infrastructure:

Load Balancer Configuration and Algorithm:
The HAProxy load balancer utilizes the Round Robin distribution algorithm. This algorithm cycles through each server behind the load balancer based on their weights, ensuring equitable distribution of processing time. With Round Robin's dynamic nature, server weights can be adjusted in real-time.

Load-Balancer Enabled Setup:
The HAProxy load balancer establishes an Active-Passive setup rather than an Active-Active configuration. In an Active-Active setup, workloads are spread across all nodes to prevent overloading. This setup enhances throughput and response times. Conversely, an Active-Passive setup designates some nodes as passive, only becoming active when the preceding node is inactive.

Database Primary-Replica Cluster Operation:
In a Primary-Replica setup, one server acts as the Primary and another as the Replica. The Primary server handles read/write requests, while the Replica server handles only read requests. Data synchronization occurs when the Primary server executes a write operation.

Primary Node vs. Replica Node Role:
The Primary node manages write operations for the site, while the Replica node handles read operations, reducing read traffic to the Primary node.

Issues With This Infrastructure:

Single Points of Failure (SPOF):
Various SPOFs exist, such as the Primary MySQL database server. If it fails, the site cannot make changes, including user management. Additionally, servers containing the load balancer and the application server connecting to the primary database are susceptible to SPOFs.

Security Concerns:
Data transmitted over the network lacks encryption via an SSL certificate, making it susceptible to interception by hackers. Furthermore, the absence of a firewall leaves no means of blocking unauthorized IPs.

Lack of Monitoring:
The absence of server monitoring leaves administrators unaware of each server's status, posing challenges in identifying and addressing issues promptly.
