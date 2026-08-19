package com.kwad.components.ad.nativead;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes4.dex */
public final class b {
    private static long hz;
    private com.kwad.sdk.core.g.d hu;
    private com.kwad.sdk.core.g.c hv;
    private CopyOnWriteArrayList<d> pf = new CopyOnWriteArrayList<>();
    private CopyOnWriteArrayList<C0486b> pg = new CopyOnWriteArrayList<>();
    private int ph;

    public static final class a {
        private static final b pk = new b();
    }

    /* renamed from: com.kwad.components.ad.nativead.b$b, reason: collision with other inner class name */
    public static class C0486b {
        private Context mContext;
        private c pl;

        public C0486b(c cVar, Context context) {
            this.pl = cVar;
            this.mContext = context;
        }
    }

    public interface c {
        boolean u(String str);
    }

    public static class d {
        private final e pm;
        private final WeakReference<View> pn;

        public d(e eVar, View view) {
            this.pn = new WeakReference<>(view);
            this.pm = eVar;
        }
    }

    public interface e {
        boolean b(double d2);
    }

    public static synchronized boolean ce() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - hz <= 500) {
            return false;
        }
        hz = jElapsedRealtime;
        return true;
    }

    public static b ft() {
        return a.pk;
    }

    public final void D(Context context) {
        try {
            com.kwad.sdk.core.g.c cVar = this.hv;
            if (cVar != null) {
                cVar.cc(context);
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final void N(Context context) {
        try {
            com.kwad.sdk.core.g.c cVar = this.hv;
            if (cVar != null) {
                cVar.cb(context);
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final void a(boolean z2, float f2, View view, e eVar, boolean z3) {
        if (view == null || view.getContext() == null) {
            return;
        }
        if (this.hu == null) {
            this.ph = com.kwad.sdk.c.a.a.bA(view.getContext());
            a(z2, f2, view.getContext(), z3);
        }
        this.pf.add(new d(eVar, view));
    }

    public final void a(e eVar) {
        Iterator<d> it = this.pf.iterator();
        while (it.hasNext()) {
            d next = it.next();
            if (next.pm == eVar) {
                this.pf.remove(next);
            }
        }
        com.kwad.sdk.core.d.c.d("KSNativeAdRotateAndShakeManager", "sShakeItems size " + this.pf.size());
    }

    private void a(boolean z2, float f2, Context context, boolean z3) {
        this.hu = new com.kwad.sdk.core.g.d(z2, f2);
        this.pf = new CopyOnWriteArrayList<>();
        this.hu.bG(z3);
        this.hu.a(new com.kwad.sdk.core.g.b() { // from class: com.kwad.components.ad.nativead.b.1
            @Override // com.kwad.sdk.core.g.b
            public final void a(double d2) {
                d dVar;
                if (b.this.pf != null) {
                    Iterator it = b.this.pf.iterator();
                    while (it.hasNext() && ((dVar = (d) it.next()) == null || dVar.pm == null || !dVar.pm.b(d2))) {
                    }
                    by.a(new bi() { // from class: com.kwad.components.ad.nativead.b.1.1
                        @Override // com.kwad.sdk.utils.bi
                        public final void doTask() {
                            com.kwad.sdk.core.d.c.d("KSNativeAdRotateAndShakeManager", "onShakeEvent openGate2");
                            if (b.this.hu != null) {
                                b.this.hu.NJ();
                            }
                        }
                    }, null, 500L);
                }
            }

            @Override // com.kwad.sdk.core.g.b
            public final void cj() {
            }
        });
        this.hu.m(f2);
        this.hu.cb(context);
    }

    public final void a(AdMatrixInfo.RotateInfo rotateInfo, Context context, c cVar) {
        com.kwad.sdk.core.g.c cVar2 = this.hv;
        if (cVar2 == null) {
            a(rotateInfo, context);
        } else {
            cVar2.a(rotateInfo);
        }
        this.pg.add(new C0486b(cVar, context));
    }

    public final void a(c cVar) {
        Iterator<C0486b> it = this.pg.iterator();
        while (it.hasNext()) {
            C0486b next = it.next();
            if (next != null && next.pl == cVar) {
                this.pg.remove(next);
            }
        }
        com.kwad.sdk.core.d.c.d("KSNativeAdRotateAndShakeManager", "sRotateItems size " + this.pg.size());
    }

    private void a(AdMatrixInfo.RotateInfo rotateInfo, Context context) {
        com.kwad.sdk.core.g.c cVar = new com.kwad.sdk.core.g.c(rotateInfo);
        this.hv = cVar;
        cVar.a(new com.kwad.sdk.core.g.a() { // from class: com.kwad.components.ad.nativead.b.2
            @Override // com.kwad.sdk.core.g.a
            public final void ck() {
            }

            @Override // com.kwad.sdk.core.g.a
            public final void t(String str) {
                if (b.this.pg != null) {
                    Iterator it = b.this.pg.iterator();
                    while (it.hasNext()) {
                        C0486b c0486b = (C0486b) it.next();
                        if (c0486b != null && c0486b.pl != null && c0486b.pl.u(str)) {
                            return;
                        }
                    }
                }
            }
        });
        this.hv.cb(context);
    }
}
