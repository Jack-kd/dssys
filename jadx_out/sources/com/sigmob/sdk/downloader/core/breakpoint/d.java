package com.sigmob.sdk.downloader.core.breakpoint;

import android.database.Cursor;
import java.io.File;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final int f37298a;

    /* renamed from: b, reason: collision with root package name */
    private final String f37299b;

    /* renamed from: c, reason: collision with root package name */
    private final String f37300c;

    /* renamed from: d, reason: collision with root package name */
    private final String f37301d;

    /* renamed from: e, reason: collision with root package name */
    private final String f37302e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f37303f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f37304g;

    public d(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        boolean z2 = false;
        this.f37298a = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
        int columnIndex2 = cursor.getColumnIndex("url");
        this.f37299b = columnIndex2 >= 0 ? cursor.getString(columnIndex2) : "";
        int columnIndex3 = cursor.getColumnIndex(f.f37325c);
        this.f37300c = columnIndex3 >= 0 ? cursor.getString(columnIndex3) : "";
        int columnIndex4 = cursor.getColumnIndex(f.f37326d);
        this.f37301d = columnIndex4 >= 0 ? cursor.getString(columnIndex4) : "";
        int columnIndex5 = cursor.getColumnIndex(f.f37327e);
        this.f37302e = columnIndex5 >= 0 ? cursor.getString(columnIndex5) : "";
        int columnIndex6 = cursor.getColumnIndex(f.f37328f);
        this.f37303f = columnIndex6 >= 0 && cursor.getInt(columnIndex6) == 1;
        int columnIndex7 = cursor.getColumnIndex("chunked");
        if (columnIndex7 >= 0 && cursor.getInt(columnIndex7) == 1) {
            z2 = true;
        }
        this.f37304g = z2;
    }

    public int a() {
        return this.f37298a;
    }

    public String b() {
        return this.f37299b;
    }

    public String c() {
        return this.f37300c;
    }

    public String d() {
        return this.f37301d;
    }

    public String e() {
        return this.f37302e;
    }

    public boolean f() {
        return this.f37303f;
    }

    public boolean g() {
        return this.f37304g;
    }

    public c h() {
        c cVar = new c(this.f37298a, this.f37299b, new File(this.f37301d), this.f37302e, this.f37303f);
        cVar.a(this.f37300c);
        cVar.a(this.f37304g);
        return cVar;
    }
}
