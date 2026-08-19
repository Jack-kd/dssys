package com.smartdigimkt.f;

import android.os.Bundle;
import android.util.Log;
import com.hollywood.nexus.Actor;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40124a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f40125b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f40126c;

    public e(h hVar, int i2, Bundle bundle) {
        this.f40126c = hVar;
        this.f40124a = i2;
        this.f40125b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f40126c.f40131a;
        Objects.toString(this.f40125b);
        if (this.f40126c.f40134d.get()) {
            try {
                int i2 = this.f40124a;
                if (i2 == 5) {
                    Actor.getInstance().notifyAdl(this.f40125b);
                } else if (i2 == 6) {
                    Actor.getInstance().notifyAds(this.f40125b);
                } else {
                    if (i2 != 7) {
                        return;
                    }
                    Actor.getInstance().notifyAdc(this.f40125b);
                }
            } catch (Throwable th) {
                String str2 = this.f40126c.f40131a;
                Log.getStackTraceString(th);
            }
        }
    }
}
