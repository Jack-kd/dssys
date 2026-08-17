package com.octopus.ad.internal.d;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
class k extends ProxySelector {

    /* renamed from: a, reason: collision with root package name */
    private static final List<Proxy> f34699a = Arrays.asList(Proxy.NO_PROXY);

    /* renamed from: b, reason: collision with root package name */
    private final ProxySelector f34700b;

    /* renamed from: c, reason: collision with root package name */
    private final String f34701c;

    /* renamed from: d, reason: collision with root package name */
    private final int f34702d;

    public k(ProxySelector proxySelector, String str, int i2) {
        this.f34700b = (ProxySelector) n.a(proxySelector);
        this.f34701c = (String) n.a(str);
        this.f34702d = i2;
    }

    public static void a(String str, int i2) {
        ProxySelector.setDefault(new k(ProxySelector.getDefault(), str, i2));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f34700b.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        try {
            return (this.f34701c.equals(uri.getHost()) && this.f34702d == uri.getPort()) ? f34699a : this.f34700b.select(uri);
        } catch (Exception unused) {
            return f34699a;
        }
    }
}
