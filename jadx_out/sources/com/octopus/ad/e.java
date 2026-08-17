package com.octopus.ad;

import android.app.Activity;
import android.content.MutableContextWrapper;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.octopus.ad.AdActivity;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.utilities.ViewUtil;

/* loaded from: classes4.dex */
public class e implements AdActivity.a {

    /* renamed from: a, reason: collision with root package name */
    private final Activity f34085a;

    /* renamed from: b, reason: collision with root package name */
    private com.octopus.ad.internal.e.b f34086b;

    /* renamed from: c, reason: collision with root package name */
    private com.octopus.ad.internal.e.c f34087c;

    /* renamed from: d, reason: collision with root package name */
    private FrameLayout f34088d;

    /* renamed from: e, reason: collision with root package name */
    private FrameLayout.LayoutParams f34089e;

    /* renamed from: f, reason: collision with root package name */
    private long f34090f;

    /* renamed from: g, reason: collision with root package name */
    private com.octopus.ad.internal.e.f f34091g;

    public e(Activity activity) {
        this.f34085a = activity;
    }

    @Override // com.octopus.ad.AdActivity.a
    public void a() {
        com.octopus.ad.internal.e.f fVar = com.octopus.ad.internal.e.f.f34875t;
        if (fVar == null || fVar.getAdQueue() == null) {
            this.f34085a.finish();
            return;
        }
        com.octopus.ad.internal.e.e eVarPeek = com.octopus.ad.internal.e.f.f34875t.getAdQueue().peek();
        if (eVarPeek == null || eVarPeek.c() == null) {
            this.f34085a.finish();
            return;
        }
        try {
            WindowManager.LayoutParams attributes = this.f34085a.getWindow().getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            this.f34085a.getWindow().setAttributes(attributes);
            com.octopus.ad.internal.e.b bVarC = eVarPeek.c();
            if (bVarC.n()) {
                this.f34085a.setTheme(R.style.OctopusDialogStyle);
            } else {
                this.f34085a.setTheme(R.style.OctopusDialogStyleTran);
            }
            if (bVarC.m()) {
                this.f34085a.setTheme(R.style.OctopusTheme_Black);
                ViewUtil.hideSystemTitleBarUI(this.f34085a);
            }
            this.f34088d = new FrameLayout(this.f34085a);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
            this.f34089e = layoutParams;
            this.f34088d.setLayoutParams(layoutParams);
            this.f34085a.setContentView(this.f34088d);
            this.f34090f = this.f34085a.getIntent().getLongExtra("TIME", System.currentTimeMillis());
            a(com.octopus.ad.internal.e.f.f34875t);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            this.f34085a.finish();
        }
    }

    @Override // com.octopus.ad.AdActivity.a
    public void b() {
        com.octopus.ad.internal.e.b bVar = this.f34086b;
        if (bVar != null) {
            d dVar = bVar.f34845d;
            if (dVar != null) {
                dVar.n();
            }
            com.octopus.ad.internal.e.f fVar = this.f34091g;
            if (fVar != null) {
                fVar.onResumeLifeCycle();
            }
        }
    }

    @Override // com.octopus.ad.AdActivity.a
    public void c() {
        com.octopus.ad.internal.e.b bVar = this.f34086b;
        if (bVar != null) {
            d dVar = bVar.f34845d;
            if (dVar != null) {
                dVar.m();
            }
            com.octopus.ad.internal.e.f fVar = this.f34091g;
            if (fVar != null) {
                fVar.onPauseLifeCycle();
            }
        }
    }

    @Override // com.octopus.ad.AdActivity.a
    public void d() throws IllegalStateException {
        com.octopus.ad.internal.e.b bVar = this.f34086b;
        if (bVar != null) {
            ViewUtil.removeChildFromParent(bVar.f34844c);
            this.f34086b.k();
            d dVar = this.f34086b.f34845d;
            if (dVar != null) {
                dVar.k();
            }
        }
        com.octopus.ad.internal.e.f fVar = this.f34091g;
        if (fVar != null) {
            fVar.setAdImplementation(null);
            this.f34091g.onDestroyLifeCycle();
            this.f34091g.destroy();
            this.f34091g = null;
        }
        this.f34085a.finish();
    }

    @Override // com.octopus.ad.AdActivity.a
    public void e() {
    }

    public void f() {
        com.octopus.ad.internal.e.c cVarC;
        com.octopus.ad.internal.e.c cVar;
        com.octopus.ad.internal.e.b bVar = this.f34086b;
        if (bVar == null || (cVarC = bVar.c()) == (cVar = this.f34087c)) {
            return;
        }
        this.f34088d.removeView(cVar.getView());
        if (cVarC instanceof d) {
            this.f34088d.addView(cVarC.getView(), new ViewGroup.LayoutParams(-1, -1));
        } else {
            this.f34088d.addView(cVarC.getView(), new ViewGroup.LayoutParams(-1, -1));
        }
        this.f34087c = cVarC;
        cVarC.l();
    }

    private void a(com.octopus.ad.internal.e.f fVar) {
        int i2;
        int creativeWidth;
        float creativeHeight;
        float f2;
        this.f34091g = fVar;
        if (fVar == null) {
            return;
        }
        fVar.setAdImplementation(this);
        this.f34088d.setBackgroundColor(this.f34091g.getBackgroundColor());
        this.f34088d.removeAllViews();
        if (this.f34091g.getParent() != null) {
            ((ViewGroup) this.f34091g.getParent()).removeAllViews();
        }
        com.octopus.ad.internal.e.e eVarPoll = this.f34091g.getAdQueue().poll();
        while (eVarPoll != null && (this.f34090f - eVarPoll.a() > q.f34985y || this.f34090f - eVarPoll.a() < 0)) {
            com.octopus.ad.internal.c.f.d(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.too_old));
            eVarPoll = this.f34091g.getAdQueue().poll();
        }
        if (eVarPoll == null || eVarPoll.c() == null) {
            return;
        }
        com.octopus.ad.internal.e.b bVarC = eVarPoll.c();
        this.f34086b = bVarC;
        if (bVarC.a() instanceof MutableContextWrapper) {
            ((MutableContextWrapper) this.f34086b.a()).setBaseContext(this.f34085a);
            d dVar = this.f34086b.f34845d;
            if (dVar != null) {
                ((MutableContextWrapper) dVar.getContext()).setBaseContext(this.f34085a);
            }
        }
        if ((this.f34086b.getCreativeWidth() != 1 || this.f34086b.getCreativeHeight() != 1) && this.f34085a.getResources().getConfiguration().orientation != 2) {
            try {
                i2 = this.f34091g.getAdParameters().b().getApplicationInfo().targetSdkVersion;
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                i2 = 0;
            }
            if (i2 > 26 && Build.VERSION.SDK_INT == 26) {
                com.octopus.ad.d.b.f.a("OctopusAd", "Only fullscreen activities can request orientation");
            } else {
                AdActivity.a(this.f34085a, this.f34086b.q());
            }
        }
        this.f34087c = this.f34086b.c();
        View view = this.f34086b.c().getView();
        if (view instanceof d) {
            FrameLayout frameLayout = new FrameLayout(this.f34085a);
            frameLayout.setBackgroundColor(-16777216);
            frameLayout.addView(view, this.f34089e);
            view = frameLayout;
        }
        if (this.f34086b.m()) {
            this.f34088d.addView(view, this.f34089e);
        } else {
            if (this.f34085a.getRequestedOrientation() == 0) {
                creativeWidth = (int) (this.f34086b.getCreativeHeight() * q.a().f35027u);
                creativeHeight = this.f34086b.getCreativeWidth();
                f2 = q.a().f35028v;
            } else {
                creativeWidth = (int) (this.f34086b.getCreativeWidth() * q.a().f35027u);
                creativeHeight = this.f34086b.getCreativeHeight();
                f2 = q.a().f35028v;
            }
            int i3 = (int) (creativeHeight * f2);
            int screenWidth = ViewUtil.getScreenWidth(this.f34086b.a());
            if (creativeWidth > screenWidth || creativeWidth <= 0) {
                creativeWidth = screenWidth;
            }
            int screenHeight = ViewUtil.getScreenHeight(this.f34086b.a());
            if (i3 > screenHeight || i3 <= 0) {
                i3 = screenHeight;
            }
            this.f34088d.addView(view, new FrameLayout.LayoutParams(creativeWidth, i3, 17));
            this.f34088d.setLayoutParams(new FrameLayout.LayoutParams(screenWidth, screenHeight, 17));
        }
        this.f34087c.l();
    }
}
