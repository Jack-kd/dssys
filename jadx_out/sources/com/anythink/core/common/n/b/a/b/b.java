package com.anythink.core.common.n.b.a.b;

import com.anythink.core.common.n.b.l;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
final class b {

    /* renamed from: a, reason: collision with root package name */
    private final List<l> f6123a;

    /* renamed from: b, reason: collision with root package name */
    private int f6124b = 0;

    /* renamed from: c, reason: collision with root package name */
    private boolean f6125c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f6126d;

    public b(List<l> list) {
        this.f6123a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i2 = this.f6124b; i2 < this.f6123a.size(); i2++) {
            if (this.f6123a.get(i2).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public final l a(SSLSocket sSLSocket) throws UnknownServiceException {
        l lVar;
        int i2 = this.f6124b;
        int size = this.f6123a.size();
        while (true) {
            if (i2 >= size) {
                lVar = null;
                break;
            }
            lVar = this.f6123a.get(i2);
            if (lVar.a(sSLSocket)) {
                this.f6124b = i2 + 1;
                break;
            }
            i2++;
        }
        if (lVar != null) {
            this.f6125c = b(sSLSocket);
            com.anythink.core.common.n.b.a.a.f6042a.a(lVar, sSLSocket, this.f6126d);
            return lVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f6126d + ", modes=" + this.f6123a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public final boolean a(IOException iOException) {
        this.f6126d = true;
        if (!this.f6125c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return iOException instanceof SSLException;
    }
}
