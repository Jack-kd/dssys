package com.smartdigimkt.v3;

import java.io.InputStream;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f44712a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final String f44713b;

    /* renamed from: c, reason: collision with root package name */
    public long f44714c;

    public d(String str) {
        this.f44713b = str;
    }

    public abstract void a();

    public abstract void a(c cVar);

    public abstract void a(String str);

    public abstract boolean a(InputStream inputStream);

    public final void b() {
        a(new c(this));
    }
}
