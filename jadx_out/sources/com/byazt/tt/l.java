package com.byazt.tt;

import com.byazt.hq.gu;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

@com.byazt.kj.hp(hp = {0, 1, 1478, 34})
/* loaded from: classes3.dex */
public final class l {
    public final List<gu> hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25995j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public int f25996l = 0;

    public l(List<gu> list) {
        this.hp = list;
    }

    private boolean l(SSLSocket sSLSocket) {
        for (int i2 = this.f25996l; i2 < this.hp.size(); i2++) {
            if (this.hp.get(i2).hp(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public gu hp(SSLSocket sSLSocket) throws IOException {
        gu guVar;
        int i2 = this.f25996l;
        int size = this.hp.size();
        while (true) {
            if (i2 >= size) {
                guVar = null;
                break;
            }
            guVar = this.hp.get(i2);
            if (guVar.hp(sSLSocket)) {
                this.f25996l = i2 + 1;
                break;
            }
            i2++;
        }
        if (guVar != null) {
            this.jx = l(sSLSocket);
            com.byazt.ru.hp.hp.hp(guVar, sSLSocket, this.f25995j);
            return guVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f25995j + ", modes=" + this.hp + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean hp(IOException iOException) {
        this.f25995j = true;
        if (!this.jx || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z2 = iOException instanceof SSLHandshakeException;
        if ((z2 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z2 || (iOException instanceof SSLProtocolException);
    }
}
