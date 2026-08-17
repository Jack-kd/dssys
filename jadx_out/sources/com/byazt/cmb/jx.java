package com.byazt.cmb;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

@com.byazt.kj.hp(hp = {0, 1, 1286, 30})
/* loaded from: classes2.dex */
public abstract class jx {
    public static jx hp(X509TrustManager x509TrustManager) {
        return com.byazt.ksw.w.l().hp(x509TrustManager);
    }

    public abstract List<Certificate> hp(List<Certificate> list, String str) throws SSLPeerUnverifiedException;
}
