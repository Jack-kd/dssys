package com.smartdigimkt.g4;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40375a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f40376b;

    public b(f fVar, Context context) {
        this.f40376b = fVar;
        this.f40375a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            f fVar = this.f40376b;
            String str = fVar.f40387a;
            fVar.f40391e.get();
            this.f40376b.f40392f.get();
            this.f40376b.f40393g.get();
            if (this.f40376b.f40391e.get() && this.f40376b.f40393g.get() && this.f40376b.f40392f.get()) {
                Intent intentA = f.a(this.f40376b, this.f40375a);
                intentA.putExtra("a", 1);
                com.smartdigimkt.i3.a.a(this.f40375a).a(intentA);
            }
        } catch (Throwable unused) {
        }
    }
}
