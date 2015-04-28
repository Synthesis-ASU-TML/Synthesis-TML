/**
 Java program for talking to x-OSC using the illposed JavaOSC library.
 This program sets up an OSC Receiver and Sender to connect to x-OSC in ad 
 hock mode on the default ports. Digital input messages from x-OSC are converted
 to basic keystroke messages for the Arcade demo. Although sending is not used
 in the Arcade demo the main thread also toggles the state of x-OSCs 16th 
 digital output, just for fun (and to show how it's done).
 
 This demo uses the illposed JavaOSC library packaged here and also available to
 download from here: http://www.illposed.com/software/javaosc.html
*/

import com.illposed.osc.*;
import java.net.*;
import java.awt.Robot;
import java.awt.event.KeyEvent;

public class Xosc
{
	public static void main(String[] args) 	throws 
											java.net.SocketException, 
											java.net.UnknownHostException, 
											java.io.IOException, 
											java.lang.InterruptedException, 
											java.awt.AWTException
	{
		//Setup reciever
		xOSCReceiver xoscRecieve = new xOSCReceiver (8000);
		xoscRecieve.start();

		//Setup sender
		xOSCSender xoscSender = new xOSCSender 
					(InetAddress.getByName(/*"169.254.1.1"*/"127.0.0.1"), 9000);


		for (int i = 0; i < 1000; i++)  // run application for 1000 seconds 
		{
			xoscSender.digitalOut (16, i%2);    // toggle LED

			try
			{
				Thread.currentThread().sleep(1000);
			}
			catch (InterruptedException ie)
			{
				// This would be a surprise.
			}
		}

		xoscRecieve.stopListening();
		System.out.println("Fin");
	}
};

/**
Class to recieve messages from x-OSC on its own thread
*/
class xOSCReceiver extends Thread implements OSCListener
{
	private int port;
	private OSCPortIn receiver;
	private Object[] digitalInputStates;
	private final int NumInputs = 16;
	private Robot robot;

	public xOSCReceiver(int port_) throws java.awt.AWTException
	{
		// Give this particular thread a name:  "thread 'LABEL'".
		super("x-OSCthread");
		port = port_;
		digitalInputStates = new Object[NumInputs];
		for (int i = 0; i < NumInputs; i++)
			digitalInputStates[i] = Integer.valueOf(0);

		robot = new Robot();
	}

	public void stopListening()
	{
		receiver.stopListening();
		receiver.close();
	}

	//for recieved messages
	public void acceptMessage(java.util.Date time, OSCMessage message)
	{
		//check for matching address
		System.out.println("Address:" + message.getAddress() + ":");
		if (message.getAddress().equals("/inputs/digital"))
		{
			Object[] values = message.getArguments();
			if (values.length >= NumInputs)
			{
				for (int i = 0; i < NumInputs; i++)
				{
					if (!values[i].equals(digitalInputStates[i]))
					{
						digitalInputStates[i] = values[i];
						switch (i)
						{
						case 0: //up
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_UP);
								System.out.println("up press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_UP);
								System.out.println("up release");
							}
							break;
						case 1:	//right
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_RIGHT);
								System.out.println("right press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_RIGHT);
								System.out.println("right release");
							}
							break;
						case 2:	//down
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_DOWN);
								System.out.println("down press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_DOWN);
								System.out.println("down release");
							}
							break;
						case 3:	//left
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_LEFT);
								System.out.println("left press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_LEFT);

								System.out.println("left release");
							}
							break;
						case 4:	//'Z'
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_Z);
								System.out.println("shift press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_Z);
								System.out.println("shift release");
							}
							break;
						case 5:	//'X'
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_X);
								System.out.println("x press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_X);
								System.out.println("x release");
							}
							break;
						case 6:	//' '
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_SPACE);
								System.out.println("space press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_SPACE);
								System.out.println("space release");
							}
							break;
						case 7:	//'A'
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_A);
								System.out.println("a press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_A);
								System.out.println("a release");
							}
							break;
						case 8:	//'S'
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_S);
								System.out.println("s press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_S);
								System.out.println("s release");
							}
							break;
						case 9:	//'D'
							if (digitalInputStates[i].equals(Integer.valueOf(1)))
							{
								robot.keyPress(KeyEvent.VK_D);
								System.out.println("d press");
							}
							else
							{
								robot.keyRelease(KeyEvent.VK_D);
								System.out.println("d release");
							}
							break;
						}
					}
				}
			}

		}
		else
		{
			System.out.println("No Match");
		}

//		System.out.println("Handler1 called with address " + 
//							message.getAddress());

		// Print out values
//		Object[] values = message.getArguments();
//		System.out.printf("Values: [%s", values[0]);
//		for (int i = 1; i < values.length; i++)
//			System.out.printf(", %s", values[i]);
//		System.out.println("]");

	}


	public void run ()
	{
		// Pass in whatever port number to listen on
		try
		{
			receiver = new OSCPortIn(port);
		}
		catch (java.net.SocketException se)
		{

		}

		receiver.addListener("/inputs/digital", this);
//      we don't use these here but you might want them 
//		for your x-OSC application.
//		receiver.addListener("/inputs/analog", this);
//		receiver.addListener("/inputs/digital", handler1);
//		receiver.addListener("/ping", handler1);

		System.out.println("Server is listening on port " + port + "...");
		receiver.startListening();
	}
};

/**
 Sender class for x-OSC messages
*/
class xOSCSender
{
	private InetAddress remoteIP;
	private int remotePort;
	private OSCPortOut sender;

	public xOSCSender (InetAddress remoteIP_, int port_) throws 
														 UnknownHostException, 
														 SocketException, 
														 InterruptedException, 
														 java.io.IOException
	{
		InetAddress remoteIP = remoteIP_;
		int remotePort = port_;

		System.out.println("Connecting to host " + remoteIP.toString() + 
			"on port" + remotePort + "...");
		sender = new OSCPortOut(remoteIP, remotePort);

	}

	public void digitalOut(int channel, int value) throws java.io.IOException
	{
		String address = "/output/digital/state/" + channel;
		OSCMessage message = new OSCMessage (address);
		message.addArgument((int)value);
		sender.send (message);
	}
};



