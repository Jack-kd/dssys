package org.fourthline.cling.transport.impl.jetty;

import N1.k;
import N1.m;
import O1.a;
import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;
import org.eclipse.jetty.servlet.b;
import org.eclipse.jetty.servlet.d;
import org.fourthline.cling.transport.spi.ServletContainerAdapter;

/* loaded from: classes5.dex */
public class JettyServletContainer implements ServletContainerAdapter {
    protected m server;
    private static final Logger log = Logger.getLogger(JettyServletContainer.class.getName());
    public static final JettyServletContainer INSTANCE = new JettyServletContainer();

    private JettyServletContainer() {
        resetServer();
    }

    public static boolean isConnectionOpen(HttpServletRequest httpServletRequest) {
        return isConnectionOpen(httpServletRequest, " ".getBytes());
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized int addConnector(String str, int i2) throws IOException {
        a aVar;
        aVar = new a();
        aVar.w0(str);
        aVar.x0(i2);
        aVar.open();
        this.server.f0(aVar);
        if (this.server.isStarted()) {
            try {
                aVar.start();
            } catch (Exception e2) {
                log.severe("Couldn't start connector: " + aVar + " " + e2);
                throw new RuntimeException(e2);
            }
        }
        return aVar.getLocalPort();
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void registerServlet(String str, Servlet servlet) {
        try {
            if (this.server.d0() != null) {
                return;
            }
            log.info("Registering UPnP servlet under context path: " + str);
            b bVar = new b(0);
            if (str != null && str.length() > 0) {
                bVar.G0(str);
            }
            bVar.K0(new d(servlet), "/*");
            this.server.e0(bVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (r3.isStarted() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        if (r3.isStarting() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        r3.stop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        r5.server.s0(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        if (r0.length != 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log.info("No more connectors, stopping Jetty server");
        stopIfRunning();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log.severe("Couldn't stop connector: " + r3 + " " + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0067, code lost:
    
        throw new java.lang.RuntimeException(r6);
     */
    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void removeConnector(java.lang.String r6, int r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            N1.m r0 = r5.server     // Catch: java.lang.Throwable -> L2a
            N1.g[] r0 = r0.g0()     // Catch: java.lang.Throwable -> L2a
            int r1 = r0.length     // Catch: java.lang.Throwable -> L2a
            r2 = 0
        L9:
            if (r2 >= r1) goto L6b
            r3 = r0[r2]     // Catch: java.lang.Throwable -> L2a
            java.lang.String r4 = r3.getHost()     // Catch: java.lang.Throwable -> L2a
            boolean r4 = r4.equals(r6)     // Catch: java.lang.Throwable -> L2a
            if (r4 == 0) goto L68
            int r4 = r3.getLocalPort()     // Catch: java.lang.Throwable -> L2a
            if (r4 != r7) goto L68
            boolean r6 = r3.isStarted()     // Catch: java.lang.Throwable -> L2a
            if (r6 != 0) goto L2c
            boolean r6 = r3.isStarting()     // Catch: java.lang.Throwable -> L2a
            if (r6 == 0) goto L2f
            goto L2c
        L2a:
            r6 = move-exception
            goto L6d
        L2c:
            r3.stop()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L43
        L2f:
            N1.m r6 = r5.server     // Catch: java.lang.Throwable -> L2a
            r6.s0(r3)     // Catch: java.lang.Throwable -> L2a
            int r6 = r0.length     // Catch: java.lang.Throwable -> L2a
            r7 = 1
            if (r6 != r7) goto L6b
            java.util.logging.Logger r6 = org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log     // Catch: java.lang.Throwable -> L2a
            java.lang.String r7 = "No more connectors, stopping Jetty server"
            r6.info(r7)     // Catch: java.lang.Throwable -> L2a
            r5.stopIfRunning()     // Catch: java.lang.Throwable -> L2a
            goto L6b
        L43:
            r6 = move-exception
            java.util.logging.Logger r7 = org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log     // Catch: java.lang.Throwable -> L2a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2a
            r0.<init>()     // Catch: java.lang.Throwable -> L2a
            java.lang.String r1 = "Couldn't stop connector: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L2a
            r0.append(r3)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r1 = " "
            r0.append(r1)     // Catch: java.lang.Throwable -> L2a
            r0.append(r6)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L2a
            r7.severe(r0)     // Catch: java.lang.Throwable -> L2a
            java.lang.RuntimeException r7 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L2a
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L2a
            throw r7     // Catch: java.lang.Throwable -> L2a
        L68:
            int r2 = r2 + 1
            goto L9
        L6b:
            monitor-exit(r5)
            return
        L6d:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L2a
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.jetty.JettyServletContainer.removeConnector(java.lang.String, int):void");
    }

    public void resetServer() {
        m mVar = new m();
        this.server = mVar;
        mVar.u0(1000);
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void setExecutorService(ExecutorService executorService) {
        JettyServletContainer jettyServletContainer = INSTANCE;
        if (jettyServletContainer.server.m0() == null) {
            jettyServletContainer.server.w0(new W1.a(executorService) { // from class: org.fourthline.cling.transport.impl.jetty.JettyServletContainer.1
                @Override // org.eclipse.jetty.util.component.a
                public void doStop() throws Exception {
                }
            });
        }
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void startIfNotRunning() {
        if (!this.server.isStarted() && !this.server.isStarting()) {
            log.info("Starting Jetty server... ");
            try {
                this.server.start();
            } catch (Exception e2) {
                log.severe("Couldn't start Jetty server: " + e2);
                throw new RuntimeException(e2);
            }
        }
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void stopIfRunning() {
        if (!this.server.isStopped() && !this.server.isStopping()) {
            log.info("Stopping Jetty server...");
            try {
                try {
                    this.server.stop();
                } catch (Exception e2) {
                    log.severe("Couldn't stop Jetty server: " + e2);
                    throw new RuntimeException(e2);
                }
            } finally {
                resetServer();
            }
        }
    }

    public static boolean isConnectionOpen(HttpServletRequest httpServletRequest, byte[] bArr) throws IOException {
        Socket socket = (Socket) ((k) httpServletRequest).d().e().m();
        Logger logger = log;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine("Checking if client connection is still open: " + socket.getRemoteSocketAddress());
        }
        try {
            socket.getOutputStream().write(bArr);
            socket.getOutputStream().flush();
            return true;
        } catch (IOException unused) {
            Logger logger2 = log;
            if (!logger2.isLoggable(Level.FINE)) {
                return false;
            }
            logger2.fine("Client connection has been closed: " + socket.getRemoteSocketAddress());
            return false;
        }
    }
}
