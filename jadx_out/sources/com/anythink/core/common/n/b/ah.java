package com.anythink.core.common.n.b;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* loaded from: classes2.dex */
public final class ah {

    /* renamed from: a, reason: collision with root package name */
    final C1115a f6730a;

    /* renamed from: b, reason: collision with root package name */
    final Proxy f6731b;

    /* renamed from: c, reason: collision with root package name */
    final InetSocketAddress f6732c;

    public ah(C1115a c1115a, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c1115a == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f6730a = c1115a;
        this.f6731b = proxy;
        this.f6732c = inetSocketAddress;
    }

    public final C1115a a() {
        return this.f6730a;
    }

    public final Proxy b() {
        return this.f6731b;
    }

    public final InetSocketAddress c() {
        return this.f6732c;
    }

    public final boolean d() {
        return this.f6730a.f6039i != null && this.f6731b.type() == Proxy.Type.HTTP;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ah)) {
            return false;
        }
        ah ahVar = (ah) obj;
        return ahVar.f6730a.equals(this.f6730a) && ahVar.f6731b.equals(this.f6731b) && ahVar.f6732c.equals(this.f6732c);
    }

    public final int hashCode() {
        return ((((this.f6730a.hashCode() + 527) * 31) + this.f6731b.hashCode()) * 31) + this.f6732c.hashCode();
    }

    public final String toString() {
        return "Route{" + this.f6732c + "}";
    }
}
