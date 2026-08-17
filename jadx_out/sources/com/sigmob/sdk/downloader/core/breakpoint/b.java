package com.sigmob.sdk.downloader.core.breakpoint;

import android.database.Cursor;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final int f37285a;

    /* renamed from: b, reason: collision with root package name */
    private final long f37286b;

    /* renamed from: c, reason: collision with root package name */
    private final long f37287c;

    /* renamed from: d, reason: collision with root package name */
    private final long f37288d;

    public b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(f.f37330h);
        this.f37285a = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
        this.f37286b = cursor.getColumnIndex(f.f37332j) >= 0 ? cursor.getInt(r0) : 0L;
        this.f37287c = cursor.getColumnIndex(f.f37333k) >= 0 ? cursor.getInt(r0) : 0L;
        this.f37288d = cursor.getColumnIndex(f.f37334l) >= 0 ? cursor.getInt(r0) : 0L;
    }

    public int a() {
        return this.f37285a;
    }

    public long b() {
        return this.f37286b;
    }

    public long c() {
        return this.f37287c;
    }

    public long d() {
        return this.f37288d;
    }

    public a e() {
        return new a(this.f37286b, this.f37287c, this.f37288d);
    }
}
