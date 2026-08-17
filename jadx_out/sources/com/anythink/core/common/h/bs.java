package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public final class bs {

    /* renamed from: a, reason: collision with root package name */
    private String f4039a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4040b;

    /* renamed from: c, reason: collision with root package name */
    private Boolean f4041c;

    public bs(String str, boolean z2) {
        this.f4039a = str;
        this.f4040b = z2;
    }

    private synchronized boolean b() {
        return this.f4040b;
    }

    private synchronized Boolean c() {
        return this.f4041c;
    }

    public final synchronized void a(boolean z2) {
        this.f4041c = Boolean.valueOf(z2);
    }

    public final synchronized String a() {
        return this.f4039a;
    }
}
