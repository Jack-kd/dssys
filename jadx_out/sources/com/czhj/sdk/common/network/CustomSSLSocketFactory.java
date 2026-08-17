package com.czhj.sdk.common.network;

import android.net.SSLCertificateSocketFactory;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes3.dex */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a, reason: collision with root package name */
    private SSLSocketFactory f29373a;

    private CustomSSLSocketFactory() {
    }

    private static void a(SSLCertificateSocketFactory sSLCertificateSocketFactory, SSLSocket sSLSocket, String str) {
        Preconditions.NoThrow.checkNotNull(sSLCertificateSocketFactory);
        Preconditions.NoThrow.checkNotNull(sSLSocket);
        sSLCertificateSocketFactory.setHostname(sSLSocket, str);
    }

    public static CustomSSLSocketFactory getDefault(int i2) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f29373a = SSLCertificateSocketFactory.getDefault(i2, null);
        return customSSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket();
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        return sSLSocketFactory == null ? new String[0] : sSLSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        return sSLSocketFactory == null ? new String[0] : sSLSocketFactory.getSupportedCipherSuites();
    }

    private void a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i2) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(str, i2);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    private void a(Socket socket, String str) throws IOException {
        Preconditions.NoThrow.checkNotNull(socket);
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        if (socket instanceof SSLSocket) {
            try {
                SSLSocket sSLSocket = (SSLSocket) socket;
                if (sSLSocketFactory instanceof SSLCertificateSocketFactory) {
                    a((SSLCertificateSocketFactory) sSLSocketFactory, sSLSocket, str);
                    a(sSLSocket, str);
                }
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(str, i2, inetAddress, i3);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    private static void a(SSLSocket sSLSocket, String str) throws IOException {
        Preconditions.NoThrow.checkNotNull(sSLSocket);
        sSLSocket.startHandshake();
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
            throw new SSLHandshakeException("Server Name Identification failed.");
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i2) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(inetAddress, i2);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Deprecated
    public void a(SSLSocketFactory sSLSocketFactory) {
        this.f29373a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(inetAddress, i2, inetAddress2, i3);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i2, boolean z2) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f29373a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(socket, str, i2, z2);
        a(socketCreateSocket);
        return socketCreateSocket;
    }
}
