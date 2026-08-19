package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.Analyse2ConfigModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.log2.crash.Crash2ConfigModel;

/* renamed from: com.beizi.fusion.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1139k {

    /* renamed from: d, reason: collision with root package name */
    private static volatile C1139k f14687d;

    /* renamed from: a, reason: collision with root package name */
    private final Context f14688a;

    /* renamed from: b, reason: collision with root package name */
    private final oc f14689b = new b();

    /* renamed from: c, reason: collision with root package name */
    private final C1135g f14690c;

    /* renamed from: com.beizi.fusion.k$b */
    public class b implements oc {
        private b() {
        }

        @Override // com.beizi.fusion.oc
        public void a(ConfigResponseModel configResponseModel, C1135g.a aVar, boolean z2) {
            Crash2ConfigModel crash;
            if (configResponseModel == null || C1135g.a.EXPIRED.equals(aVar) || C1139k.this.f14690c == null) {
                return;
            }
            C1150v c1150vA = C1139k.this.f14690c.a();
            if (AbstractC1147s.a(c1150vA != null ? c1150vA.p() : null, "forbid_collect_crash", false)) {
                C1139k.this.f14690c.b(this);
                return;
            }
            Analyse2ConfigModel analyse2ConfigModel = configResponseModel.getAnalyse2ConfigModel();
            boolean zIsClose = true;
            if (analyse2ConfigModel != null && (crash = analyse2ConfigModel.getCrash()) != null) {
                zIsClose = true ^ crash.isClose();
            }
            if (zIsClose) {
                new C1138j(C1139k.this.f14688a).a();
                C1139k.this.f14690c.b(this);
            }
        }
    }

    private C1139k(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f14688a = applicationContext;
        this.f14690c = (C1135g) C1136h.a().b(applicationContext);
    }

    public static C1139k a(Context context) {
        if (f14687d == null) {
            synchronized (C1139k.class) {
                try {
                    if (f14687d == null) {
                        f14687d = new C1139k(context);
                    }
                } finally {
                }
            }
        }
        return f14687d;
    }

    public void a() {
        C1135g c1135g = this.f14690c;
        if (c1135g != null) {
            c1135g.a(this.f14689b);
        }
    }
}
