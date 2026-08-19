package com.smartdigimkt.g4;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40377a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40378b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40379c;

    public c(f fVar, Context context, String str) {
        this.f40379c = fVar;
        this.f40377a = context;
        this.f40378b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Intent intentA = f.a(this.f40379c, this.f40377a);
            intentA.putExtra("a", 2);
            intentA.putExtra("d", this.f40378b);
            com.smartdigimkt.i3.a.a(this.f40377a).a(intentA);
        } catch (Throwable unused) {
        }
    }
}
