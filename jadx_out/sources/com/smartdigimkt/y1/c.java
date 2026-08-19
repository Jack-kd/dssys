package com.smartdigimkt.y1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView;

/* loaded from: classes5.dex */
public final class c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseAnimPlayerView f45169a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(BaseAnimPlayerView baseAnimPlayerView, Looper looper) {
        super(looper);
        this.f45169a = baseAnimPlayerView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        BaseAnimPlayerView baseAnimPlayerView = this.f45169a;
        if (baseAnimPlayerView.f43704o != null && baseAnimPlayerView.f43699j) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() + baseAnimPlayerView.f43683t;
            BaseAnimPlayerView baseAnimPlayerView2 = this.f45169a;
            baseAnimPlayerView.f43691b = jElapsedRealtime - baseAnimPlayerView2.f43684u;
            if (!baseAnimPlayerView2.f43700k && !baseAnimPlayerView2.f43701l) {
                baseAnimPlayerView2.f43700k = true;
                k kVar = baseAnimPlayerView2.f43704o;
                if (kVar != null) {
                    kVar.f();
                }
            }
            BaseAnimPlayerView baseAnimPlayerView3 = this.f45169a;
            k kVar2 = baseAnimPlayerView3.f43704o;
            if (kVar2 != null) {
                kVar2.b(baseAnimPlayerView3.f43691b);
            }
            BaseAnimPlayerView baseAnimPlayerView4 = this.f45169a;
            if (!baseAnimPlayerView4.f43695f && baseAnimPlayerView4.f43691b >= baseAnimPlayerView4.f43692c) {
                baseAnimPlayerView4.f43695f = true;
                k kVar3 = baseAnimPlayerView4.f43704o;
                if (kVar3 != null) {
                    kVar3.a(25);
                }
            } else if (!baseAnimPlayerView4.f43696g && baseAnimPlayerView4.f43691b >= baseAnimPlayerView4.f43693d) {
                baseAnimPlayerView4.f43696g = true;
                k kVar4 = baseAnimPlayerView4.f43704o;
                if (kVar4 != null) {
                    kVar4.a(50);
                }
            } else if (!baseAnimPlayerView4.f43697h && baseAnimPlayerView4.f43691b >= baseAnimPlayerView4.f43694e) {
                baseAnimPlayerView4.f43697h = true;
                k kVar5 = baseAnimPlayerView4.f43704o;
                if (kVar5 != null) {
                    kVar5.a(75);
                }
            }
            BaseAnimPlayerView baseAnimPlayerView5 = this.f45169a;
            if (baseAnimPlayerView5.f43701l || baseAnimPlayerView5.f43691b < baseAnimPlayerView5.f43690a) {
                return;
            }
            baseAnimPlayerView5.f43699j = false;
            baseAnimPlayerView5.f43702m = null;
            baseAnimPlayerView5.f43689z = false;
            baseAnimPlayerView5.f43701l = true;
            k kVar6 = baseAnimPlayerView5.f43704o;
            if (kVar6 != null) {
                kVar6.a();
            }
            this.f45169a.f43704o = null;
        }
    }
}
