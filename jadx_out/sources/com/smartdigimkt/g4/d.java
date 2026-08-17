package com.smartdigimkt.g4;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40380a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40381b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40382c;

    public d(f fVar, Context context, String str) {
        this.f40382c = fVar;
        this.f40380a = context;
        this.f40381b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Intent intentA = f.a(this.f40382c, this.f40380a);
            intentA.putExtra("a", 3);
            intentA.putExtra("d", this.f40381b);
            com.smartdigimkt.i3.a.a(this.f40380a).a(intentA);
        } catch (Throwable unused) {
        }
    }
}
