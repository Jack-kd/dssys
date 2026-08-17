package com.smartdigimkt.k3;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final d f41366a;

    public b(d dVar) {
        this.f41366a = dVar;
    }

    public final synchronized SQLiteDatabase a() {
        return this.f41366a.a();
    }

    public final synchronized SQLiteDatabase b() {
        return this.f41366a.b();
    }
}
