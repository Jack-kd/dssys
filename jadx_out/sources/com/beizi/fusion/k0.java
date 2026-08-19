package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.InitTraceModel;
import com.beizi.fusion.asnp.common.analyse.model.IBaseEventReportModel;
import com.beizi.fusion.asnp.common.analyse.model.IStringEventEnum;
import com.beizi.fusion.dm;

/* loaded from: classes2.dex */
public abstract class k0 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final Context f14692a;

        /* renamed from: b, reason: collision with root package name */
        private dm.f f14693b;

        /* renamed from: c, reason: collision with root package name */
        private dm.b f14694c;

        /* renamed from: d, reason: collision with root package name */
        private dm.i f14695d;

        /* renamed from: e, reason: collision with root package name */
        private dm.d f14696e;

        /* renamed from: f, reason: collision with root package name */
        private dm.g f14697f;

        /* renamed from: g, reason: collision with root package name */
        private dm.a f14698g;

        /* renamed from: h, reason: collision with root package name */
        private dm.h f14699h;

        /* renamed from: i, reason: collision with root package name */
        private dm.c f14700i;

        private b b() {
            this.f14694c = new dm.b(this.f14692a);
            return this;
        }

        private b c() {
            this.f14696e = new dm.d(this.f14692a);
            return this;
        }

        private b d() {
            this.f14693b = new dm.f(((C1142n) C1143o.a().b(this.f14692a)).b());
            return this;
        }

        private b e() {
            ConfigResponseModel configResponseModelA;
            C1135g c1135g = (C1135g) C1136h.a().b(this.f14692a);
            if (c1135g != null && (configResponseModelA = c1135g.a(true)) != null) {
                this.f14697f = new dm.g(configResponseModelA);
            }
            return this;
        }

        private b f() {
            C1150v c1150vA;
            C1135g c1135g = (C1135g) C1136h.a().b(this.f14692a);
            if (c1135g != null && (c1150vA = c1135g.a()) != null) {
                this.f14695d = new dm.i(c1150vA);
            }
            return this;
        }

        private b(Context context) {
            this.f14692a = context.getApplicationContext();
            a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b a(InitTraceModel initTraceModel) {
            this.f14699h = new dm.h(initTraceModel.getStartID(), initTraceModel.getRoundTripTime() + "");
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b a(AdTraceModel adTraceModel) {
            this.f14698g = new dm.a(adTraceModel);
            dm.g gVar = this.f14697f;
            if (gVar != null) {
                gVar.a(adTraceModel.getStrategyMD5());
            }
            return this;
        }

        private b a() {
            c();
            e();
            f();
            b();
            d();
            InitTraceModel initTraceModelB = ((C1135g) C1136h.a().b(this.f14692a)).b();
            if (initTraceModelB != null) {
                a(initTraceModelB);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b a(String str) {
            this.f14700i = new dm.c(str);
            return this;
        }

        public IBaseEventReportModel a(IStringEventEnum iStringEventEnum) {
            dm dmVar = new dm(iStringEventEnum);
            dmVar.a(this.f14698g);
            dmVar.a(this.f14694c);
            dmVar.a(this.f14696e);
            dmVar.a((dm.e) null);
            dmVar.a(this.f14693b);
            dmVar.a(this.f14697f);
            dmVar.a(this.f14695d);
            dmVar.a(this.f14699h);
            dmVar.a(this.f14700i);
            return dmVar;
        }
    }

    public static IBaseEventReportModel a(Context context, IStringEventEnum iStringEventEnum, InitTraceModel initTraceModel) {
        return new b(context).a(initTraceModel).a(iStringEventEnum);
    }

    public static IBaseEventReportModel a(Context context, IStringEventEnum iStringEventEnum, AdTraceModel adTraceModel) {
        return new b(context).a(adTraceModel).a(iStringEventEnum);
    }

    public static IBaseEventReportModel a(Context context, IStringEventEnum iStringEventEnum, String str) {
        return new b(context).a(str).a(iStringEventEnum);
    }
}
