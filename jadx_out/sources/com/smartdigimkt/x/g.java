package com.smartdigimkt.x;

import android.content.Context;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f45028a;

    public g(i iVar) {
        this.f45028a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.t1.m mVarA = com.smartdigimkt.t1.m.a();
        Context context = this.f45028a.f45030a.f45039g;
        if (mVarA.b()) {
            mVarA.f44238i = true;
            try {
                new com.smartdigimkt.q4.g(mVarA.f44233d).a(1, (com.smartdigimkt.l4.b) new com.smartdigimkt.t1.j(mVarA, context));
            } catch (Throwable unused) {
                mVarA.f44238i = false;
            }
        }
        com.smartdigimkt.t1.m mVarA2 = com.smartdigimkt.t1.m.a();
        Context context2 = this.f45028a.f45030a.f45039g;
        if (mVarA2.c()) {
            mVarA2.f44239j = true;
            try {
                new com.smartdigimkt.q4.g(mVarA2.f44235f).a(1, (com.smartdigimkt.l4.b) new com.smartdigimkt.t1.k(mVarA2, context2));
            } catch (Throwable unused2) {
                mVarA2.f44239j = false;
            }
        }
    }
}
