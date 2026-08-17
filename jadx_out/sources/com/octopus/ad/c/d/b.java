package com.octopus.ad.c.d;

import android.content.Context;
import com.octopus.ad.c.d.c;

/* loaded from: classes4.dex */
public class b implements com.octopus.ad.c.c {

    /* renamed from: a, reason: collision with root package name */
    private c f33793a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f33794b = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f33795c = false;

    @Override // com.octopus.ad.c.c
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        if (!this.f33794b) {
            c cVar = new c();
            this.f33793a = cVar;
            this.f33795c = cVar.a(context, (c.a<String>) null) == 1;
            this.f33794b = true;
        }
        if (this.f33795c && this.f33793a.b()) {
            return this.f33793a.a();
        }
        return null;
    }
}
