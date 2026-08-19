package com.smartdigimkt.h2;

import android.view.View;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes5.dex */
public final class c0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40463a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f40464b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e0 f40465c;

    public c0(e0 e0Var, int i2, BaseG2CV2View baseG2CV2View) {
        this.f40465c = e0Var;
        this.f40463a = i2;
        this.f40464b = baseG2CV2View;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar;
        Object obj;
        b bVar2;
        Object obj2;
        if (this.f40463a != 11) {
            RelativeLayout relativeLayout = this.f40465c.f40479d;
            if (relativeLayout != null && ((relativeLayout.getMeasuredHeight() < 100 || this.f40465c.f40479d.getMeasuredWidth() < 200) && (bVar2 = this.f40465c.f40483h) != null)) {
                n nVar = (n) bVar2;
                Map map = nVar.f40508a.f40519j;
                if (map != null && (obj2 = map.get("native_ad_event_listener")) != null && (obj2 instanceof com.smartdigimkt.p1.s)) {
                    ((com.smartdigimkt.p1.s) obj2).a(2);
                }
                o oVar = nVar.f40508a;
                e0 e0Var = oVar.f40517h;
                if (e0Var != null) {
                    e0Var.a();
                }
                oVar.a();
                ConcurrentLinkedQueue concurrentLinkedQueue = oVar.f40516g;
                if (concurrentLinkedQueue != null) {
                    concurrentLinkedQueue.clear();
                    return;
                }
                return;
            }
        } else {
            RelativeLayout relativeLayout2 = this.f40465c.f40479d;
            if (relativeLayout2 != null && ((relativeLayout2.getMeasuredHeight() < com.smartdigimkt.c5.k.a(this.f40465c.f40479d.getContext(), 180) || this.f40465c.f40479d.getMeasuredWidth() < com.smartdigimkt.c5.k.a(this.f40465c.f40479d.getContext(), 50)) && (bVar = this.f40465c.f40483h) != null)) {
                n nVar2 = (n) bVar;
                Map map2 = nVar2.f40508a.f40519j;
                if (map2 != null && (obj = map2.get("native_ad_event_listener")) != null && (obj instanceof com.smartdigimkt.p1.s)) {
                    ((com.smartdigimkt.p1.s) obj).a(2);
                }
                o oVar2 = nVar2.f40508a;
                e0 e0Var2 = oVar2.f40517h;
                if (e0Var2 != null) {
                    e0Var2.a();
                }
                oVar2.a();
                ConcurrentLinkedQueue concurrentLinkedQueue2 = oVar2.f40516g;
                if (concurrentLinkedQueue2 != null) {
                    concurrentLinkedQueue2.clear();
                    return;
                }
                return;
            }
        }
        this.f40464b.setVisibility(0);
    }
}
