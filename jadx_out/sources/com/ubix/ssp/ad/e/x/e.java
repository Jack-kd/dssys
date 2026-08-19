package com.ubix.ssp.ad.e.x;

import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* loaded from: classes5.dex */
public class e implements HostnameVerifier {

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f47416a = new ArrayList();

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        return this.f47416a.isEmpty() || !this.f47416a.contains(str);
    }
}
