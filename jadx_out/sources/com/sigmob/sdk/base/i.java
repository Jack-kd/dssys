package com.sigmob.sdk.base;

import android.content.Context;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.utils.y;

/* loaded from: classes4.dex */
public class i {

    /* renamed from: e, reason: collision with root package name */
    private static i f36261e;

    /* renamed from: b, reason: collision with root package name */
    private int f36263b;

    /* renamed from: d, reason: collision with root package name */
    private int f36265d;

    /* renamed from: f, reason: collision with root package name */
    private boolean f36266f;

    /* renamed from: g, reason: collision with root package name */
    private int f36267g;

    /* renamed from: h, reason: collision with root package name */
    private Boolean f36268h;

    /* renamed from: a, reason: collision with root package name */
    private boolean f36262a = true;

    /* renamed from: c, reason: collision with root package name */
    private boolean f36264c = true;

    private i() {
        Context contextE = com.sigmob.sdk.b.e();
        this.f36263b = y.a(contextE, (String) null, Constants.AGE_RESTRICTED_STATUS, 0);
        this.f36265d = y.a(contextE, (String) null, Constants.USER_AGE, 0);
        this.f36267g = y.a(contextE, (String) null, Constants.GDPR_CONSENT_STATUS, 0);
        this.f36266f = y.a(contextE, (String) null, Constants.EXT_GDPR_REGION, false);
    }

    public static synchronized i a() {
        try {
            if (f36261e == null) {
                synchronized (i.class) {
                    f36261e = new i();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f36261e;
    }

    public int b() {
        return this.f36265d;
    }

    public int c() {
        return this.f36263b;
    }

    public boolean d() {
        return this.f36262a;
    }

    public boolean e() {
        return this.f36264c;
    }

    public boolean f() {
        Boolean bool = this.f36268h;
        return bool == null || bool.booleanValue() != this.f36264c;
    }

    public int g() {
        return this.f36267g;
    }

    public boolean h() {
        return this.f36266f;
    }

    public boolean i() {
        return g() == 1 || !h();
    }

    public void a(int i2, boolean z2) {
        this.f36265d = i2;
        y.b(com.sigmob.sdk.b.e(), (String) null, Constants.USER_AGE, this.f36265d);
        if (z2) {
            ad.a(i2);
        }
    }

    public void b(int i2, boolean z2) {
        this.f36263b = i2;
        y.b(com.sigmob.sdk.b.e(), (String) null, Constants.AGE_RESTRICTED_STATUS, this.f36263b);
        if (z2) {
            ad.b(i2);
        }
    }

    public void c(int i2, boolean z2) {
        this.f36267g = i2;
        y.b(com.sigmob.sdk.b.e(), (String) null, Constants.GDPR_CONSENT_STATUS, i2);
        if (z2) {
            ad.a(g(), h());
        }
    }

    public void a(Boolean bool) {
        if (bool != null) {
            y.b(com.sigmob.sdk.b.e(), (String) null, Constants.EXT_GDPR_REGION, bool.booleanValue());
            this.f36266f = bool.booleanValue();
        }
        if (i()) {
            ad.a(g(), h());
            ad.b(this.f36264c);
            ad.a(this.f36262a);
            ad.b(this.f36263b);
            ad.a(this.f36265d);
        }
    }

    public void b(boolean z2, boolean z3) {
        if (this.f36268h == null) {
            this.f36268h = Boolean.valueOf(z2);
        }
        SigmobLog.i("PrivacyManager -> setPersonalized " + z2);
        this.f36264c = z2;
        if (z3) {
            ad.b(z2);
        }
    }

    public void a(boolean z2, boolean z3) {
        SigmobLog.i("PrivacyManager -> setAdult " + z2);
        this.f36262a = z2;
        if (z3) {
            ad.a(z2);
        }
    }
}
