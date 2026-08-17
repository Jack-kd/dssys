package com.fl.saas;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
class Z extends ProxySelector {

    /* renamed from: d, reason: collision with root package name */
    private static final List f30109d = Arrays.asList(Proxy.NO_PROXY);

    /* renamed from: a, reason: collision with root package name */
    private final ProxySelector f30110a;

    /* renamed from: b, reason: collision with root package name */
    private final String f30111b;

    /* renamed from: c, reason: collision with root package name */
    private final int f30112c;

    public Z(ProxySelector proxySelector, String str, int i2) {
        this.f30110a = (ProxySelector) AbstractC1228w0.a(proxySelector);
        this.f30111b = (String) AbstractC1228w0.a(str);
        this.f30112c = i2;
    }

    public static void a(String str, int i2) {
        ProxySelector.setDefault(new Z(ProxySelector.getDefault(), str, i2));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f30110a.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List select(URI uri) {
        return (this.f30111b.equals(uri.getHost()) && this.f30112c == uri.getPort()) ? f30109d : this.f30110a.select(uri);
    }
}
