package com.beizi.fusion;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.land.LandingOptimizeModel;
import com.beizi.fusion.asnp.adn.ad.widget.activity.ASNPLandingPageActivity;
import com.beizi.fusion.fd;
import com.beizi.fusion.jn;

/* loaded from: classes2.dex */
public class vg {

    /* renamed from: d, reason: collision with root package name */
    private final Context f16669d;

    /* renamed from: e, reason: collision with root package name */
    private final LandingOptimizeModel f16670e;

    /* renamed from: f, reason: collision with root package name */
    private fd f16671f;

    /* renamed from: g, reason: collision with root package name */
    private fc f16672g;

    /* renamed from: h, reason: collision with root package name */
    private final zc f16673h;

    /* renamed from: j, reason: collision with root package name */
    private FrameLayout f16675j;

    /* renamed from: k, reason: collision with root package name */
    private e f16676k;

    /* renamed from: a, reason: collision with root package name */
    private final int f16666a = 0;

    /* renamed from: b, reason: collision with root package name */
    private final int f16667b = 1;

    /* renamed from: c, reason: collision with root package name */
    private final int f16668c = 2;

    /* renamed from: i, reason: collision with root package name */
    private int f16674i = 0;

    /* renamed from: l, reason: collision with root package name */
    private boolean f16677l = false;

    /* renamed from: m, reason: collision with root package name */
    private long f16678m = 0;

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (vg.this.f16673h instanceof eg) {
                vg.this.f16677l = true;
                ((eg) vg.this.f16673h).b(fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER);
            }
        }
    }

    public class c implements qc {
        public c() {
        }

        @Override // com.beizi.fusion.qc
        public void a() {
        }

        @Override // com.beizi.fusion.qc
        public void b() {
            vg.this.a(1);
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (vg.this.f16673h instanceof eg) {
                vg.this.f16677l = true;
                ((eg) vg.this.f16673h).b(fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER);
            }
        }
    }

    public interface e {
        void a();

        void a(Context context, String str, boolean z2);

        void a(FrameLayout frameLayout);

        void b();

        void c();

        void d();

        void e();
    }

    public class f extends jd {
        private f() {
        }

        @Override // com.beizi.fusion.jd
        public void a(ASNPLandingPageActivity aSNPLandingPageActivity) {
            super.a(aSNPLandingPageActivity);
            if (aSNPLandingPageActivity != null) {
                aSNPLandingPageActivity.a(vg.this.f16676k);
            }
            C1127b0.a().b().a(this);
        }

        public /* synthetic */ f(vg vgVar, a aVar) {
            this();
        }
    }

    public vg(Context context, LandingOptimizeModel landingOptimizeModel) {
        this.f16669d = context;
        this.f16670e = landingOptimizeModel;
        this.f16673h = ag.a(context, "invoke", false);
    }

    public static /* synthetic */ int h(vg vgVar) {
        int i2 = vgVar.f16674i;
        vgVar.f16674i = i2 + 1;
        return i2;
    }

    private boolean b(int i2) {
        LandingOptimizeModel landingOptimizeModel = this.f16670e;
        return landingOptimizeModel != null && landingOptimizeModel.getAutoOpen() == 1 && this.f16670e.getAutoOpenType() == i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(FrameLayout frameLayout) {
        if (TextUtils.isEmpty(this.f16670e.getUrl())) {
            return;
        }
        FrameLayout frameLayout2 = new FrameLayout(this.f16669d);
        this.f16675j = frameLayout2;
        frameLayout2.setBackgroundColor(Color.parseColor("#66000000"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        int iA = jn.a.a(this.f16669d, 30.0f);
        this.f16675j.setLayoutParams(layoutParams);
        this.f16675j.setPadding(iA, 0, iA, 0);
        this.f16675j.addView(a(this.f16670e.getUrl()));
        if (this.f16670e.getShowMask() == 1) {
            this.f16675j.setOnClickListener(new b());
        }
        if (frameLayout != null) {
            frameLayout.addView(this.f16675j);
        }
    }

    public class a implements e {
        public a() {
        }

        @Override // com.beizi.fusion.vg.e
        public void a() {
            if (vg.this.f16677l && vg.this.f16678m > 0 && vg.this.f16670e.getAgainOpen() == 1 && System.currentTimeMillis() - vg.this.f16678m < vg.this.f16670e.getAgainOpenTime() && (vg.this.f16673h instanceof eg)) {
                ((eg) vg.this.f16673h).b(fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER);
            }
            vg.this.f16678m = 0L;
        }

        @Override // com.beizi.fusion.vg.e
        public void b() {
            if (vg.this.f16677l && vg.this.f16678m <= 0) {
                vg.h(vg.this);
                if (vg.this.f16670e == null || vg.this.f16670e.getRepeatOpen() != 1 || vg.this.f16674i >= vg.this.f16670e.getRepeatOpenCount()) {
                    vg.this.b();
                }
            }
            vg.this.f16677l = false;
        }

        @Override // com.beizi.fusion.vg.e
        public void c() {
        }

        @Override // com.beizi.fusion.vg.e
        public void d() {
            vg.this.a(2);
        }

        @Override // com.beizi.fusion.vg.e
        public void e() {
            if (vg.this.f16677l) {
                vg.this.b();
                vg.this.f16678m = System.currentTimeMillis();
            }
        }

        @Override // com.beizi.fusion.vg.e
        public void a(FrameLayout frameLayout) {
            vg.this.a(frameLayout);
            vg.this.b(frameLayout);
        }

        @Override // com.beizi.fusion.vg.e
        public void a(Context context, String str, boolean z2) {
            if (z2) {
                if (vg.this.f16673h instanceof eg) {
                    vg.this.f16677l = true;
                    ((eg) vg.this.f16673h).a(context, str);
                    return;
                }
                return;
            }
            if (vg.this.f16673h instanceof eg) {
                vg.this.f16677l = true;
                ((eg) vg.this.f16673h).a(context, str);
            }
        }
    }

    public void a(fd fdVar) {
        this.f16671f = fdVar;
    }

    public void a(fc fcVar, Object obj) {
        if (fcVar instanceof ja) {
            this.f16672g = fcVar;
        }
    }

    public void a() {
        C1127b0.a().b().b(new f(this, null));
        this.f16676k = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FrameLayout frameLayout) {
        this.f16673h.a((Object) null);
        this.f16673h.a(frameLayout, null);
        this.f16673h.a(this.f16672g);
        zc zcVar = this.f16673h;
        if (zcVar instanceof ya) {
            ((ya) zcVar).d().a(this.f16671f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        if (b(i2)) {
            zc zcVar = this.f16673h;
            if (zcVar instanceof eg) {
                this.f16677l = true;
                ((eg) zcVar).b(fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ScopeExpressContainer.d.a(this.f16675j);
    }

    private ImageView a(String str) {
        ImageView imageView = new ImageView(this.f16669d);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        a(0);
        pf.a(this.f16669d).b(str).a(new c()).a(imageView);
        imageView.setOnClickListener(new d());
        return imageView;
    }
}
