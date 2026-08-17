package org.fourthline.cling.transport.impl;

import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.logging.Logger;
import sun.net.www.protocol.http.Handler;
import sun.net.www.protocol.http.HttpURLConnection;

/* loaded from: classes5.dex */
public class FixedSunURLStreamHandler implements URLStreamHandlerFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f52690a = 0;
    private static final Logger log = Logger.getLogger(FixedSunURLStreamHandler.class.getName());

    public static class UpnpURLConnection extends HttpURLConnection {
        private static final String[] methods = {"GET", "POST", c.f37362a, "OPTIONS", "PUT", "DELETE", "SUBSCRIBE", "UNSUBSCRIBE", "NOTIFY"};

        public UpnpURLConnection(URL url, Handler handler) throws IOException {
            super(url, handler);
        }

        public synchronized OutputStream getOutputStream() throws IOException {
            OutputStream outputStream;
            try {
                String str = this.method;
                if (this.method.equals("PUT") || this.method.equals("POST") || this.method.equals("NOTIFY")) {
                    this.method = "PUT";
                } else {
                    this.method = "GET";
                }
                outputStream = super.getOutputStream();
                this.method = str;
            } catch (Throwable th) {
                throw th;
            }
            return outputStream;
        }

        public void setRequestMethod(String str) throws ProtocolException {
            if (this.connected) {
                throw new ProtocolException("Cannot reset method once connected");
            }
            for (String str2 : methods) {
                if (str2.equals(str)) {
                    this.method = str;
                    return;
                }
            }
            throw new ProtocolException("Invalid UPnP HTTP method: " + str);
        }

        public UpnpURLConnection(URL url, String str, int i2) throws IOException {
            super(url, str, i2);
        }
    }

    @Override // java.net.URLStreamHandlerFactory
    public URLStreamHandler createURLStreamHandler(String str) {
        log.fine("Creating new URLStreamHandler for protocol: " + str);
        if ("http".equals(str)) {
            return new Handler() { // from class: org.fourthline.cling.transport.impl.FixedSunURLStreamHandler.1
                public URLConnection openConnection(URL url) throws IOException {
                    return openConnection(url, null);
                }

                public URLConnection openConnection(URL url, Proxy proxy) throws IOException {
                    return new UpnpURLConnection(url, this);
                }
            };
        }
        return null;
    }
}
