package com.octopus.ad.c.e;

import android.text.TextUtils;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    String f33816a;

    /* renamed from: b, reason: collision with root package name */
    Boolean f33817b;

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return TextUtils.equals(this.f33816a, str);
    }

    public void b(String str) {
        this.f33816a = str;
    }

    public boolean b() {
        Boolean bool = this.f33817b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public boolean a() {
        return this.f33817b != null;
    }

    public void a(boolean z2) {
        this.f33817b = Boolean.valueOf(z2);
    }
}
