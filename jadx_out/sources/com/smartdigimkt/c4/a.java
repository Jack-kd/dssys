package com.smartdigimkt.c4;

import android.content.Context;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.g4.f;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f39681a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f39682b;

    public a(b bVar, Context context) {
        this.f39682b = bVar;
        this.f39681a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f39682b.f39683a;
        if (cVar.f39689e != 0 || cVar.f39691g) {
            return;
        }
        cVar.f39690f = true;
        f fVarA = f.a();
        Context context = this.f39681a;
        fVarA.getClass();
        e.a().c(new com.smartdigimkt.g4.e(fVarA, context, false));
        SDKContext.getInstance().f44123l = false;
    }
}
