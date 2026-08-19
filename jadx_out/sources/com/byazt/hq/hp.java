package com.byazt.hq;

import com.byazt.hq.ec;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

@com.byazt.kj.hp(hp = {0, 1, 158, 28})
/* loaded from: classes2.dex */
public final class hp {

    /* renamed from: a, reason: collision with root package name */
    public final List<gu> f20852a;

    /* renamed from: e, reason: collision with root package name */
    public final HostnameVerifier f20853e;
    public final ProxySelector eb;
    public final eb gu;
    public final ec hp;

    /* renamed from: j, reason: collision with root package name */
    public final l f20854j;
    public final SocketFactory jx;

    /* renamed from: l, reason: collision with root package name */
    public final v f20855l;

    /* renamed from: q, reason: collision with root package name */
    public final SSLSocketFactory f20856q;

    /* renamed from: s, reason: collision with root package name */
    public final Proxy f20857s;

    /* renamed from: w, reason: collision with root package name */
    public final List<b> f20858w;

    public hp(String str, int i2, v vVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, eb ebVar, l lVar, Proxy proxy, List<b> list, List<gu> list2, ProxySelector proxySelector) {
        this.hp = new ec.hp().hp(sSLSocketFactory != null ? "https" : "http").j(str).hp(i2).jx();
        if (vVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f20855l = vVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.jx = socketFactory;
        if (lVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f20854j = lVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f20858w = com.byazt.ru.jx.hp(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f20852a = com.byazt.ru.jx.hp(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.eb = proxySelector;
        this.f20857s = proxy;
        this.f20856q = sSLSocketFactory;
        this.f20853e = hostnameVerifier;
        this.gu = ebVar;
    }

    public List<gu> a() {
        return this.f20852a;
    }

    public HostnameVerifier e() {
        return this.f20853e;
    }

    public ProxySelector eb() {
        return this.eb;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hp)) {
            return false;
        }
        hp hpVar = (hp) obj;
        return this.hp.equals(hpVar.hp) && hp(hpVar);
    }

    public eb gu() {
        return this.gu;
    }

    public int hashCode() {
        int iHashCode = (((((((((((this.hp.hashCode() + 527) * 31) + this.f20855l.hashCode()) * 31) + this.f20854j.hashCode()) * 31) + this.f20858w.hashCode()) * 31) + this.f20852a.hashCode()) * 31) + this.eb.hashCode()) * 31;
        Proxy proxy = this.f20857s;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f20856q;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f20853e;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        eb ebVar = this.gu;
        return iHashCode4 + (ebVar != null ? ebVar.hashCode() : 0);
    }

    public ec hp() {
        return this.hp;
    }

    public l j() {
        return this.f20854j;
    }

    public SocketFactory jx() {
        return this.jx;
    }

    public v l() {
        return this.f20855l;
    }

    public SSLSocketFactory q() {
        return this.f20856q;
    }

    public Proxy s() {
        return this.f20857s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        sb.append(this.hp.eb());
        sb.append(":");
        sb.append(this.hp.s());
        if (this.f20857s != null) {
            sb.append(", proxy=");
            sb.append(this.f20857s);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.eb);
        }
        sb.append("}");
        return sb.toString();
    }

    public List<b> w() {
        return this.f20858w;
    }

    public boolean hp(hp hpVar) {
        return this.f20855l.equals(hpVar.f20855l) && this.f20854j.equals(hpVar.f20854j) && this.f20858w.equals(hpVar.f20858w) && this.f20852a.equals(hpVar.f20852a) && this.eb.equals(hpVar.eb) && com.byazt.ru.jx.hp(this.f20857s, hpVar.f20857s) && com.byazt.ru.jx.hp(this.f20856q, hpVar.f20856q) && com.byazt.ru.jx.hp(this.f20853e, hpVar.f20853e) && com.byazt.ru.jx.hp(this.gu, hpVar.gu) && hp().s() == hpVar.hp().s();
    }
}
