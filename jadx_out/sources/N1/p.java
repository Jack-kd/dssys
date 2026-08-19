package N1;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Properties;

/* loaded from: classes5.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public boolean f386a;

    /* renamed from: b, reason: collision with root package name */
    public int f387b;

    /* renamed from: c, reason: collision with root package name */
    public String f388c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f389d;

    /* renamed from: e, reason: collision with root package name */
    public ServerSocket f390e;

    /* renamed from: f, reason: collision with root package name */
    public c f391f;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static p f392a = new p();
    }

    public class c extends Thread {
        public c() {
            setDaemon(true);
            setName("ShutdownMonitor");
        }

        public final void b() {
            try {
                if (p.this.f387b < 0) {
                    if (p.this.f386a) {
                        System.err.println("ShutdownMonitor not in use (port < 0): " + p.this.f387b);
                        return;
                    }
                    return;
                }
                try {
                    p.this.f390e = new ServerSocket(p.this.f387b, 1, InetAddress.getByName("127.0.0.1"));
                    if (p.this.f387b == 0) {
                        p pVar = p.this;
                        pVar.f387b = pVar.f390e.getLocalPort();
                        System.out.printf("STOP.PORT=%d%n", Integer.valueOf(p.this.f387b));
                    }
                    if (p.this.f388c == null) {
                        p.this.f388c = Long.toString((long) ((Math.random() * 9.223372036854776E18d) + hashCode() + System.currentTimeMillis()), 36);
                        System.out.printf("STOP.KEY=%s%n", p.this.f388c);
                    }
                    p pVar2 = p.this;
                    pVar2.o("STOP.PORT=%d", Integer.valueOf(pVar2.f387b));
                    p pVar3 = p.this;
                    pVar3.o("STOP.KEY=%s", pVar3.f388c);
                    p pVar4 = p.this;
                    pVar4.o("%s", pVar4.f390e);
                } catch (Exception e2) {
                    p.this.p(e2);
                    System.err.println("Error binding monitor port " + p.this.f387b + ": " + e2.toString());
                    p.this.f390e = null;
                    p pVar5 = p.this;
                    pVar5.o("STOP.PORT=%d", Integer.valueOf(pVar5.f387b));
                    p pVar6 = p.this;
                    pVar6.o("STOP.KEY=%s", pVar6.f388c);
                    p pVar7 = p.this;
                    pVar7.o("%s", pVar7.f390e);
                }
            } catch (Throwable th) {
                p pVar8 = p.this;
                pVar8.o("STOP.PORT=%d", Integer.valueOf(pVar8.f387b));
                p pVar9 = p.this;
                pVar9.o("STOP.KEY=%s", pVar9.f388c);
                p pVar10 = p.this;
                pVar10.o("%s", pVar10.f390e);
                throw th;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            Socket socketAccept;
            Throwable th;
            Exception e2;
            LineNumberReader lineNumberReader;
            if (p.this.f390e == null) {
                return;
            }
            while (p.this.f390e != null) {
                Socket socket = null;
                try {
                    socketAccept = p.this.f390e.accept();
                    try {
                        try {
                            lineNumberReader = new LineNumberReader(new InputStreamReader(socketAccept.getInputStream()));
                        } catch (Exception e3) {
                            e2 = e3;
                            p.this.p(e2);
                            System.err.println(e2.toString());
                            p.this.n(socketAccept);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        p.this.n(socketAccept);
                        throw th;
                    }
                } catch (Exception e4) {
                    socketAccept = null;
                    e2 = e4;
                } catch (Throwable th3) {
                    socketAccept = null;
                    th = th3;
                }
                if (p.this.f388c.equals(lineNumberReader.readLine())) {
                    OutputStream outputStream = socketAccept.getOutputStream();
                    String line = lineNumberReader.readLine();
                    p.this.o("command=%s", line);
                    if ("stop".equals(line)) {
                        p.this.o("Issuing graceful shutdown..", new Object[0]);
                        W1.c.b().run();
                        p.this.o("Informing client that we are stopped.", new Object[0]);
                        outputStream.write("Stopped\r\n".getBytes("UTF-8"));
                        outputStream.flush();
                        p.this.o("Shutting down monitor", new Object[0]);
                        p.this.n(socketAccept);
                        p pVar = p.this;
                        pVar.m(pVar.f390e);
                        p.this.f390e = null;
                        if (p.this.f389d) {
                            p.this.o("Killing JVM", new Object[0]);
                            System.exit(0);
                        }
                    } else {
                        if ("status".equals(line)) {
                            outputStream.write("OK\r\n".getBytes("UTF-8"));
                            outputStream.flush();
                        }
                        socket = socketAccept;
                    }
                    p.this.n(socket);
                } else {
                    System.err.println("Ignoring command with incorrect key");
                    p.this.n(socketAccept);
                }
            }
        }

        @Override // java.lang.Thread
        public void start() {
            if (isAlive()) {
                System.err.printf("ShutdownMonitorThread already started", new Object[0]);
                return;
            }
            b();
            if (p.this.f390e == null) {
                return;
            }
            if (p.this.f386a) {
                System.err.println("Starting ShutdownMonitorThread");
            }
            super.start();
        }
    }

    public static p q() {
        return b.f392a;
    }

    public final void m(ServerSocket serverSocket) throws IOException {
        if (serverSocket == null) {
            return;
        }
        try {
            serverSocket.close();
        } catch (IOException unused) {
        }
    }

    public final void n(Socket socket) throws IOException {
        if (socket == null) {
            return;
        }
        try {
            socket.close();
        } catch (IOException unused) {
        }
    }

    public final void o(String str, Object... objArr) {
        if (this.f386a) {
            System.err.printf("[ShutdownMonitor] " + str + "%n", objArr);
        }
    }

    public final void p(Throwable th) {
        if (this.f386a) {
            th.printStackTrace(System.err);
        }
    }

    public void r() {
        synchronized (this) {
            try {
                c cVar = this.f391f;
                if (cVar != null && cVar.isAlive()) {
                    System.err.printf("ShutdownMonitorThread already started", new Object[0]);
                    return;
                }
                c cVar2 = new c();
                this.f391f = cVar2;
                cVar2.start();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        return String.format("%s[port=%d]", getClass().getName(), Integer.valueOf(this.f387b));
    }

    public p() {
        Properties properties = System.getProperties();
        this.f386a = properties.containsKey("DEBUG");
        this.f387b = Integer.parseInt(properties.getProperty("STOP.PORT", "-1"));
        this.f388c = properties.getProperty("STOP.KEY", null);
        this.f389d = true;
    }
}
