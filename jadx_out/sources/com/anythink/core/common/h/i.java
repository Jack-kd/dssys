package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private String f4279a;

    /* renamed from: b, reason: collision with root package name */
    private String f4280b;

    /* renamed from: c, reason: collision with root package name */
    private int f4281c;

    public i(String str, String str2, int i2) {
        this.f4279a = str;
        this.f4280b = str2;
        this.f4281c = i2;
    }

    private String b() {
        return this.f4279a;
    }

    private int c() {
        return this.f4281c;
    }

    public final String a() {
        return this.f4280b;
    }

    public final boolean a(by byVar) {
        if (byVar != null) {
            int i2 = byVar.f4101a;
            return i2 != 2 ? i2 == 3 && byVar.n() == this.f4281c : byVar.G().equals(this.f4279a);
        }
        return false;
    }
}
