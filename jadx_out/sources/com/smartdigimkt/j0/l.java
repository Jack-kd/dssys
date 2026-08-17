package com.smartdigimkt.j0;

import android.util.Log;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e0 f40930a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f40931b;

    public l(p pVar, e0 e0Var) {
        this.f40931b = pVar;
        this.f40930a = e0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            p pVar = this.f40931b;
            e0 e0Var = this.f40930a;
            pVar.getClass();
            p.a(e0Var);
        } catch (g e2) {
            Log.e("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }
}
