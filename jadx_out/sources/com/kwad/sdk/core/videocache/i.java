package com.kwad.sdk.core.videocache;

import com.kwad.sdk.utils.az;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
final class i extends ProxySelector {
    private static final List<Proxy> bao = Arrays.asList(Proxy.NO_PROXY);
    private final ProxySelector bap;
    private final String baq;
    private final int bar;

    private i(ProxySelector proxySelector, String str, int i2) {
        this.bap = (ProxySelector) az.checkNotNull(proxySelector);
        this.baq = az.hY(str);
        this.bar = i2;
    }

    public static void install(String str, int i2) {
        ProxySelector.setDefault(new i(ProxySelector.getDefault(), str, i2));
    }

    @Override // java.net.ProxySelector
    public final void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.bap.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public final List<Proxy> select(URI uri) {
        return (this.baq.equals(uri.getHost()) && this.bar == uri.getPort()) ? bao : this.bap.select(uri);
    }
}
