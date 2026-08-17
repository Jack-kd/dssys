package com.ubix.ssp.ad.e.b0.h;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes5.dex */
class i extends ProxySelector {

    /* renamed from: a, reason: collision with root package name */
    private static final List<Proxy> f46728a = Arrays.asList(Proxy.NO_PROXY);

    /* renamed from: b, reason: collision with root package name */
    private final ProxySelector f46729b;

    /* renamed from: c, reason: collision with root package name */
    private final String f46730c;

    /* renamed from: d, reason: collision with root package name */
    private final int f46731d;

    public i(ProxySelector proxySelector, String str, int i2) {
        this.f46729b = (ProxySelector) l.a(proxySelector);
        this.f46730c = (String) l.a(str);
        this.f46731d = i2;
    }

    public static void a(String str, int i2) {
        ProxySelector.setDefault(new i(ProxySelector.getDefault(), str, i2));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f46729b.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        return (this.f46730c.equals(uri.getHost()) && this.f46731d == uri.getPort()) ? f46728a : this.f46729b.select(uri);
    }
}
