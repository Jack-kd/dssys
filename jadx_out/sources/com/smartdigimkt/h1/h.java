package com.smartdigimkt.h1;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40431a;

    public h(i iVar) {
        this.f40431a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f40431a.dismiss();
        } catch (Throwable unused) {
        }
    }
}
