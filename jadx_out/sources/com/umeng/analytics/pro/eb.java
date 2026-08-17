package com.umeng.analytics.pro;

/* loaded from: classes5.dex */
public final class eb {

    /* renamed from: a, reason: collision with root package name */
    public final String f49263a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f49264b;

    /* renamed from: c, reason: collision with root package name */
    public final int f49265c;

    public eb() {
        this("", (byte) 0, 0);
    }

    public boolean a(eb ebVar) {
        return this.f49263a.equals(ebVar.f49263a) && this.f49264b == ebVar.f49264b && this.f49265c == ebVar.f49265c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof eb) {
            return a((eb) obj);
        }
        return false;
    }

    public String toString() {
        return "<TMessage name:'" + this.f49263a + "' type: " + ((int) this.f49264b) + " seqid:" + this.f49265c + ">";
    }

    public eb(String str, byte b3, int i2) {
        this.f49263a = str;
        this.f49264b = b3;
        this.f49265c = i2;
    }
}
