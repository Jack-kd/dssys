package com.anythink.core.common.f;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes2.dex */
public class c<T> {

    /* renamed from: e, reason: collision with root package name */
    protected d f3235e;

    public c(d dVar) {
        this.f3235e = dVar;
    }

    public final synchronized SQLiteDatabase c() {
        return this.f3235e.a();
    }

    public final synchronized SQLiteDatabase d() {
        return this.f3235e.b();
    }
}
