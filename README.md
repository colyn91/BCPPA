# BCPPA
Source codes of solidity-based smart contract, NS, VanetMobiSim in our proposed BCPPA

# Solidity-based Smart Contract
The smart contract provides the function of <update>, <get>, and <deletetx> to maintain certificates of vehicles.
It can be directly deployed in Rinkeby (a Ethereum test netwokr), the link is available at: https://www.rinkeby.io, and we tested and invoked it using Remix (available at: http://remix.ethereum.org).
  
 # NS + VanetMobiSim
 
 ## VanetMobiSim Related File
 These files include some map source data of format .RT (the used map in our simulation is TGR11001.RT1), the setting of vehicles's speed and scenario generation test file.
 
 ## NS Related File
 The test files are <awk_average_delay_RSU.awk> and <awk_Packet_Loss_RSU.awk> for testing average delay and packet loss, respectively. 

 ## How to use these files
 ### Dependency:
 1. ns 2.35, avaiable at: 
 2. JDK, avaiable at: 
 3. Ant, avaiable at: 
 4. VanetMobiSim, avaiable at:
 
 ### Setps
 1. Use vms_get_scen.xml to generate the simualtion scenario file:
 order: java -jar VanetMobiSim.jar vms_get_scen.xml
 output: vms_scen_file
 
 2. Use the file of vms_scen_file to genrate .tcl file, that is, importing the scenario file <vms_scen_file> in ns.tcl:
 order: ns ns.tcl
 output: ns_trace.tr and ns_nam.nam
 
 3. Analyse the average delay:
 order: gawk -f awk_average_delay_RSU.awk ns_trace.tr
 output: the final average delay
 
 4. Analyse the packet loss:
 order: gawk -f awk_Packet_Loss_RSU.awk ns_trace.tr
 output: the final packet loss
