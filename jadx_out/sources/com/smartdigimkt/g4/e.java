package com.smartdigimkt.g4;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40383a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f40384b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40385c;

    public e(f fVar, Context context, boolean z2) {
        this.f40385c = fVar;
        this.f40383a = context;
        this.f40384b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f40385c.f40391e.get()) {
            try {
                Intent intentA = f.a(this.f40385c, this.f40383a);
                intentA.putExtra("a", 4);
                intentA.putExtra("d", this.f40384b ? "1" : "2");
                com.smartdigimkt.i3.a.a(this.f40383a).a(intentA);
            } catch (Throwable unused) {
            }
        }
    }
}
