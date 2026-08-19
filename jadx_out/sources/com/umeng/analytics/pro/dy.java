package com.umeng.analytics.pro;

/* loaded from: classes5.dex */
public class dy {

    /* renamed from: a, reason: collision with root package name */
    public final String f49249a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f49250b;

    /* renamed from: c, reason: collision with root package name */
    public final short f49251c;

    public dy() {
        this("", (byte) 0, (short) 0);
    }

    public boolean a(dy dyVar) {
        return this.f49250b == dyVar.f49250b && this.f49251c == dyVar.f49251c;
    }

    public String toString() {
        return "<TField name:'" + this.f49249a + "' type:" + ((int) this.f49250b) + " field-id:" + ((int) this.f49251c) + ">";
    }

    public dy(String str, byte b3, short s2) {
        this.f49249a = str;
        this.f49250b = b3;
        this.f49251c = s2;
    }
}
