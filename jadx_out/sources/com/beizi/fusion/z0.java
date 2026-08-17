package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.bid.BiddingModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.ImageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.VideoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.land.LandingOptimizeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.fd;
import com.beizi.fusion.ic;
import com.beizi.fusion.u9;
import com.beizi.fusion.z9;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class z0 implements kb {

    /* renamed from: a, reason: collision with root package name */
    protected final Context f17732a;

    /* renamed from: b, reason: collision with root package name */
    protected final AdItemModel f17733b;

    /* renamed from: c, reason: collision with root package name */
    protected final da f17734c;

    /* renamed from: d, reason: collision with root package name */
    protected final AdTraceModel f17735d;

    /* renamed from: e, reason: collision with root package name */
    protected final fd f17736e;

    /* renamed from: f, reason: collision with root package name */
    protected final z9 f17737f = m();

    /* renamed from: g, reason: collision with root package name */
    protected final s9 f17738g;

    /* renamed from: h, reason: collision with root package name */
    private final q0 f17739h;

    /* renamed from: i, reason: collision with root package name */
    private final c f17740i;

    /* renamed from: j, reason: collision with root package name */
    private final BiddingModel3 f17741j;

    /* renamed from: k, reason: collision with root package name */
    private gc f17742k;

    /* renamed from: l, reason: collision with root package name */
    private cd f17743l;

    /* renamed from: m, reason: collision with root package name */
    private hf f17744m;

    /* renamed from: n, reason: collision with root package name */
    private yd f17745n;

    /* renamed from: o, reason: collision with root package name */
    protected v9 f17746o;

    /* renamed from: p, reason: collision with root package name */
    private u9 f17747p;

    /* renamed from: q, reason: collision with root package name */
    private ti f17748q;

    /* renamed from: r, reason: collision with root package name */
    private vg f17749r;

    /* renamed from: s, reason: collision with root package name */
    private final mb f17750s;

    /* renamed from: t, reason: collision with root package name */
    private f f17751t;

    /* renamed from: u, reason: collision with root package name */
    protected d3 f17752u;

    public class b implements z9 {

        /* renamed from: b, reason: collision with root package name */
        private y9 f17754b;

        /* renamed from: a, reason: collision with root package name */
        private boolean f17753a = false;

        /* renamed from: c, reason: collision with root package name */
        private final u9.a f17755c = new a();

        public class a implements u9.a {
            public a() {
            }

            @Override // com.beizi.fusion.u9.a
            public void a() {
                if (!z0.this.f17735d.isCallbackExposure() && z0.this.f17742k != null) {
                    z0.this.f17735d.setCallbackExposure();
                    z0.this.f17742k.b();
                }
                if (z0.this.f17743l != null) {
                    z0.this.f17743l.onAdClicked();
                }
            }

            @Override // com.beizi.fusion.u9.a
            public void b() {
            }
        }

        public b() {
        }

        @Override // com.beizi.fusion.z9
        public void d(za zaVar) {
            View viewA = z0.this.a();
            if (viewA instanceof ScopeExpressContainer) {
                ((ScopeExpressContainer) viewA).removeFromParent();
            }
            if (z0.this.f17742k != null) {
                z0.this.f17742k.onAdClosed();
                if (z0.this.f17733b.isIndependentAd()) {
                    z0 z0Var = z0.this;
                    z0Var.f17738g.a(w7.EVENT_REPORT_CLOSE_CODE, z0Var.f17735d);
                }
            }
        }

        @Override // com.beizi.fusion.z9
        public void f(za zaVar) {
            String strA;
            z0 z0Var = z0.this;
            v5.a(z0Var.f17732a, z0Var.f17734c, System.currentTimeMillis());
            View viewA = z0.this.a();
            if (viewA instanceof ScopeExpressContainer) {
                strA = ScopeExpressContainer.d.a((ScopeExpressContainer) viewA);
                z0.this.f17735d.setComplain(strA);
            } else {
                strA = "";
            }
            z0 z0Var2 = z0.this;
            z0Var2.f17738g.a(w7.EVENT_REPORT_COMPLAIN_CODE, z0Var2.f17735d);
            if (z0.this.f17745n != null) {
                z0.this.f17745n.a(strA);
            }
            d(z9.a.AD_CLOSE);
        }

        @Override // com.beizi.fusion.ab
        public void a(y9 y9Var) {
            this.f17754b = y9Var;
        }

        @Override // com.beizi.fusion.z9
        public void a(za zaVar, View view) {
            z0 z0Var = z0.this;
            s9 s9Var = z0Var.f17738g;
            w7 w7Var = w7.EVENT_REPORT_CLICK_CODE;
            s9Var.a(w7Var, z0Var.f17735d);
            y9 y9Var = this.f17754b;
            if (y9Var instanceof ec) {
                ((ec) y9Var).a(z0.this.f17735d.m42deepCopy());
            }
            if (z0.this.f17747p != null) {
                z0.this.f17747p.a(zaVar, view, z0.this.f17735d, this.f17755c);
                if (!this.f17753a) {
                    this.f17753a = true;
                    z0.this.f17739h.a(z0.this.f17734c.g(), w7Var);
                    z0 z0Var2 = z0.this;
                    z0Var2.f17738g.a(w7.EVENT_REPORT_CALL_CLICK_CODE, z0Var2.f17735d);
                }
            }
            if (z0.this.f17734c.b() == EnumC1130d.SPLASH) {
                d(z9.a.AD_CLOSE);
            }
        }

        @Override // com.beizi.fusion.z9
        public void a(z9.a aVar) {
            if (z9.a.AD_CLOSE == aVar) {
                if (z0.this.f17733b.isIndependentAd()) {
                    z0 z0Var = z0.this;
                    z0Var.f17746o.a(aVar, z0Var.f17735d, z0Var.n());
                    return;
                }
                return;
            }
            z0 z0Var2 = z0.this;
            z0Var2.f17746o.a(aVar, z0Var2.f17735d, z0Var2.n());
        }
    }

    public class c implements ob {
        private c() {
        }

        @Override // com.beizi.fusion.ob
        public void a(Map map) {
            z0.this.b(map);
        }

        @Override // com.beizi.fusion.ob
        public void b(Map map) {
            z0.this.a(map);
        }

        @Override // com.beizi.fusion.ob
        public int getECPM() {
            return z0.this.o();
        }
    }

    public class d implements ic {

        /* renamed from: a, reason: collision with root package name */
        private boolean f17759a = false;

        /* renamed from: b, reason: collision with root package name */
        private boolean f17760b = false;

        /* renamed from: c, reason: collision with root package name */
        private final u9.a f17761c = new a();

        public class a implements u9.a {
            public a() {
            }

            @Override // com.beizi.fusion.u9.a
            public void a() {
                z0 z0Var = z0.this;
                z0Var.f17738g.a(w7.EVENT_REPORT_CALL_EXPOSURE_CODE, z0Var.f17735d);
                z0.this.f17735d.setCallbackExposure();
                if (z0.this.f17742k != null) {
                    z0.this.f17742k.b();
                }
            }

            @Override // com.beizi.fusion.u9.a
            public void b() {
                d.this.f17760b = true;
            }
        }

        public d() {
        }

        @Override // com.beizi.fusion.ab
        public void a(hc hcVar) {
        }

        @Override // com.beizi.fusion.ic
        public void b(za zaVar, View view) {
            if (this.f17760b || z0.this.f17747p == null || z0.this.f17742k == null) {
                return;
            }
            z0.this.f17747p.a(zaVar, view, z0.this.f17735d, this.f17761c);
            if (z0.this.f17748q != null) {
                z0.this.f17748q.a(z0.this.a());
            }
            d3 d3Var = z0.this.f17752u;
            if (d3Var != null) {
                d3Var.b();
            }
        }

        @Override // com.beizi.fusion.ic
        public void c(za zaVar, View view) {
            if (z0.this.f17748q != null) {
                z0.this.f17748q.d();
            }
            if (z0.this.f17735d.getShownTimestamp() == 0) {
                z0.this.f17735d.recordShownTimestamp();
            }
            if (z0.this.f17735d.isCallbackShown() || z0.this.f17742k == null) {
                return;
            }
            z0.this.f17735d.setCallbackShown();
            z0.this.f17742k.onAdShown();
            z0 z0Var = z0.this;
            z0Var.f17738g.a(w7.EVENT_REPORT_SHOW_CODE, z0Var.f17735d);
        }

        @Override // com.beizi.fusion.ic
        public void a(View view) {
            if (z0.this.f17748q != null) {
                z0.this.f17748q.c();
            }
        }

        @Override // com.beizi.fusion.ic
        public void b(View view) {
            if (this.f17759a) {
                return;
            }
            this.f17759a = true;
            lf lfVarA = z0.this.a(view);
            if (lfVarA != null) {
                lfVarA.a(view);
            }
            z0.this.f17735d.recordExposureTimestamp();
            q0 q0Var = z0.this.f17739h;
            String strG = z0.this.f17734c.g();
            w7 w7Var = w7.EVENT_REPORT_EXPOSURE_CODE;
            q0Var.a(strG, w7Var);
            z0 z0Var = z0.this;
            z0Var.f17746o.a(ic.a.AD_EXPOSURE, z0Var.f17735d, z0Var.n());
            z0 z0Var2 = z0.this;
            z0Var2.f17738g.a(w7Var, z0Var2.f17735d);
        }
    }

    public static class f {

        /* renamed from: a, reason: collision with root package name */
        private final List f17765a;

        /* renamed from: b, reason: collision with root package name */
        private final List f17766b;

        /* renamed from: c, reason: collision with root package name */
        private final List f17767c;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Context f17768a;

            public a(Context context) {
                this.f17768a = context;
            }

            @Override // java.lang.Runnable
            public void run() {
                l0.a(this.f17768a.getApplicationContext(), f.this.f17765a, f.this.f17766b, f.this.f17767c);
            }
        }

        private f(NativeModel nativeModel) {
            this.f17765a = new ArrayList();
            this.f17766b = new ArrayList();
            this.f17767c = new ArrayList();
            a(nativeModel);
        }

        private void a(NativeModel nativeModel) {
            if (nativeModel != null) {
                DownloadInfoModel downloadInfo = nativeModel.getDownloadInfo();
                if (downloadInfo != null) {
                    this.f17765a.add(downloadInfo.getIconUrl());
                }
                List<RenderModel> render = nativeModel.getRender();
                if (render != null) {
                    for (RenderModel renderModel : render) {
                        if (renderModel != null && renderModel.getViewModel() != null) {
                            String imageURL = renderModel.getViewModel().getImageURL();
                            if (!TextUtils.isEmpty(imageURL)) {
                                this.f17766b.add(imageURL);
                            }
                        }
                    }
                }
                List<AssetModel> asset = nativeModel.getAsset();
                if (asset != null) {
                    for (AssetModel assetModel : asset) {
                        if (assetModel != null) {
                            ImageModel image = assetModel.getImage();
                            if (image != null && !TextUtils.isEmpty(image.getUrl())) {
                                this.f17765a.add(image.getUrl());
                            }
                            if (image != null && !TextUtils.isEmpty(image.getPlaceHolder())) {
                                this.f17765a.add(image.getPlaceHolder());
                            }
                            VideoModel video = assetModel.getVideo();
                            if (video != null && !TextUtils.isEmpty(video.getUrl())) {
                                this.f17767c.add(video.getUrl());
                            }
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context) {
            ((hb) fn.a().b(context)).f(new a(context));
        }
    }

    public z0(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        this.f17732a = context;
        this.f17733b = adItemModel;
        this.f17741j = adItemModel.getBiddingModel();
        this.f17734c = daVar;
        this.f17735d = adTraceModel;
        this.f17736e = new e();
        this.f17740i = new c();
        this.f17738g = (s9) C1144p.a().b(context);
        this.f17739h = (q0) r0.a().b(context);
        d(adItemModel);
        c(adItemModel);
        NativeModel nativeModelA = a(adItemModel);
        a(nativeModelA);
        this.f17750s = (mb) v4.a().b(context);
        b(nativeModelA);
    }

    private boolean l() {
        C1150v c1150vA;
        C1135g c1135g = (C1135g) C1136h.a().b(this.f17732a);
        if (c1135g == null || (c1150vA = c1135g.a()) == null) {
            return true;
        }
        return c1150vA.x();
    }

    @Override // com.beizi.fusion.kb
    public boolean j() {
        return System.currentTimeMillis() < this.f17733b.getExpired();
    }

    public z9 m() {
        return new b();
    }

    public String n() {
        return this.f17733b.getAdnTraceTag();
    }

    public int o() {
        BiddingModel3 biddingModel3 = this.f17741j;
        return (int) (biddingModel3 != null ? biddingModel3.getPrice() : 0.0d);
    }

    public final void p() {
        z9 z9Var = this.f17737f;
        if (z9Var != null) {
            z9Var.d(z9.a.AD_CLOSE);
        }
    }

    public d q() {
        return new d();
    }

    public g r() {
        return new g();
    }

    public class e implements fd {
        private e() {
        }

        @Override // com.beizi.fusion.ab
        public void a(ed edVar) {
        }

        @Override // com.beizi.fusion.fd
        public void a(View view, fd.a aVar) {
            ScopeExpressContainer scopeExpressContainer;
            lf lfVarF;
            if (z0.this.f17749r != null) {
                z0.this.f17749r.a();
            }
            if (z0.this.f17743l != null) {
                z0.this.f17743l.f();
            }
            if (z0.this.f17748q != null) {
                z0.this.f17748q.e();
            }
            z0.this.f17735d.setInteractiveType(aVar.getEventCode());
            if (view instanceof ScopeExpressContainer) {
                scopeExpressContainer = (ScopeExpressContainer) view;
            } else {
                scopeExpressContainer = view != null ? (ScopeExpressContainer) view.getTag(gm.a(z0.this.f17732a, "scope_root_container")) : null;
            }
            if (scopeExpressContainer != null && (lfVarF = ScopeExpressContainer.d.f(scopeExpressContainer)) != null) {
                lfVarF.a(scopeExpressContainer);
                lfVarF.a(view, aVar.getEventCode());
            }
            if (aVar == fd.a.LANDING_PAGE_ENDCARD_INTERACTIVE_TRIGGER) {
                z0 z0Var = z0.this;
                z0Var.f17746o.a(z9.a.AD_CLICK, z0Var.f17735d, z0Var.n());
                z0 z0Var2 = z0.this;
                z0Var2.f17738g.a(w7.EVENT_REPORT_CLICK_CODE, z0Var2.f17735d);
            }
        }
    }

    public class g implements kf {
        public g() {
        }

        @Override // com.beizi.fusion.ab
        public void a(jf jfVar) {
        }

        @Override // com.beizi.fusion.kf
        public void b(za zaVar, int i2) {
            if (z0.this.f17744m != null) {
                z0.this.f17744m.a();
            }
        }

        @Override // com.beizi.fusion.kf
        public void c(za zaVar) {
            if (z0.this.f17744m != null) {
                z0.this.f17744m.e();
            }
        }

        @Override // com.beizi.fusion.kf
        public void e(za zaVar) {
            if (z0.this.f17744m != null) {
                z0.this.f17744m.d();
            }
        }

        @Override // com.beizi.fusion.kf
        public void i(za zaVar) {
            if (z0.this.f17744m != null) {
                z0.this.f17744m.g();
            }
        }

        @Override // com.beizi.fusion.kf
        public void j(za zaVar) {
            if (z0.this.f17744m != null) {
                z0.this.f17744m.g();
            }
        }

        @Override // com.beizi.fusion.kf
        public void a(za zaVar, int i2) {
            if (z0.this.f17744m != null) {
                z0.this.f17744m.a(i2);
            }
        }
    }

    private void c(AdItemModel adItemModel) {
        u9 u9Var = (u9) g0.a().b(this.f17732a);
        this.f17747p = u9Var;
        if (adItemModel != null) {
            u9Var.a(adItemModel.getReport());
        }
    }

    private void d(AdItemModel adItemModel) {
        v9 v9Var = (v9) j0.a().b(this.f17732a);
        this.f17746o = v9Var;
        v9Var.a(adItemModel);
    }

    @Override // com.beizi.fusion.kb
    public void b() {
        this.f17751t = null;
    }

    @Override // com.beizi.fusion.kb
    public Map e() {
        return C1148t.a().a(this.f17732a, this.f17734c, this.f17735d, this.f17733b);
    }

    @Override // com.beizi.fusion.kb
    public ob f() {
        return this.f17740i;
    }

    private void a(NativeModel nativeModel) {
        f fVar = new f(nativeModel);
        this.f17751t = fVar;
        fVar.a(this.f17732a.getApplicationContext());
    }

    public void b(Map map) {
        if (map != null) {
            BiddingModel3 biddingModel3 = this.f17741j;
            String winURL = biddingModel3 != null ? biddingModel3.getWinURL() : "";
            if (TextUtils.isEmpty(winURL)) {
                return;
            }
            String str = (String) map.get("winPrice");
            String str2 = (String) map.get("secHighPrice");
            String str3 = (String) map.get("adnId");
            w4 w4Var = new w4(str, str2, "", str3, (String) map.get("expectPrice"), (String) map.get("auctionPrice"));
            rm.d("NativeImpl", "上报竞价结果... 竞价成功 竞成价格:" + str + " 次高价: " + str2 + " adn " + str3);
            this.f17735d.setWinPrice(str);
            this.f17735d.setBidResult("1");
            a(winURL, w4Var);
        }
    }

    @Override // com.beizi.fusion.kb
    public void a(gc gcVar) {
        this.f17742k = gcVar;
    }

    @Override // com.beizi.fusion.kb
    public void a(cd cdVar) {
        this.f17743l = cdVar;
    }

    @Override // com.beizi.fusion.kb
    public void a(hf hfVar) {
        this.f17744m = hfVar;
    }

    public void a(Map map) {
        if (map != null) {
            BiddingModel3 biddingModel3 = this.f17741j;
            String loseURL = biddingModel3 != null ? biddingModel3.getLoseURL() : "";
            if (TextUtils.isEmpty(loseURL)) {
                return;
            }
            String str = (String) map.get("winPrice");
            String str2 = (String) map.get("lossReason");
            String str3 = (String) map.get("secHighPrice");
            String str4 = (String) map.get("adnId");
            w4 w4Var = new w4(str, str3, str2, str4, (String) map.get("expectPrice"), (String) map.get("auctionPrice"));
            rm.d("NativeImpl", "上报竞价结果... 竞价失败 竞成价格:" + str + " 原因: " + str2 + " adn " + str4);
            this.f17735d.setWinPrice(str);
            this.f17735d.setBidResult("0");
            a(loseURL, w4Var);
        }
    }

    private void b(NativeModel nativeModel) {
        if (nativeModel != null && nativeModel.getIncome() != null) {
            a(nativeModel.getIncome().getOptimizeModelList());
            a(nativeModel.getIncome().getLandingOptimizeModel());
            d3 d3Var = new d3(this.f17732a, nativeModel.getIncome().getInvoke());
            this.f17752u = d3Var;
            d3Var.a(this.f17736e);
            return;
        }
        d3 d3Var2 = new d3(this.f17732a, 0);
        this.f17752u = d3Var2;
        d3Var2.a(this.f17736e);
    }

    private void a(LandingOptimizeModel landingOptimizeModel) {
        if (landingOptimizeModel == null || !pl.a(landingOptimizeModel.getRandom())) {
            return;
        }
        vg vgVar = new vg(this.f17732a, landingOptimizeModel);
        this.f17749r = vgVar;
        vgVar.a(this.f17736e);
    }

    public ReportModel3 b(AdItemModel adItemModel) {
        if (adItemModel != null) {
            return adItemModel.getReport();
        }
        return null;
    }

    private void a(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        boolean z2 = false;
        OptimizeModel optimizeModel = (OptimizeModel) list.get(0);
        mb mbVar = this.f17750s;
        if (mbVar != null && mbVar.a("4dcfae5406670c0ebd29c13c287229d7", m0.e(), 8)) {
            z2 = true;
        }
        if (optimizeModel == null || !z2) {
            return;
        }
        C1134f.a(this.f17732a).a("4dcfae5406670c0ebd29c13c287229d7");
        ti tiVar = new ti(this.f17732a, optimizeModel);
        this.f17748q = tiVar;
        tiVar.a(this.f17736e);
    }

    private void a(String str, w4 w4Var) {
        new an(this.f17732a, true).a(ul.a(str, w4Var.getMacrosReplaceMap()), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public lf a(View view) {
        if (view != 0) {
            ScopeExpressContainer expressRoot = view instanceof je ? ((je) view).getExpressRoot() : null;
            if (view instanceof ScopeExpressContainer) {
                expressRoot = (ScopeExpressContainer) view;
            }
            if (expressRoot != null) {
                return ScopeExpressContainer.d.f(expressRoot);
            }
        }
        return null;
    }

    public NativeModel a(AdItemModel adItemModel) {
        if (adItemModel != null) {
            return adItemModel.getNativeModel();
        }
        return null;
    }

    public zc a(Object obj, String str, String str2) {
        zc zcVarA = ag.a(this.f17732a, str, l());
        if (zcVarA != null) {
            if (zcVarA instanceof ad) {
                this.f17735d.addSensorRecorder(((ad) zcVarA).c());
            }
            zcVarA.a(obj, this.f17734c.b());
            NativeModel nativeModelA = a(this.f17733b);
            if (nativeModelA != null) {
                fc fcVarA = a(str2, nativeModelA.getLink() != null ? nativeModelA.getLink().getInteractType() : -1, nativeModelA, n());
                ti tiVar = this.f17748q;
                if (tiVar != null) {
                    tiVar.a(fcVarA, obj);
                }
                d3 d3Var = this.f17752u;
                if (d3Var != null) {
                    d3Var.a(fcVarA, obj);
                }
                vg vgVar = this.f17749r;
                if (vgVar != null) {
                    vgVar.a(fcVarA, obj);
                }
                if (fcVarA != null) {
                    zcVarA.a(fcVarA);
                    if (zcVarA instanceof ya) {
                        ya yaVar = (ya) zcVarA;
                        if (yaVar.d() != null) {
                            yaVar.d().a(this.f17736e);
                        }
                    }
                }
            }
        }
        return zcVarA;
    }

    public fc a(String str, int i2, NativeModel nativeModel, String str2) {
        xa xaVarD;
        fc fcVarA = f1.a(str, i2);
        if (fcVarA != null) {
            fcVarA.a(this.f17732a, nativeModel, str2);
            if ((fcVarA instanceof ya) && (xaVarD = ((ya) fcVarA).d()) != null) {
                xaVarD.a(this.f17737f);
            }
        }
        return fcVarA;
    }
}
