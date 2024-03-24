Task Definition and Issues

1. **Additional Components:**
   For each new element added, three components are integrated:
   - Firewalls: Installed for each server to safeguard against potential attacks and exploits, establishing a protective barrier.
   - SSL Certificate: Implemented for server www.foobar.com to ensure secure data transmission over HTTPS, encrypting data via TLS.
   - Monitoring Clients: Deployed to collect logs and transmit them to the data collector Sumologic for analysis and management.

2. **Firewalls:**
   Firewalls function as network security systems, monitoring and controlling both incoming and outgoing network traffic based on predefined security rules. They act as a barrier between trusted and untrusted networks, enhancing overall security posture.

3. **HTTPS Traffic:**
   Traffic is served over HTTPS instead of HTTP to bolster security. While HTTP transfers data in plain text, HTTPS encrypts data using TLS, mitigating the risk of interception and unauthorized access to sensitive information.

4. **Monitoring Purpose:**
   Monitoring serves to detect and diagnose web application performance issues proactively, ensuring optimal functionality and user experience.

5. **Data Collection by Monitoring Tool:**
   The monitoring tool collects logs from various components, including the application server, MySQL database, and Nginx web server. These logs provide timestamped documentation of relevant events within the system, aiding in analysis and troubleshooting.

6. **Monitoring Web Server QPS:**
   To monitor web server Query Per Second (QPS), monitoring should occur at both the network and application levels, tracking the server's ability to handle 1K queries per second.

Issues:

A. **SSL Termination at Load Balancer Level:**
   While offloading SSL decryption to the load balancer can alleviate server resource strain, it may burden the load balancer itself, potentially impacting its performance and scalability.

B. **Single MySQL Server for Writes:**
   Relying on a single MySQL server capable of accepting writes poses a single point of failure. Downtime of this server disrupts data addition and updates, affecting critical application functionalities.

C. **Identical Server Components:**
   Deploying servers with uniform components introduces a risk of widespread impact in case of bugs or vulnerabilities. Any issues present in one server's components are replicated across all servers, amplifying the potential impact and complexity of mitigation efforts.
