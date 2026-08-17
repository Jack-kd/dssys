package org.fourthline.cling.transport.impl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.AsyncContext;
import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamServer;

/* loaded from: classes5.dex */
public class AsyncServletStreamServerImpl implements StreamServer<AsyncServletStreamServerConfigurationImpl> {
    private static final Logger log = Logger.getLogger(StreamServer.class.getName());
    protected final AsyncServletStreamServerConfigurationImpl configuration;
    protected String hostAddress;
    protected int localPort;
    private int mCounter = 0;

    public class AsyncServletConnection implements Connection {
        protected HttpServletRequest request;

        public AsyncServletConnection(HttpServletRequest httpServletRequest) {
            this.request = httpServletRequest;
        }

        @Override // org.fourthline.cling.model.message.Connection
        public InetAddress getLocalAddress() {
            try {
                return InetAddress.getByName(getRequest().getLocalAddr());
            } catch (UnknownHostException e2) {
                throw new RuntimeException(e2);
            }
        }

        @Override // org.fourthline.cling.model.message.Connection
        public InetAddress getRemoteAddress() {
            try {
                return InetAddress.getByName(getRequest().getRemoteAddr());
            } catch (UnknownHostException e2) {
                throw new RuntimeException(e2);
            }
        }

        public HttpServletRequest getRequest() {
            return this.request;
        }

        @Override // org.fourthline.cling.model.message.Connection
        public boolean isOpen() {
            return AsyncServletStreamServerImpl.this.isConnectionOpen(getRequest());
        }
    }

    public AsyncServletStreamServerImpl(AsyncServletStreamServerConfigurationImpl asyncServletStreamServerConfigurationImpl) {
        this.configuration = asyncServletStreamServerConfigurationImpl;
    }

    public static /* synthetic */ int access$008(AsyncServletStreamServerImpl asyncServletStreamServerImpl) {
        int i2 = asyncServletStreamServerImpl.mCounter;
        asyncServletStreamServerImpl.mCounter = i2 + 1;
        return i2;
    }

    public Servlet createServlet(final Router router) {
        return new HttpServlet() { // from class: org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl.1
            public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                final int iAccess$008 = AsyncServletStreamServerImpl.access$008(AsyncServletStreamServerImpl.this);
                if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                    AsyncServletStreamServerImpl.log.fine(String.format("HttpServlet.service(): id: %3d, request URI: %s", Integer.valueOf(iAccess$008), httpServletRequest.getRequestURI()));
                }
                AsyncContext asyncContextStartAsync = httpServletRequest.startAsync();
                asyncContextStartAsync.setTimeout(AsyncServletStreamServerImpl.this.getConfiguration().getAsyncTimeoutSeconds() * 1000);
                asyncContextStartAsync.addListener(new AsyncListener() { // from class: org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl.1.1
                    public void onComplete(AsyncEvent asyncEvent) throws IOException {
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onComplete(): id: %3d, duration: %,4d, response: %s", Integer.valueOf(iAccess$008), Long.valueOf(jCurrentTimeMillis2), asyncEvent.getSuppliedResponse()));
                        }
                    }

                    public void onError(AsyncEvent asyncEvent) throws IOException {
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onError(): id: %3d, duration: %,4d, response: %s", Integer.valueOf(iAccess$008), Long.valueOf(jCurrentTimeMillis2), asyncEvent.getSuppliedResponse()));
                        }
                    }

                    public void onStartAsync(AsyncEvent asyncEvent) throws IOException {
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onStartAsync(): id: %3d, request: %s", Integer.valueOf(iAccess$008), asyncEvent.getSuppliedRequest()));
                        }
                    }

                    public void onTimeout(AsyncEvent asyncEvent) throws IOException {
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onTimeout(): id: %3d, duration: %,4d, request: %s", Integer.valueOf(iAccess$008), Long.valueOf(jCurrentTimeMillis2), asyncEvent.getSuppliedRequest()));
                        }
                    }
                });
                router.received(new AsyncServletUpnpStream(router.getProtocolFactory(), asyncContextStartAsync, httpServletRequest) { // from class: org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl.1.2
                    @Override // org.fourthline.cling.transport.impl.AsyncServletUpnpStream
                    public Connection createConnection() {
                        return AsyncServletStreamServerImpl.this.new AsyncServletConnection(getRequest());
                    }
                });
            }
        };
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public synchronized int getPort() {
        return this.localPort;
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public synchronized void init(InetAddress inetAddress, Router router) throws InitializationException {
        try {
            try {
                Logger logger = log;
                Level level = Level.FINE;
                if (logger.isLoggable(level)) {
                    logger.fine("Setting executor service on servlet container adapter");
                }
                getConfiguration().getServletContainerAdapter().setExecutorService(router.getConfiguration().getStreamServerExecutorService());
                if (logger.isLoggable(level)) {
                    logger.fine("Adding connector: " + inetAddress + ":" + getConfiguration().getListenPort());
                }
                this.hostAddress = inetAddress.getHostAddress();
                this.localPort = getConfiguration().getServletContainerAdapter().addConnector(this.hostAddress, getConfiguration().getListenPort());
                getConfiguration().getServletContainerAdapter().registerServlet(router.getConfiguration().getNamespace().getBasePath().getPath(), createServlet(router));
            } catch (Exception e2) {
                throw new InitializationException("Could not initialize " + getClass().getSimpleName() + ": " + e2.toString(), e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean isConnectionOpen(HttpServletRequest httpServletRequest) {
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        getConfiguration().getServletContainerAdapter().startIfNotRunning();
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public synchronized void stop() {
        getConfiguration().getServletContainerAdapter().removeConnector(this.hostAddress, this.localPort);
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public AsyncServletStreamServerConfigurationImpl getConfiguration() {
        return this.configuration;
    }
}
