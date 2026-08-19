package com.smartdigimkt.f;

import android.content.Context;
import android.util.Log;
import com.hollywood.nexus.Actor;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40128a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f40129b;

    public g(h hVar, Context context) {
        this.f40129b = hVar;
        this.f40128a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            h hVar = this.f40129b;
            String str = hVar.f40131a;
            Objects.toString(hVar.f40139i);
            String str2 = this.f40129b.f40131a;
            Actor.getInstance().init(this.f40128a, new f(this));
            Actor.getInstance().notifyForeground(this.f40129b.f40143m);
        } catch (Throwable th) {
            String str3 = this.f40129b.f40131a;
            Log.getStackTraceString(th);
        }
    }
}
