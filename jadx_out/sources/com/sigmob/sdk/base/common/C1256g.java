package com.sigmob.sdk.base.common;

import android.os.Parcel;

/* renamed from: com.sigmob.sdk.base.common.g, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1256g {

    /* renamed from: a, reason: collision with root package name */
    private int f35874a;

    /* renamed from: b, reason: collision with root package name */
    private int f35875b;

    public C1256g(int i2, int i3) {
        this.f35874a = i2;
        this.f35875b = i3;
    }

    public int a() {
        return this.f35874a;
    }

    public int b() {
        return this.f35875b;
    }

    public C1256g(Parcel parcel) {
        this.f35874a = parcel.readInt();
        this.f35875b = parcel.readInt();
    }

    public void a(int i2) {
        this.f35874a = i2;
    }

    public void b(int i2) {
        this.f35875b = i2;
    }
}
