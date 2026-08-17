package com.smartdigimkt.n;

import android.content.Context;
import com.smartdigimkt.k3.g;
import com.smartdigimkt.m3.f;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f42146a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f42147b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f42148c;

    public a(Context context, String str, com.smartdigimkt.m3.c cVar) {
        this.f42146a = context;
        this.f42147b = str;
        this.f42148c = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVarA = g.a(this.f42146a).a(this.f42147b);
        if (fVarA != null) {
            this.f42148c.f41787H = fVarA.f41994B;
        } else {
            this.f42148c.f41787H = 0;
        }
    }
}
