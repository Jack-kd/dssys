package com.smartdigimkt.g4;

import android.content.Context;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40373a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f40374b;

    public a(f fVar, Context context) {
        this.f40374b = fVar;
        this.f40373a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            com.smartdigimkt.i3.b bVarE = SDKContext.getInstance().e();
            if (bVarE != null) {
                this.f40374b.f40391e.set(bVarE.initPlugin(this.f40373a));
                f fVar = this.f40374b;
                Context context = this.f40373a;
                fVar.getClass();
                com.smartdigimkt.b4.e.a().c(new b(fVar, context));
            }
        } catch (Throwable unused) {
        }
    }
}
