package com.smartdigimkt.w4;

import java.util.Random;

/* loaded from: classes5.dex */
public final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f44996a;

    public v(w wVar) {
        this.f44996a = wVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        z zVar = this.f44996a.f44997a;
        Random random = z.f45003P;
        synchronized (zVar) {
            zVar.c();
            zVar.m();
        }
    }
}
