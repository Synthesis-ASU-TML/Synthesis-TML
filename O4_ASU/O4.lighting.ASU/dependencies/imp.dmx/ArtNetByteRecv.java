
import com.cycling74.max.*;
import java.net.*;
import java.io.IOException;

/*
 * ArtNetByteRecv V1.0
 * by David Butler - 21/11/2010
 * Based on UdpRecvRaw by Volker Boehm
 */

public class ArtNetByteRecv extends MaxObject implements Runnable {
	volatile boolean running = false;
	DatagramSocket sock;
	DatagramPacket dpack;
	static final int maxPackSize = 530;				// Maximum length of Art-Net packet, 512 bytes of data prefixed by 18 byte header
	private byte[] bbuf = new byte[maxPackSize];	// Byte array to hold received raw bytes
	private int[] ibuf = new int[maxPackSize];
	private int port = 6454;						// Art-Net receive port
	Thread t;
	
	public ArtNetByteRecv(Atom[] args) {
		declareIO(1, 1);
		createInfoOutlet(false);
	
		try {
			recv();
		} catch (IOException e) {
			System.err.println(e);
		}
		t = new Thread(this);
		t.start();
	}
	
	
	public void run() {
		int packetSize = bbuf.length;
		
		while(running) {
			try {
				sock.receive(dpack);
				packetSize = dpack.getLength();
			} catch (IOException e ) {
				//System.err.println(e);
				post("imp.dmx.artnetin: port 6454 released");
				return;
			}
			
			if(packetSize > maxPackSize)
				packetSize = maxPackSize;
			
			for(int i=0; i<packetSize; i++){
				ibuf[i] = (0xFF&(int)bbuf[i]);
			}
				outlet(0, ibuf); 
		}
	}
	
	
	public void recv() throws IOException {
		if(running)
			sock.close();
		
		sock = new DatagramSocket(port);
		post("imp.dmx.artnetin: binding to port 6454");
		
		dpack = new DatagramPacket(bbuf, maxPackSize);
		running = true;
	}
	
	
	public void stop() {
		if(running) {
			running = false;
			sock.close();
		}
	}
	
	protected void notifyDeleted() {
		stop();
	}
}












































































