package com.smartdigimkt.z;

import com.smartdigimkt.sdk.basead.ui.BaseATActivity;
import java.util.List;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f45270a = "1";

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f45271b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f45272c;

    public c(d dVar, com.smartdigimkt.i0.i iVar) {
        this.f45272c = dVar;
        this.f45271b = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.c cVar;
        synchronized (this.f45272c) {
            try {
                List<com.smartdigimkt.v1.p> list = (List) this.f45272c.f45274a.get(this.f45270a);
                if (list == null) {
                    return;
                }
                for (com.smartdigimkt.v1.p pVar : list) {
                    if (pVar != null) {
                        Object obj = this.f45271b;
                        if ((obj instanceof com.smartdigimkt.i0.i) && (cVar = pVar.f44569a.f43188c) != null) {
                            com.smartdigimkt.i0.i iVar = (com.smartdigimkt.i0.i) obj;
                            if (iVar.f40658a.f41822m.equals(cVar.f41822m)) {
                                BaseATActivity baseATActivity = pVar.f44569a;
                                if (baseATActivity.f43199n) {
                                    iVar.a(baseATActivity);
                                } else {
                                    baseATActivity.f43200o = iVar;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
