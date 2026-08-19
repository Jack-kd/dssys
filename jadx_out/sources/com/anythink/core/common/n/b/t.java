package com.anythink.core.common.n.b;

import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import org.eclipse.jetty.util.security.Constraint;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    private final ai f6924a;

    /* renamed from: b, reason: collision with root package name */
    private final i f6925b;

    /* renamed from: c, reason: collision with root package name */
    private final List<Certificate> f6926c;

    /* renamed from: d, reason: collision with root package name */
    private final List<Certificate> f6927d;

    private t(ai aiVar, i iVar, List<Certificate> list, List<Certificate> list2) {
        this.f6924a = aiVar;
        this.f6925b = iVar;
        this.f6926c = list;
        this.f6927d = list2;
    }

    public static t a(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        i iVarA = i.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if (Constraint.NONE.equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        ai aiVarA = ai.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listA = peerCertificates != null ? com.anythink.core.common.n.b.a.c.a(peerCertificates) : Collections.EMPTY_LIST;
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new t(aiVarA, iVarA, listA, localCertificates != null ? com.anythink.core.common.n.b.a.c.a(localCertificates) : Collections.EMPTY_LIST);
    }

    private Principal e() {
        if (this.f6926c.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f6926c.get(0)).getSubjectX500Principal();
    }

    private Principal f() {
        if (this.f6927d.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f6927d.get(0)).getSubjectX500Principal();
    }

    public final i b() {
        return this.f6925b;
    }

    public final List<Certificate> c() {
        return this.f6926c;
    }

    public final List<Certificate> d() {
        return this.f6927d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f6924a.equals(tVar.f6924a) && this.f6925b.equals(tVar.f6925b) && this.f6926c.equals(tVar.f6926c) && this.f6927d.equals(tVar.f6927d);
    }

    public final int hashCode() {
        return ((((((this.f6924a.hashCode() + 527) * 31) + this.f6925b.hashCode()) * 31) + this.f6926c.hashCode()) * 31) + this.f6927d.hashCode();
    }

    public final String toString() {
        return "Handshake{tlsVersion=" + this.f6924a + " cipherSuite=" + this.f6925b + " peerCertificates=" + a(this.f6926c) + " localCertificates=" + a(this.f6927d) + '}';
    }

    public static t a(ai aiVar, i iVar, List<Certificate> list, List<Certificate> list2) {
        if (aiVar == null) {
            throw new NullPointerException("tlsVersion == null");
        }
        if (iVar != null) {
            return new t(aiVar, iVar, com.anythink.core.common.n.b.a.c.a(list), com.anythink.core.common.n.b.a.c.a(list2));
        }
        throw new NullPointerException("cipherSuite == null");
    }

    public final ai a() {
        return this.f6924a;
    }

    private static List<String> a(List<Certificate> list) {
        ArrayList arrayList = new ArrayList();
        for (Certificate certificate : list) {
            if (certificate instanceof X509Certificate) {
                arrayList.add(String.valueOf(((X509Certificate) certificate).getSubjectDN()));
            } else {
                arrayList.add(certificate.getType());
            }
        }
        return arrayList;
    }
}
