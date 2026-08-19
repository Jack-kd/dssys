package com.anythink.core.common.n.b;

import com.anythink.core.common.n.b.v;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: com.anythink.core.common.n.b.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1115a {

    /* renamed from: a, reason: collision with root package name */
    final v f6031a;

    /* renamed from: b, reason: collision with root package name */
    final q f6032b;

    /* renamed from: c, reason: collision with root package name */
    final SocketFactory f6033c;

    /* renamed from: d, reason: collision with root package name */
    final InterfaceC1116b f6034d;

    /* renamed from: e, reason: collision with root package name */
    final List<ab> f6035e;

    /* renamed from: f, reason: collision with root package name */
    final List<l> f6036f;

    /* renamed from: g, reason: collision with root package name */
    final ProxySelector f6037g;

    /* renamed from: h, reason: collision with root package name */
    final Proxy f6038h;

    /* renamed from: i, reason: collision with root package name */
    final SSLSocketFactory f6039i;

    /* renamed from: j, reason: collision with root package name */
    final HostnameVerifier f6040j;

    /* renamed from: k, reason: collision with root package name */
    final g f6041k;

    public C1115a(String str, int i2, q qVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, g gVar, InterfaceC1116b interfaceC1116b, Proxy proxy, List<ab> list, List<l> list2, ProxySelector proxySelector) {
        v.a aVar = new v.a();
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            aVar.f6952a = "http";
        } else {
            if (!str2.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(str2));
            }
            aVar.f6952a = "https";
        }
        v.a aVarA = aVar.a(str);
        if (i2 <= 0 || i2 > 65535) {
            throw new IllegalArgumentException("unexpected port: ".concat(String.valueOf(i2)));
        }
        aVarA.f6956e = i2;
        this.f6031a = aVarA.b();
        if (qVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f6032b = qVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f6033c = socketFactory;
        if (interfaceC1116b == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f6034d = interfaceC1116b;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f6035e = com.anythink.core.common.n.b.a.c.a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f6036f = com.anythink.core.common.n.b.a.c.a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f6037g = proxySelector;
        this.f6038h = proxy;
        this.f6039i = sSLSocketFactory;
        this.f6040j = hostnameVerifier;
        this.f6041k = gVar;
    }

    public final v a() {
        return this.f6031a;
    }

    public final q b() {
        return this.f6032b;
    }

    public final SocketFactory c() {
        return this.f6033c;
    }

    public final InterfaceC1116b d() {
        return this.f6034d;
    }

    public final List<ab> e() {
        return this.f6035e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1115a)) {
            return false;
        }
        C1115a c1115a = (C1115a) obj;
        return this.f6031a.equals(c1115a.f6031a) && a(c1115a);
    }

    public final List<l> f() {
        return this.f6036f;
    }

    public final ProxySelector g() {
        return this.f6037g;
    }

    public final Proxy h() {
        return this.f6038h;
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f6031a.hashCode() + 527) * 31) + this.f6032b.hashCode()) * 31) + this.f6034d.hashCode()) * 31) + this.f6035e.hashCode()) * 31) + this.f6036f.hashCode()) * 31) + this.f6037g.hashCode()) * 31) + Objects.hashCode(this.f6038h)) * 31) + Objects.hashCode(this.f6039i)) * 31) + Objects.hashCode(this.f6040j)) * 31) + Objects.hashCode(this.f6041k);
    }

    public final SSLSocketFactory i() {
        return this.f6039i;
    }

    public final HostnameVerifier j() {
        return this.f6040j;
    }

    public final g k() {
        return this.f6041k;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        sb.append(this.f6031a.f6943m);
        sb.append(":");
        sb.append(this.f6031a.f6944n);
        if (this.f6038h != null) {
            sb.append(", proxy=");
            sb.append(this.f6038h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f6037g);
        }
        sb.append("}");
        return sb.toString();
    }

    public final boolean a(C1115a c1115a) {
        return this.f6032b.equals(c1115a.f6032b) && this.f6034d.equals(c1115a.f6034d) && this.f6035e.equals(c1115a.f6035e) && this.f6036f.equals(c1115a.f6036f) && this.f6037g.equals(c1115a.f6037g) && Objects.equals(this.f6038h, c1115a.f6038h) && Objects.equals(this.f6039i, c1115a.f6039i) && Objects.equals(this.f6040j, c1115a.f6040j) && Objects.equals(this.f6041k, c1115a.f6041k) && this.f6031a.f6944n == c1115a.f6031a.f6944n;
    }
}
