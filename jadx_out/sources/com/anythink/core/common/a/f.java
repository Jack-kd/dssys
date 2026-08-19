package com.anythink.core.common.a;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private String f2229a;

    /* renamed from: b, reason: collision with root package name */
    private String f2230b;

    /* renamed from: c, reason: collision with root package name */
    private String f2231c;

    /* renamed from: d, reason: collision with root package name */
    private int f2232d;

    /* renamed from: e, reason: collision with root package name */
    private String f2233e;

    public final String a() {
        return TextUtils.isEmpty(this.f2229a) ? "" : this.f2229a;
    }

    public final String b() {
        return TextUtils.isEmpty(this.f2230b) ? "" : this.f2230b;
    }

    public final String c() {
        return TextUtils.isEmpty(this.f2231c) ? "" : this.f2231c;
    }

    public final int d() {
        return this.f2232d;
    }

    public final String e() {
        return TextUtils.isEmpty(this.f2233e) ? "" : this.f2233e;
    }

    public final String toString() {
        return "AdxOfferTrackingRecordBean{placementId='" + this.f2229a + "', dspId='" + this.f2230b + "', offerId='" + this.f2231c + "', tkType=" + this.f2232d + ", extraInfo='" + this.f2233e + "'}";
    }

    public final void d(String str) {
        this.f2233e = str;
    }

    public final void a(String str) {
        this.f2229a = str;
    }

    public final void b(String str) {
        this.f2230b = str;
    }

    public final void c(String str) {
        this.f2231c = str;
    }

    public final void a(int i2) {
        this.f2232d = i2;
    }
}
