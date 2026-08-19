package com.smartdigimkt.f;

import android.util.Log;
import com.hollywood.nexus.Actor;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f40122a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f40123b;

    public d(h hVar, boolean z2) {
        this.f40123b = hVar;
        this.f40122a = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f40123b.f40134d.get()) {
            try {
                Actor.getInstance().notifyForeground(this.f40122a);
            } catch (Throwable th) {
                String str = this.f40123b.f40131a;
                Log.getStackTraceString(th);
            }
        }
    }
}
