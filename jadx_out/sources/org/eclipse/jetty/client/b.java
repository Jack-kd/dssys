package org.eclipse.jetty.client;

import java.net.InetSocketAddress;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f52075a;

    /* renamed from: b, reason: collision with root package name */
    public final int f52076b;

    public b(String str, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("Host is null");
        }
        this.f52075a = str.trim();
        this.f52076b = i2;
    }

    public String a() {
        return this.f52075a;
    }

    public int b() {
        return this.f52076b;
    }

    public InetSocketAddress c() {
        return new InetSocketAddress(a(), b());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f52075a.equals(bVar.f52075a) && this.f52076b == bVar.f52076b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f52075a.hashCode() * 31) + this.f52076b;
    }

    public String toString() {
        return this.f52075a + ":" + this.f52076b;
    }
}
