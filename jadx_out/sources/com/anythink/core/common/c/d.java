package com.anythink.core.common.c;

import android.content.Context;

/* loaded from: classes2.dex */
public abstract class d implements e {

    /* renamed from: a, reason: collision with root package name */
    static final int f2418a = 1;

    /* renamed from: b, reason: collision with root package name */
    static final int f2419b = 2;

    /* renamed from: c, reason: collision with root package name */
    static final int f2420c = 3;

    /* renamed from: d, reason: collision with root package name */
    protected String f2421d;

    /* renamed from: e, reason: collision with root package name */
    protected Context f2422e;

    /* renamed from: f, reason: collision with root package name */
    protected String f2423f;

    /* renamed from: g, reason: collision with root package name */
    protected long f2424g;

    public d(Context context, String str, String str2, long j2) {
        this.f2421d = str;
        this.f2422e = context;
        this.f2423f = str2;
        this.f2424g = j2;
    }

    private String d() {
        return this.f2423f;
    }

    private long e() {
        return this.f2424g;
    }

    @Override // com.anythink.core.common.c.e
    public final String a() {
        return this.f2421d;
    }
}
