//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package tcp.simulations;
import inet.node.inet.StandardHost;
import inet.linklayer.ethernet.EtherHub;
import inet.node.ethernet.Eth10G;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;

//
// TODO auto-generated type
//

network Tcp
{
    submodules:
    	endpoint : StandardHost;
    	switch : EtherHub;
    	user : StandardHost;
    	configurator : Ipv4NetworkConfigurator {
    		config = default(xml("<config><interface hosts='**' address='10.x.x.x' netmask='255.x.x.x'/></config>"));   
    	}
    connections allowunconnected:
        endpoint.ethg++ <--> Eth10G <--> switch.ethg++;
        user.ethg++ <--> Eth10G <--> switch.ethg++;
}
