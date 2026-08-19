package com.ubix.ssp.ad.e.a0.c0;

import android.content.Context;
import android.text.TextUtils;
import com.ubix.ssp.ad.e.a0.c0.h.l;

/* loaded from: classes5.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private String f46142a;

    /* renamed from: b, reason: collision with root package name */
    private String f46143b;

    private a() {
    }

    public static void a(Context context, c cVar) {
        l.a(context).a(cVar);
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.c
    public void a(Exception exc) {
        f.a("Client id is " + this.f46142a);
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.c
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            a(new e("OAID is empty"));
            return;
        }
        this.f46142a = str;
        this.f46143b = str;
        f.a("Client id is OAID/AAID: " + this.f46142a);
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.c
    public boolean a() {
        return false;
    }
}
