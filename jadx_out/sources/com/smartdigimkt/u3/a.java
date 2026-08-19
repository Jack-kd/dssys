package com.smartdigimkt.u3;

import android.content.Context;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f44399a;

    public a(b bVar) {
        this.f44399a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar = this.f44399a;
        bVar.getClass();
        Context contextD = SDKContext.getInstance().d();
        if (contextD != null) {
            bVar.a(contextD);
        }
    }
}
