package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.ic;
import com.beizi.fusion.jn;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class hc implements xa {

    /* renamed from: a, reason: collision with root package name */
    private final View f14269a;

    /* renamed from: b, reason: collision with root package name */
    private ic f14270b;

    /* renamed from: c, reason: collision with root package name */
    private ReportModel3 f14271c;

    /* renamed from: d, reason: collision with root package name */
    private d f14272d;

    /* renamed from: e, reason: collision with root package name */
    private b f14273e = b.VIEW_PAUSE;

    public enum b {
        VIEW_RESUME,
        VIEW_PAUSE
    }

    public class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (jn.a.a(hc.this.f14269a, 10)) {
                if (hc.this.f14273e == b.VIEW_PAUSE) {
                    hc hcVar = hc.this;
                    hcVar.a(ic.a.AD_VIEW_SHOWN, hcVar.f14269a, null);
                }
                hc.this.f14273e = b.VIEW_RESUME;
            } else {
                if (hc.this.f14273e == b.VIEW_RESUME) {
                    hc hcVar2 = hc.this;
                    hcVar2.a(ic.a.AD_VIEW_PAUSE, hcVar2.f14269a, null);
                }
                hc.this.f14273e = b.VIEW_PAUSE;
            }
            if (jn.a.a(hc.this.f14269a, (hc.this.f14271c == null || hc.this.f14271c.getShow() == null) ? 0 : hc.this.f14271c.getShow().getAv())) {
                hc hcVar3 = hc.this;
                hcVar3.a(ic.a.ADN_RECOGNIZE, hcVar3.f14269a, null);
                hc hcVar4 = hc.this;
                hcVar4.a(ic.a.AD_EXPOSURE, hcVar4.f14269a, null);
            }
        }
    }

    public static final class d extends de {

        /* renamed from: d, reason: collision with root package name */
        private ScheduledExecutorService f14278d;

        public d(Runnable runnable) {
            super(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            a(0L, 100L, TimeUnit.MILLISECONDS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            c();
        }

        @Override // com.beizi.fusion.de, com.beizi.fusion.eb
        public ScheduledExecutorService b() {
            ScheduledExecutorService scheduledExecutorService;
            synchronized (this) {
                try {
                    if (this.f14278d == null) {
                        hb hbVar = (hb) fn.a().b(null);
                        if (hbVar instanceof en) {
                            this.f14278d = ((en) hbVar).b();
                        }
                    }
                    scheduledExecutorService = this.f14278d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return scheduledExecutorService;
        }
    }

    public hc(View view) {
        this.f14269a = view;
    }

    public void b() {
        d dVar = this.f14272d;
        if (dVar != null) {
            dVar.e();
        }
    }

    public void a(ReportModel3 reportModel3) {
        this.f14271c = reportModel3;
    }

    @Override // com.beizi.fusion.xa
    public void a() {
        if (this.f14272d == null) {
            this.f14272d = new d(new c());
        }
        this.f14272d.d();
    }

    public void a(za zaVar, View view, Object obj) {
        ic icVar = this.f14270b;
        if (icVar != null) {
            if (zaVar == ic.a.AD_EXPOSURE) {
                icVar.b(zaVar, view);
            }
            if (zaVar == ic.a.ADN_RECOGNIZE) {
                this.f14270b.b(view);
            }
            if (zaVar == ic.a.AD_VIEW_SHOWN) {
                this.f14270b.c(zaVar, view);
            }
            if (zaVar == ic.a.AD_VIEW_PAUSE) {
                this.f14270b.a(view);
            }
        }
    }

    @Override // com.beizi.fusion.xa
    public void a(ic icVar) {
        this.f14270b = icVar;
        icVar.a(this);
    }
}
