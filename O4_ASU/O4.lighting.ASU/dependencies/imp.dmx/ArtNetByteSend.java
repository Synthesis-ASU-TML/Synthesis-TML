
import com.cycling74.max.*;
import java.net.*;
import java.io.IOException;

/*
 * ArtNetByteSend V1.0
 * by David Butler - 21/11/2010
 * Based on UdpSendRaw by Volker Boehm
 */

public class ArtNetByteSend extends MaxObject {
	
	public int port = 6454;					// Art-Net port number
	public String host = "2.255.255.255";			// Only valid IPs are 2.255.255.255 and 10.255.255.255
	private InetAddress servAddr;
	private byte[] buffer;					// byte-buffer 
	private DatagramSocket sock = null;
	private static final String[] INLET_ASSIST = new String[] {"(list) list of bytes to send"};
	private static final String[] OUTLET_ASSIST = new String[] {"bang when packet sent"};
		
	public ArtNetByteSend(Atom[] args) {
		declareIO(1, 1);
		createInfoOutlet(false);		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
		initSocket();
	}

	
	public void list(int[] input) {
		int packSize = input.length;
		buffer = new byte[packSize];
		
		initSocket();
		
		// fill byte buffer
		for(int i=0; i<packSize; i++)
			buffer[i] = (byte)input[i];
		
		try {
			servAddr = InetAddress.getByName(host);
			
			// create UDP-Packet to send
			DatagramPacket packet = new DatagramPacket(buffer, packSize, servAddr, port);
			sock.send(packet);
			outletBang(0);			// output bang when packet sent
		} 
		catch(IOException e) {
			System.err.println(e);
		}		
	}
	
	
	private void initSocket(){
		if ( sock == null ){
			try { sock = new DatagramSocket(); }
			catch(IOException e) {
				System.err.println(e);
			}
		}
	}
	
	
	// change host address
	public void host(String s) {
		host = s;
	}
	
	public void close() {
		sock.close();
	}
	
	protected void notifyDeleted() {
		close();
	}
}





