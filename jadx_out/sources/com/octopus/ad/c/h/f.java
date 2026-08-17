package com.octopus.ad.c.h;

import android.content.Context;

/* loaded from: classes4.dex */
public class f implements com.octopus.ad.c.c {

    /* renamed from: a, reason: collision with root package name */
    private boolean f33842a = false;

    @Override // com.octopus.ad.c.c
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        if (!this.f33842a) {
            e.a(context);
            this.f33842a = true;
        }
        if (e.a()) {
            return e.b(context);
        }
        return null;
    }
}
