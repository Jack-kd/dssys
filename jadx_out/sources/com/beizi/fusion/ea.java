package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.StrategyModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.strategy.filter.StrategyFilterModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class ea {

    /* renamed from: a, reason: collision with root package name */
    protected final EnumC1130d f13690a;

    /* renamed from: b, reason: collision with root package name */
    protected Context f13691b;

    /* renamed from: c, reason: collision with root package name */
    protected da f13692c;

    /* renamed from: d, reason: collision with root package name */
    protected boolean f13693d = false;

    /* renamed from: e, reason: collision with root package name */
    protected C1124a f13694e;

    /* renamed from: f, reason: collision with root package name */
    private final c f13695f;

    /* renamed from: g, reason: collision with root package name */
    private final lo f13696g;

    /* renamed from: h, reason: collision with root package name */
    private final ko f13697h;

    /* renamed from: i, reason: collision with root package name */
    private final mo f13698i;

    /* renamed from: j, reason: collision with root package name */
    private ConfigResponseModel f13699j;

    /* renamed from: k, reason: collision with root package name */
    private final ia f13700k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f13701l;

    /* renamed from: m, reason: collision with root package name */
    private String f13702m;

    /* renamed from: n, reason: collision with root package name */
    private Map f13703n;

    public class a implements rb {
        public a() {
        }

        @Override // com.beizi.fusion.rb
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean fetch(StrategyModel strategyModel, String str) {
            return str.equals(strategyModel.getSpaceID());
        }
    }

    public static class b {
        public static ea a(EnumC1130d enumC1130d, Context context, da daVar) {
            return (enumC1130d == EnumC1130d.BANNER || enumC1130d == EnumC1130d.NATIVE) ? new li(context, daVar, enumC1130d) : enumC1130d == EnumC1130d.UNIFIED ? new lp(context, daVar, enumC1130d) : enumC1130d == EnumC1130d.VIDEO ? new hm(context, daVar, enumC1130d) : new ii(context, daVar, enumC1130d);
        }
    }

    public class c implements tc {

        /* renamed from: a, reason: collision with root package name */
        private ga f13705a;

        public /* synthetic */ c(ea eaVar, a aVar) {
            this();
        }

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(ga gaVar) {
            this.f13705a = gaVar;
        }

        @Override // com.beizi.fusion.tc
        public void a(List list) {
            ea.this.f13701l = false;
            ea.this.a(list);
        }

        @Override // com.beizi.fusion.tc
        public void a(n1 n1Var) {
            if (n1Var != n1.ERROR_AD_REQUESTING) {
                ea.this.f13701l = false;
            }
            ga gaVar = this.f13705a;
            if (gaVar != null) {
                gaVar.a(n1Var.b(), n1Var.c());
            }
        }
    }

    public ea(Context context, da daVar, EnumC1130d enumC1130d) {
        this.f13692c = daVar;
        this.f13690a = enumC1130d;
        this.f13691b = context;
        this.f13696g = new lo(context, daVar.g());
        ko koVar = new ko();
        this.f13697h = koVar;
        this.f13698i = new mo(context);
        koVar.a(this.f13692c.h());
        this.f13694e = (C1124a) C1126b.a().b(this.f13691b);
        this.f13700k = new we(this.f13691b, enumC1130d);
        this.f13695f = new c(this, null);
    }

    private boolean e() {
        Context context = this.f13691b;
        da daVar = this.f13692c;
        return v5.a(context, daVar, a(daVar.g()));
    }

    private boolean g() {
        return this.f13699j != null;
    }

    public abstract void a(List list);

    public boolean b() {
        mo moVar;
        long jRandom = (long) ((Math.random() * 100.0d) + 1.0d);
        if (this.f13690a != EnumC1130d.INTERSTITIAL || (moVar = this.f13698i) == null) {
            return false;
        }
        moVar.b(jRandom);
        StrategyFilterModel strategyFilterModelA = a(this.f13692c.g());
        if (strategyFilterModelA != null) {
            return this.f13698i.a(strategyFilterModelA);
        }
        return false;
    }

    public ga c() {
        return this.f13695f.f13705a;
    }

    public Map d() {
        return this.f13703n;
    }

    public boolean f() {
        return this.f13693d;
    }

    public void h() {
        C1135g c1135g = (C1135g) C1136h.a().b(this.f13691b);
        a(c1135g != null ? c1135g.a() : null);
        da daVar = this.f13692c;
        if (daVar == null) {
            a(n1.ERROR_INVALID_CONFIG);
            return;
        }
        if (TextUtils.isEmpty(daVar.g())) {
            a(n1.ERROR_INVALID_SPACE_ID);
            return;
        }
        if (this.f13701l) {
            a(n1.ERROR_AD_REQUESTING);
            return;
        }
        if (c1135g == null) {
            rm.b("IBaseAdController", "unexpected error config cache is null...");
            a(n1.ERROR_SDK_NOT_INIT);
            return;
        }
        ConfigResponseModel configResponseModelA = c1135g.a(true);
        this.f13699j = configResponseModelA;
        if (configResponseModelA == null) {
            rm.b("IBaseAdController", "unexpected error config copy is null...");
            a(n1.ERROR_SDK_NOT_INIT);
            return;
        }
        AdTraceModel adTraceModelA = a(this.f13692c);
        if (adTraceModelA == null) {
            a(n1.ERROR_S2S_VERIFICATION_FAILED);
            return;
        }
        this.f13702m = adTraceModelA.getRequestTracSessionID();
        this.f13703n = adTraceModelA.getSwitch4VInfo();
        adTraceModelA.setStrategyMD5(this.f13699j.getStrategyMD5(this.f13692c.g()));
        ((s9) C1144p.a().b(this.f13691b)).a(w7.EVENT_REPORT_LOAD_CODE, adTraceModelA);
        if (!g()) {
            a(n1.ERROR_SDK_NOT_INIT);
            return;
        }
        if (a()) {
            a(n1.ERROR_REQUEST_TOO_OFTEN);
            return;
        }
        if (e()) {
            a(n1.ERROR_AD_BEING_COMPLAINED);
        } else if (b()) {
            a(n1.ERROR_UNITE_CONTROL);
        } else {
            a(c1135g.a(), adTraceModelA);
        }
    }

    public void a(ga gaVar) {
        this.f13695f.a(gaVar);
        ia iaVar = this.f13700k;
        if (iaVar != null) {
            iaVar.a(this.f13695f);
        }
    }

    private void a(C1150v c1150v) {
        if (c1150v == null || !c1150v.d()) {
            return;
        }
        rm.a("IBaseAdController", "允许使用个性化推荐, 初始化OAID...");
        zj.a().d(this.f13691b);
    }

    private AdTraceModel a(da daVar) {
        AdTraceModel adTraceModel = new AdTraceModel(daVar);
        om omVarF = daVar.f();
        if (omVarF == null) {
            return adTraceModel;
        }
        omVarF.a(this.f13691b);
        String strC = omVarF.c();
        if (!omVarF.a().equals(daVar.g()) || TextUtils.isEmpty(strC)) {
            return null;
        }
        adTraceModel.updateS2SRequestSerialID(strC);
        return adTraceModel;
    }

    private void a(C1150v c1150v, AdTraceModel adTraceModel) {
        da daVar;
        ia iaVar = this.f13700k;
        if (iaVar != null && (daVar = this.f13692c) != null) {
            this.f13693d = false;
            this.f13701l = true;
            iaVar.a(c1150v, this.f13699j, daVar, adTraceModel);
        } else {
            rm.b("IBaseAdController", "unexpected error iAdRouter or mAdConfig is null...");
            a(n1.ERROR_UNEXPECTED);
        }
    }

    private void a(n1 n1Var) {
        c cVar = this.f13695f;
        if (cVar != null) {
            cVar.a(n1Var);
        }
    }

    private boolean a() {
        if (this.f13699j == null) {
            return false;
        }
        StrategyFilterModel strategyFilterModelA = a(this.f13692c.g());
        return this.f13696g.a(strategyFilterModelA) || this.f13697h.a(strategyFilterModelA);
    }

    public void a(long j2) {
        mo moVar = this.f13698i;
        if (moVar != null) {
            moVar.a(j2);
        }
    }

    private StrategyFilterModel a(String str) {
        StrategyModel strategyModel;
        if (this.f13699j == null || TextUtils.isEmpty(str) || (strategyModel = (StrategyModel) l5.a(this.f13699j.getStrategyList(), str, new a())) == null) {
            return null;
        }
        return strategyModel.getFilter();
    }
}
