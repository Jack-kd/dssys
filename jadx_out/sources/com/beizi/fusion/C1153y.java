package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.InitTraceModel;
import java.io.IOException;

/* renamed from: com.beizi.fusion.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1153y implements t9 {

    /* renamed from: b, reason: collision with root package name */
    private final Context f17476b;

    /* renamed from: c, reason: collision with root package name */
    private final ka f17477c;

    /* renamed from: d, reason: collision with root package name */
    private final InitTraceModel f17478d;

    /* renamed from: e, reason: collision with root package name */
    private final C1135g f17479e;

    /* renamed from: f, reason: collision with root package name */
    private C1150v f17480f;

    /* renamed from: a, reason: collision with root package name */
    private final String f17475a = "ASNPInitializeImpl";

    /* renamed from: g, reason: collision with root package name */
    private b f17481g = b.STANDBY;

    /* renamed from: com.beizi.fusion.y$b */
    public enum b {
        STANDBY,
        INITIALING,
        SUCCESS,
        FAILED
    }

    /* renamed from: com.beizi.fusion.y$c */
    public class c implements uc {

        /* renamed from: a, reason: collision with root package name */
        private sc f17487a;

        private void a(w7 w7Var, InitTraceModel initTraceModel) {
            if (w7Var == null || initTraceModel == null) {
                return;
            }
            rm.a("ASNPInitializeImpl", "上报初始化事件.  " + w7Var + " 耗时 " + initTraceModel.getRoundTripTime());
            ((s9) C1144p.a().b(C1153y.this.f17476b)).a(w7Var, initTraceModel);
        }

        private c(sc scVar) {
            this.f17487a = scVar;
        }

        @Override // com.beizi.fusion.uc
        public void a() {
            rm.a("ASNPInitializeImpl", "初始化成功...");
            C1153y.this.f17481g = b.SUCCESS;
            a(w7.EVENT_REPORT_INIT_CODE, C1153y.this.f17478d.m43deepCopy());
            C1153y.this.f17478d.setInitEndTs(System.currentTimeMillis());
            a(w7.EVENT_REPORT_INIT_SUCCESS_CODE, C1153y.this.f17478d.m43deepCopy());
            sc scVar = this.f17487a;
            if (scVar != null) {
                scVar.a();
                this.f17487a = null;
            }
        }

        @Override // com.beizi.fusion.uc
        public void a(EnumC1151w enumC1151w) {
            rm.a("ASNPInitializeImpl", "初始化失败..." + enumC1151w.b() + " " + enumC1151w.c());
            C1153y.this.f17481g = b.FAILED;
            a(w7.EVENT_REPORT_INIT_CODE, C1153y.this.f17478d.m43deepCopy());
            C1153y.this.f17478d.setInitEndTs(System.currentTimeMillis());
            a(w7.EVENT_REPORT_INIT_FAIL_CODE, C1153y.this.f17478d.m43deepCopy());
            sc scVar = this.f17487a;
            if (scVar != null) {
                scVar.a(enumC1151w.b(), enumC1151w.c());
            }
        }
    }

    public C1153y(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f17476b = applicationContext;
        InitTraceModel initTraceModel = new InitTraceModel();
        this.f17478d = initTraceModel;
        this.f17477c = new C1152x(context);
        C1135g c1135g = (C1135g) C1136h.a().b(applicationContext);
        this.f17479e = c1135g;
        c1135g.a(initTraceModel);
    }

    private void g() {
        C1150v c1150v = this.f17480f;
        if (c1150v != null) {
            ip.a().a(this.f17476b, c1150v.v(), this.f17480f.r(), this.f17480f.o());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        l0.a(this.f17476b.getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        ((s9) C1144p.a().b(this.f17476b)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        ((no) wp.a().b(this.f17476b)).d();
        ((q0) r0.a().b(this.f17476b)).e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        ((C1124a) C1126b.a().b(this.f17476b)).b();
    }

    private void l() {
        ((pd) C1133e0.a().b(this.f17476b)).a("plugins_all");
    }

    private void m() {
        C1134f.a(this.f17476b).b();
    }

    private void n() {
        C1139k.a(this.f17476b).a();
    }

    private void b() {
        Runnable runnable = new Runnable() { // from class: com.beizi.fusion.W
            @Override // java.lang.Runnable
            public final void run() {
                this.f12559b.h();
            }
        };
        hb hbVar = (hb) fn.a().b(this.f17476b);
        if (hbVar != null) {
            hbVar.a(runnable);
        }
    }

    private void c() {
        ((hb) fn.a().b(this.f17476b)).f(new Runnable() { // from class: com.beizi.fusion.V
            @Override // java.lang.Runnable
            public final void run() {
                this.f12558b.i();
            }
        });
    }

    private void d() {
        ((hb) fn.a().b(this.f17476b)).f(new Runnable() { // from class: com.beizi.fusion.Y
            @Override // java.lang.Runnable
            public final void run() {
                this.f12561b.j();
            }
        });
    }

    private void e() {
        ((hb) fn.a().b(this.f17476b)).f(new Runnable() { // from class: com.beizi.fusion.X
            @Override // java.lang.Runnable
            public final void run() {
                this.f12560b.k();
            }
        });
    }

    private void f() {
        ((kd) gh.a().b(this.f17476b)).a(EnumC1132e.ASNP_AES);
    }

    @Override // com.beizi.fusion.t9
    public void a(C1150v c1150v, sc scVar) throws IOException {
        if (a(c1150v.e(), scVar)) {
            return;
        }
        rm.a(this.f17476b);
        this.f17481g = b.INITIALING;
        this.f17480f = c1150v;
        f();
        g();
        this.f17478d.setInitStartTs(System.currentTimeMillis());
        c(c1150v);
        c();
        a(c1150v.n());
        a(c1150v);
        n();
        m();
        e();
        a(c1150v.b());
        b();
        d();
        b(c1150v);
        l();
        a(scVar);
    }

    private void c(C1150v c1150v) {
        C1135g c1135g = this.f17479e;
        if (c1135g != null) {
            c1135g.a(c1150v);
        }
    }

    private void b(C1150v c1150v) {
        C1142n c1142n = (C1142n) C1143o.a().b(this.f17476b);
        if (c1142n == null || c1142n.b() == null || c1150v == null) {
            return;
        }
        c1142n.b().a(c1150v.m());
        c1142n.b().a(AbstractC1147s.a(c1150v.p(), "isCanUseSimOperator", false), AbstractC1147s.a(c1150v.p(), "simOperator"));
    }

    private boolean a(String str, sc scVar) {
        b bVar = this.f17481g;
        if (bVar != b.STANDBY && bVar != b.FAILED) {
            if (bVar == b.SUCCESS) {
                if (scVar != null) {
                    C1150v c1150v = this.f17480f;
                    if (c1150v != null && c1150v.e().equals(str)) {
                        scVar.b();
                    } else {
                        EnumC1151w enumC1151w = EnumC1151w.ERROR_INIT_WITH_DIFFERENT_APP_ID;
                        scVar.a(enumC1151w.b(), enumC1151w.c());
                    }
                }
                return true;
            }
            if (bVar == b.INITIALING && scVar != null) {
                scVar.c();
                return true;
            }
        }
        return false;
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            tp.a().a(this.f17476b);
        } else {
            tp.a().a(str);
        }
    }

    private void a(C1150v c1150v) {
        r6.a().a(c1150v != null ? c1150v.j() : "", c1150v == null || c1150v.c());
    }

    private void a(boolean z2) {
        md mdVar = (md) kh.a().b(this.f17476b);
        if (z2) {
            mdVar.b();
        }
        mdVar.a(this.f17480f.l());
        C1150v c1150v = this.f17480f;
        mdVar.a(AbstractC1147s.a(c1150v != null ? c1150v.p() : null, "open_location_frequency", false));
        C1150v c1150v2 = this.f17480f;
        mdVar.b(AbstractC1147s.a(c1150v2 != null ? c1150v2.p() : null, "limit_location_frequency", false));
    }

    private void a(sc scVar) {
        this.f17477c.a(new c(scVar));
        this.f17477c.a(this.f17480f);
    }

    @Override // com.beizi.fusion.t9
    public boolean a() {
        return this.f17481g == b.SUCCESS;
    }
}
