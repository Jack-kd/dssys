package com.sigmob.sdk.videocache;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
class j extends ProxySelector {

    /* renamed from: a, reason: collision with root package name */
    private static final List<Proxy> f38925a = Arrays.asList(Proxy.NO_PROXY);

    /* renamed from: b, reason: collision with root package name */
    private final ProxySelector f38926b;

    /* renamed from: c, reason: collision with root package name */
    private final String f38927c;

    /* renamed from: d, reason: collision with root package name */
    private final int f38928d;

    public j(ProxySelector proxySelector, String str, int i2) {
        this.f38926b = (ProxySelector) n.a(proxySelector);
        this.f38927c = (String) n.a(str);
        this.f38928d = i2;
    }

    public static void a(String str, int i2) {
        ProxySelector.setDefault(new j(ProxySelector.getDefault(), str, i2));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f38926b.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        return (this.f38927c.equals(uri.getHost()) && this.f38928d == uri.getPort()) ? f38925a : this.f38926b.select(uri);
    }
}
