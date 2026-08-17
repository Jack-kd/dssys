package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.asnp.common.analyse.model.IBaseEventReportModel;
import com.beizi.fusion.asnp.common.analyse.model.IStringEventEnum;

/* loaded from: classes2.dex */
class dm extends IBaseEventReportModel {

    /* renamed from: a, reason: collision with root package name */
    private f f13488a;

    /* renamed from: b, reason: collision with root package name */
    private b f13489b;

    /* renamed from: c, reason: collision with root package name */
    private i f13490c;

    /* renamed from: d, reason: collision with root package name */
    private d f13491d;

    /* renamed from: e, reason: collision with root package name */
    private h f13492e;

    /* renamed from: f, reason: collision with root package name */
    private a f13493f;

    /* renamed from: g, reason: collision with root package name */
    private g f13494g;

    /* renamed from: h, reason: collision with root package name */
    private c f13495h;

    /* renamed from: i, reason: collision with root package name */
    private final String f13496i;

    /* renamed from: j, reason: collision with root package name */
    private final String f13497j;

    /* renamed from: k, reason: collision with root package name */
    private final String f13498k;

    /* renamed from: l, reason: collision with root package name */
    private final String f13499l;

    /* renamed from: m, reason: collision with root package name */
    private final String f13500m;

    /* renamed from: n, reason: collision with root package name */
    private final String f13501n;

    public static final class b extends wa {

        /* renamed from: a, reason: collision with root package name */
        private final String f13525a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13526b;

        /* renamed from: c, reason: collision with root package name */
        private final String f13527c;

        /* renamed from: d, reason: collision with root package name */
        private final String f13528d;

        /* renamed from: e, reason: collision with root package name */
        private final String f13529e;

        public b(Context context) {
            this.f13525a = al.d(context);
            this.f13526b = al.c(context);
            this.f13527c = context.getPackageName();
            this.f13528d = al.a(context) + "";
            this.f13529e = al.b(context) + "";
        }
    }

    public static final class c extends wa {

        /* renamed from: a, reason: collision with root package name */
        private final String f13530a;

        public c(String str) {
            this.f13530a = str;
        }
    }

    public static final class d extends wa {

        /* renamed from: a, reason: collision with root package name */
        private final String f13531a;

        /* renamed from: c, reason: collision with root package name */
        private final String f13533c = m0.d();

        /* renamed from: d, reason: collision with root package name */
        private final String f13534d = m0.c();

        /* renamed from: b, reason: collision with root package name */
        private final String f13532b = m0.a();

        /* renamed from: e, reason: collision with root package name */
        private final String f13535e = m0.b();

        /* renamed from: f, reason: collision with root package name */
        private final String f13536f = m0.e();

        /* renamed from: g, reason: collision with root package name */
        private final String f13537g = m0.f();

        /* renamed from: h, reason: collision with root package name */
        private final String f13538h = m0.a();

        public d(Context context) {
            this.f13531a = m0.a(context);
        }
    }

    public static final class e extends wa {
    }

    public static final class f extends wa {

        /* renamed from: a, reason: collision with root package name */
        private final String f13539a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13540b;

        /* renamed from: c, reason: collision with root package name */
        private final String f13541c;

        /* renamed from: d, reason: collision with root package name */
        private final String f13542d;

        /* renamed from: e, reason: collision with root package name */
        private final String f13543e;

        /* renamed from: f, reason: collision with root package name */
        private final String f13544f;

        /* renamed from: g, reason: collision with root package name */
        private final String f13545g;

        /* renamed from: h, reason: collision with root package name */
        private final String f13546h;

        /* renamed from: i, reason: collision with root package name */
        private final String f13547i;

        /* renamed from: j, reason: collision with root package name */
        private final String f13548j;

        /* renamed from: k, reason: collision with root package name */
        private final String f13549k;

        /* renamed from: l, reason: collision with root package name */
        private final String f13550l;

        /* renamed from: m, reason: collision with root package name */
        private final String f13551m;

        /* renamed from: n, reason: collision with root package name */
        private final String f13552n;

        /* renamed from: o, reason: collision with root package name */
        private final String f13553o;

        /* renamed from: p, reason: collision with root package name */
        private final String f13554p;

        /* renamed from: q, reason: collision with root package name */
        private final String f13555q;

        /* renamed from: r, reason: collision with root package name */
        private final String f13556r;

        /* renamed from: s, reason: collision with root package name */
        private final String f13557s;

        /* renamed from: t, reason: collision with root package name */
        private final String f13558t;

        /* renamed from: u, reason: collision with root package name */
        private final String f13559u;

        /* renamed from: v, reason: collision with root package name */
        private final String f13560v;

        /* renamed from: w, reason: collision with root package name */
        private final String f13561w;

        /* renamed from: x, reason: collision with root package name */
        private final String f13562x;

        /* renamed from: y, reason: collision with root package name */
        private final String f13563y;

        /* renamed from: z, reason: collision with root package name */
        private final String f13564z;

        public f(ac acVar) {
            this.f13539a = acVar.getOAID();
            this.f13540b = acVar.m();
            this.f13541c = acVar.getOAID();
            this.f13542d = acVar.m();
            this.f13543e = acVar.b();
            this.f13544f = acVar.y() + "";
            this.f13545g = acVar.e();
            this.f13546h = acVar.h();
            this.f13547i = acVar.g();
            this.f13548j = acVar.n();
            this.f13549k = acVar.l();
            this.f13550l = acVar.p() + "";
            this.f13551m = acVar.v() + "";
            this.f13552n = acVar.i() + "";
            this.f13553o = acVar.c() + "";
            this.f13554p = acVar.B() + "";
            this.f13555q = acVar.j();
            this.f13556r = acVar.d();
            this.f13557s = acVar.F();
            this.f13558t = acVar.D();
            this.f13559u = acVar.s();
            this.f13560v = acVar.q();
            this.f13561w = acVar.A();
            this.f13562x = acVar.r();
            this.f13563y = acVar.a() + "";
            this.f13564z = acVar.E();
        }
    }

    public static final class g extends wa implements vb {

        /* renamed from: a, reason: collision with root package name */
        private final String f13565a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13566b;

        /* renamed from: c, reason: collision with root package name */
        private String f13567c;

        /* renamed from: d, reason: collision with root package name */
        private final String f13568d;

        /* renamed from: e, reason: collision with root package name */
        private final String f13569e;

        public g(ConfigResponseModel configResponseModel) {
            this.f13565a = configResponseModel.getUpdateMD5();
            this.f13566b = configResponseModel.getRequestUrlMD5();
            this.f13568d = "";
            this.f13569e = configResponseModel.getStatisticsMD5();
        }

        public g a() {
            return new g(this);
        }

        public void a(String str) {
            this.f13567c = str;
        }

        private g(g gVar) {
            this.f13565a = gVar.f13565a;
            this.f13566b = gVar.f13566b;
            this.f13567c = gVar.f13567c;
            this.f13568d = gVar.f13568d;
            this.f13569e = gVar.f13569e;
        }
    }

    public static final class h extends wa implements vb {

        /* renamed from: a, reason: collision with root package name */
        private final String f13570a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13571b;

        public h(String str, String str2) {
            this.f13570a = str;
            this.f13571b = str2;
        }

        public h a() {
            return new h(this.f13570a, this.f13571b);
        }
    }

    public static final class i extends wa {

        /* renamed from: a, reason: collision with root package name */
        private final String f13572a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13573b;

        /* renamed from: c, reason: collision with root package name */
        private final String f13574c;

        /* renamed from: d, reason: collision with root package name */
        private final String f13575d;

        /* renamed from: e, reason: collision with root package name */
        private final String f13576e;

        /* renamed from: f, reason: collision with root package name */
        private final String f13577f;

        public i(C1150v c1150v) {
            this.f13572a = c1150v.w();
            boolean zD = c1150v.d();
            this.f13573b = c1150v.m();
            this.f13574c = c1150v.k();
            this.f13575d = (zD ? 1 : 0) + "";
            this.f13576e = a(c1150v);
            this.f13577f = c1150v.e();
        }

        public String a(C1150v c1150v) {
            return pg.a(c1150v.s());
        }
    }

    public dm(IStringEventEnum iStringEventEnum) {
        super(iStringEventEnum);
        this.f13498k = "";
        this.f13499l = getEventCode();
        this.f13500m = "NSDK";
        String str = System.currentTimeMillis() + "";
        this.f13496i = str;
        this.f13501n = str;
        this.f13497j = qn.c();
    }

    public void a(e eVar) {
    }

    public void a(f fVar) {
        this.f13488a = fVar;
    }

    @Override // com.beizi.fusion.asnp.common.analyse.model.IBaseEventReportModel
    public dm deepCopy() {
        dm dmVar = new dm(this.event);
        f fVar = this.f13488a;
        if (fVar != null) {
            dmVar.f13488a = fVar;
        }
        b bVar = this.f13489b;
        if (bVar != null) {
            dmVar.f13489b = bVar;
        }
        i iVar = this.f13490c;
        if (iVar != null) {
            dmVar.f13490c = iVar;
        }
        d dVar = this.f13491d;
        if (dVar != null) {
            dmVar.f13491d = dVar;
        }
        h hVar = this.f13492e;
        if (hVar != null) {
            dmVar.f13492e = hVar.a();
        }
        a aVar = this.f13493f;
        if (aVar != null) {
            dmVar.f13493f = aVar.a();
        }
        g gVar = this.f13494g;
        if (gVar != null) {
            dmVar.f13494g = gVar.a();
        }
        c cVar = this.f13495h;
        if (cVar != null) {
            dmVar.f13495h = cVar;
        }
        return dmVar;
    }

    public void a(b bVar) {
        this.f13489b = bVar;
    }

    public void a(i iVar) {
        this.f13490c = iVar;
    }

    public void a(d dVar) {
        this.f13491d = dVar;
    }

    public void a(h hVar) {
        this.f13492e = hVar;
    }

    public void a(a aVar) {
        this.f13493f = aVar;
    }

    public void a(g gVar) {
        this.f13494g = gVar;
    }

    public void a(c cVar) {
        this.f13495h = cVar;
    }

    public static final class a extends wa implements vb {

        /* renamed from: a, reason: collision with root package name */
        private final String f13502a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13503b;

        /* renamed from: c, reason: collision with root package name */
        private final String f13504c;

        /* renamed from: d, reason: collision with root package name */
        private final String f13505d;

        /* renamed from: e, reason: collision with root package name */
        private final String f13506e;

        /* renamed from: f, reason: collision with root package name */
        private final String f13507f;

        /* renamed from: g, reason: collision with root package name */
        private final String f13508g;

        /* renamed from: h, reason: collision with root package name */
        private final String f13509h;

        /* renamed from: i, reason: collision with root package name */
        private final String f13510i;

        /* renamed from: j, reason: collision with root package name */
        private final String f13511j;

        /* renamed from: k, reason: collision with root package name */
        private final String f13512k;

        /* renamed from: l, reason: collision with root package name */
        private final String f13513l;

        /* renamed from: m, reason: collision with root package name */
        private final String f13514m;

        /* renamed from: n, reason: collision with root package name */
        private final String f13515n;

        /* renamed from: o, reason: collision with root package name */
        private final String f13516o;

        /* renamed from: p, reason: collision with root package name */
        private final String f13517p;

        /* renamed from: q, reason: collision with root package name */
        private final String f13518q;

        /* renamed from: r, reason: collision with root package name */
        private final String f13519r;

        /* renamed from: s, reason: collision with root package name */
        private final String f13520s;

        /* renamed from: t, reason: collision with root package name */
        private final String f13521t;

        /* renamed from: u, reason: collision with root package name */
        private final String f13522u;

        /* renamed from: v, reason: collision with root package name */
        private final String f13523v;

        /* renamed from: w, reason: collision with root package name */
        private final String f13524w;

        public a(AdTraceModel adTraceModel) {
            String str;
            String str2;
            this.f13524w = adTraceModel.getComplain();
            this.f13523v = adTraceModel.getCreateID();
            this.f13522u = adTraceModel.getRequestCount() + "";
            this.f13521t = adTraceModel.getPrice() + "";
            this.f13520s = adTraceModel.getWinPrice();
            this.f13519r = adTraceModel.getBidResult();
            this.f13518q = adTraceModel.getCurrency();
            this.f13517p = adTraceModel.getAdType().c();
            this.f13516o = adTraceModel.getMaxTimeout() + "";
            this.f13515n = adTraceModel.getMaterialID();
            this.f13514m = adTraceModel.getOrderID();
            this.f13513l = adTraceModel.getErrorMessage();
            if (adTraceModel.getErrorCode() != -1) {
                str = adTraceModel.getErrorCode() + "";
            } else {
                str = "";
            }
            this.f13512k = str;
            if (adTraceModel.getInteractiveType() == -1) {
                str2 = "";
            } else {
                str2 = adTraceModel.getInteractiveType() + "";
            }
            this.f13511j = str2;
            this.f13510i = adTraceModel.getInteractionID();
            this.f13509h = adTraceModel.getSchemeID();
            this.f13508g = adTraceModel.getPrice() + "";
            this.f13507f = adTraceModel.getDspID();
            this.f13506e = adTraceModel.getAdType().c();
            this.f13505d = adTraceModel.getSpaceID();
            this.f13504c = adTraceModel.getCurrentTripTime() + "";
            this.f13502a = adTraceModel.getRequestTracSessionID();
            this.f13503b = adTraceModel.getCacheRequestTraceSessionID();
        }

        public a a() {
            return new a(this);
        }

        private a(a aVar) {
            this.f13502a = aVar.f13502a;
            this.f13503b = aVar.f13503b;
            this.f13504c = aVar.f13504c;
            this.f13505d = aVar.f13505d;
            this.f13506e = aVar.f13506e;
            this.f13507f = aVar.f13507f;
            this.f13508g = aVar.f13508g;
            this.f13509h = aVar.f13509h;
            this.f13510i = aVar.f13510i;
            this.f13511j = aVar.f13511j;
            this.f13512k = aVar.f13512k;
            this.f13513l = aVar.f13513l;
            this.f13514m = aVar.f13514m;
            this.f13515n = aVar.f13515n;
            this.f13516o = aVar.f13516o;
            this.f13517p = aVar.f13517p;
            this.f13518q = aVar.f13518q;
            this.f13519r = aVar.f13519r;
            this.f13520s = aVar.f13520s;
            this.f13521t = aVar.f13521t;
            this.f13522u = aVar.f13522u;
            this.f13523v = aVar.f13523v;
            this.f13524w = aVar.f13524w;
        }
    }
}
