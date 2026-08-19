package com.byazt.hq;

import java.net.InetSocketAddress;
import java.net.Proxy;

@com.byazt.kj.hp(hp = {0, 1, 158, 546})
/* loaded from: classes2.dex */
public final class nu {
    public final hp hp;
    public final InetSocketAddress jx;

    /* renamed from: l, reason: collision with root package name */
    public final Proxy f20922l;

    public nu(hp hpVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (hpVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.hp = hpVar;
        this.f20922l = proxy;
        this.jx = inetSocketAddress;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof nu)) {
            return false;
        }
        nu nuVar = (nu) obj;
        return nuVar.hp.equals(this.hp) && nuVar.f20922l.equals(this.f20922l) && nuVar.jx.equals(this.jx);
    }

    public int hashCode() {
        return ((((this.hp.hashCode() + 527) * 31) + this.f20922l.hashCode()) * 31) + this.jx.hashCode();
    }

    public hp hp() {
        return this.hp;
    }

    public boolean j() {
        return this.hp.f20856q != null && this.f20922l.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress jx() {
        return this.jx;
    }

    public Proxy l() {
        return this.f20922l;
    }

    public String toString() {
        return "Route{" + this.jx + "}";
    }
}
