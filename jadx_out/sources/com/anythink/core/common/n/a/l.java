package com.anythink.core.common.n.a;

import java.util.Locale;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final int f6011a = 60;

    /* renamed from: b, reason: collision with root package name */
    public static final int f6012b = -1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f6013c = 1;

    /* renamed from: d, reason: collision with root package name */
    public static final int f6014d = 28;

    /* renamed from: e, reason: collision with root package name */
    public static final int f6015e = 5;

    /* renamed from: f, reason: collision with root package name */
    public static final int f6016f = 16;

    /* renamed from: g, reason: collision with root package name */
    public final String f6017g;

    /* renamed from: h, reason: collision with root package name */
    public final int f6018h;

    /* renamed from: i, reason: collision with root package name */
    public final int f6019i;

    /* renamed from: j, reason: collision with root package name */
    public final long f6020j;

    /* renamed from: k, reason: collision with root package name */
    public final int f6021k;

    /* renamed from: l, reason: collision with root package name */
    public final String f6022l;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f6023a = 0;

        /* renamed from: b, reason: collision with root package name */
        public static final int f6024b = 1;

        /* renamed from: c, reason: collision with root package name */
        public static final int f6025c = 2;

        /* renamed from: d, reason: collision with root package name */
        public static final int f6026d = 3;

        /* renamed from: e, reason: collision with root package name */
        public static final int f6027e = 4;

        /* renamed from: f, reason: collision with root package name */
        public static final int f6028f = 5;
    }

    public l(String str, int i2, int i3, long j2, int i4, String str2) {
        this.f6017g = str;
        this.f6018h = i2;
        this.f6019i = i3 <= 0 ? i3 == -1 ? -1 : 60 : i3;
        this.f6020j = j2;
        this.f6021k = i4;
        this.f6022l = str2;
    }

    private boolean c() {
        return this.f6018h == 5;
    }

    private boolean d() {
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        int i2 = this.f6019i;
        return i2 != -1 && this.f6020j + ((long) i2) <= jCurrentTimeMillis;
    }

    public final boolean a() {
        return this.f6018h == 1;
    }

    public final boolean b() {
        return this.f6018h == 28;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof l)) {
            l lVar = (l) obj;
            if (this.f6017g.equals(lVar.f6017g) && this.f6018h == lVar.f6018h && this.f6019i == lVar.f6019i && this.f6020j == lVar.f6020j) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return String.format(Locale.getDefault(), "{type:%s, value:%s, source:%s, server:%s, timestamp:%d, ttl:%d}", Integer.valueOf(this.f6018h), this.f6017g, Integer.valueOf(this.f6021k), this.f6022l, Long.valueOf(this.f6020j), Integer.valueOf(this.f6019i));
    }

    private boolean a(long j2) {
        int i2 = this.f6019i;
        return i2 != -1 && this.f6020j + ((long) i2) <= j2;
    }
}
