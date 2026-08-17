package com.smartdigimkt.f;

import android.content.Context;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40120a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f40121b;

    public c(h hVar, Context context) {
        this.f40121b = hVar;
        this.f40120a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            u.a().a(new b(this));
            u.a().a(this.f40120a);
        } catch (Throwable unused) {
        }
    }
}
