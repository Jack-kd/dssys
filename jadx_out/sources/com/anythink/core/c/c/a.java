package com.anythink.core.c.c;

import android.text.TextUtils;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.common.h.by;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    by f1987a;

    /* renamed from: b, reason: collision with root package name */
    String f1988b;

    /* renamed from: c, reason: collision with root package name */
    JSONObject f1989c;

    /* renamed from: d, reason: collision with root package name */
    boolean f1990d;

    /* renamed from: e, reason: collision with root package name */
    long f1991e;

    /* renamed from: f, reason: collision with root package name */
    long f1992f;

    /* renamed from: g, reason: collision with root package name */
    long f1993g;

    public a(by byVar, JSONObject jSONObject) {
        this.f1987a = byVar;
        this.f1989c = jSONObject;
    }

    public final void a(long j2, long j3, long j4) {
        this.f1991e = j2;
        this.f1992f = j3;
        this.f1993g = j4;
    }

    public final by b() {
        return this.f1987a;
    }

    public final boolean c() {
        return this.f1990d;
    }

    public final String d() {
        return this.f1988b;
    }

    public final long e() {
        return this.f1992f;
    }

    public final long f() {
        return this.f1993g;
    }

    public final boolean g() {
        return TextUtils.equals(this.f1988b, ATBidRequestInfo.NO_ADAPTER_ERROR_TYPE) || TextUtils.equals(this.f1988b, ATBidRequestInfo.NO_SUPPORT_BIDDING_TYPE);
    }

    public final String toString() {
        return "";
    }

    public a(by byVar, String str) {
        this.f1987a = byVar;
        this.f1988b = str;
    }

    public final JSONObject a() {
        return this.f1989c;
    }

    public final void a(boolean z2) {
        this.f1990d = z2;
    }
}
