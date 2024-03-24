Task 3 Definitions and Explanations: 
Addition of Server and Load Balancer:
The inclusion of an additional server and load balancer serves several purposes.
Firstly, the new server allows for the segregation of each component - Nginx for web serving,
the application server for code execution, and MySQL for database management - onto separate machines.
This segregation enhances system integrity and isolates potential points of failure. Furthermore,
the additional server is configured with all components to act as a backup in case of component or server failure, ensuring system reliability and continuity.
Each server is equipped with monitoring capabilities and a firewall for enhanced security. Additionally,
the extra load balancer enhances infrastructure scalability by efficiently distributing incoming traffic across the entire system.
