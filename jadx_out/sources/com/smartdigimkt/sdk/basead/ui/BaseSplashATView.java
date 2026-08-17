package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.a.b;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.smartdigimkt.a4.f;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.p1.a;
import com.smartdigimkt.p1.u;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.v1.a2;
import com.smartdigimkt.v1.b2;
import com.smartdigimkt.v1.b3;
import com.smartdigimkt.v1.j3;
import com.smartdigimkt.v1.w1;
import com.smartdigimkt.v1.x1;
import com.smartdigimkt.v1.z1;
import com.smartdigimkt.x.n;
import com.smartdigimkt.y3.h;
import com.smartdigimkt.z.z;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public abstract class BaseSplashATView extends BaseATView {

    /* renamed from: d0, reason: collision with root package name */
    public static final /* synthetic */ int f43328d0 = 0;

    /* renamed from: E, reason: collision with root package name */
    public final TextView f43329E;

    /* renamed from: F, reason: collision with root package name */
    public final CloseFrameLayout f43330F;

    /* renamed from: G, reason: collision with root package name */
    public ViewGroup f43331G;

    /* renamed from: H, reason: collision with root package name */
    public final String f43332H;

    /* renamed from: I, reason: collision with root package name */
    public Timer f43333I;

    /* renamed from: J, reason: collision with root package name */
    public volatile boolean f43334J;

    /* renamed from: K, reason: collision with root package name */
    public a f43335K;

    /* renamed from: L, reason: collision with root package name */
    public j3 f43336L;

    /* renamed from: M, reason: collision with root package name */
    public final f f43337M;

    /* renamed from: N, reason: collision with root package name */
    public long f43338N;

    /* renamed from: O, reason: collision with root package name */
    public long f43339O;

    /* renamed from: P, reason: collision with root package name */
    public boolean f43340P;

    /* renamed from: Q, reason: collision with root package name */
    public n f43341Q;

    /* renamed from: R, reason: collision with root package name */
    public final w1 f43342R;

    /* renamed from: S, reason: collision with root package name */
    public t f43343S;

    /* renamed from: T, reason: collision with root package name */
    public Map f43344T;

    /* renamed from: U, reason: collision with root package name */
    public int f43345U;

    /* renamed from: V, reason: collision with root package name */
    public final AtomicInteger f43346V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f43347W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f43348a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f43349b0;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f43350c0;

    public BaseSplashATView(Context context) {
        super(context);
        this.f43332H = "Skip";
        this.f43338N = 5000L;
        this.f43339O = 5000L;
        this.f43340P = false;
        this.f43342R = new w1(this);
        this.f43345U = 2;
        this.f43346V = new AtomicInteger(1);
        this.f43347W = false;
        this.f43348a0 = false;
        this.f43349b0 = false;
    }

    public final void a(com.smartdigimkt.i0.f fVar) {
        if (this.f43347W) {
            return;
        }
        this.f43347W = true;
        a aVar = this.f43335K;
        if (aVar != null) {
            aVar.onShowFailed(fVar);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void b() {
        com.smartdigimkt.l3.a aVar = this.f43216b;
        if (aVar != null) {
            this.f43343S = new t(this.f43217c, aVar.f41644r);
        }
    }

    public void beforeSplashEndCardShow() {
        a(TTVideoEngine.PLAYER_BUFFERING_DATA_OF_MILLISECONDS);
        Map map = this.f43344T;
        if (map != null) {
            map.put(b.C0047b.f2182d, 1);
        }
    }

    public void checkSkipViewLocation() {
        try {
            ViewGroup.LayoutParams layoutParams = this.f43329E.getLayoutParams();
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                int iE = ((FrameLayout.LayoutParams) layoutParams).topMargin + k.e(getContext());
                int[] iArr = new int[2];
                this.f43329E.getLocationOnScreen(iArr);
                int i2 = iArr[1];
                if (i2 < iE) {
                    int i3 = iE - i2;
                    ViewParent parent = this.f43329E.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).setPadding(((ViewGroup) parent).getPaddingLeft(), ((ViewGroup) parent).getPaddingTop() + i3, ((ViewGroup) parent).getPaddingRight(), ((ViewGroup) parent).getPaddingBottom());
                    }
                    View viewFindViewById = findViewById(k.a(getContext(), "myoffer_btn_mute_id", "id"));
                    if (viewFindViewById != null && (viewFindViewById.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                        layoutParams2.topMargin += i3;
                        viewFindViewById.setLayoutParams(layoutParams2);
                    }
                    View viewFindViewById2 = findViewById(k.a(getContext(), "myoffer_feedback_ll_id", "id"));
                    if (viewFindViewById2 == null || !(viewFindViewById2.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams();
                    layoutParams3.topMargin += i3;
                    viewFindViewById2.setLayoutParams(layoutParams3);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        this.f43335K = null;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void g() {
        a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, com.anythink.core.common.inner.b.b.ag));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public int getATViewType() {
        return 3;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public RelativeLayout.LayoutParams getSpecialNoteViewLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f43216b.f41644r.f41951m == 2) {
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, 0, k.a(getContext(), 154.0f));
            return layoutParams;
        }
        int measuredHeight = (getMeasuredHeight() * 2) / 3;
        layoutParams.addRule(11);
        layoutParams.setMargins(0, measuredHeight, 0, 0);
        return layoutParams;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void h() {
        this.f43347W = true;
        a aVar = this.f43335K;
        if (aVar != null) {
            aVar.onAdShow(new u());
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void i() {
        if (!(this.f43217c instanceof com.smartdigimkt.m3.k) || this.f43336L == null) {
            return;
        }
        post(new b2(this));
    }

    public boolean isSplashSkipCountReadyForBubbleVibration() {
        com.smartdigimkt.l3.a aVar;
        e eVar;
        if (this.f43350c0 || (aVar = this.f43216b) == null || (eVar = aVar.f41644r) == null) {
            return true;
        }
        long j2 = eVar.f41948l;
        return j2 <= 1000 || this.f43338N <= j2 - 2000;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void j() {
        if (this.f43217c instanceof com.smartdigimkt.m3.k) {
            if (this.f43336L == null) {
                this.f43336L = new j3(this);
            }
            this.f43336L.a();
        }
    }

    public boolean n() {
        return false;
    }

    public boolean needShowSplashEndCard() {
        return (!this.f43222h || this.f43340P) && z.g(this.f43217c, this.f43216b);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(3, false);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        checkSkipViewLocation();
    }

    public void onSplashEndCardCountDownTick(long j2) {
        this.f43340P = true;
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z2) {
        super.onVisibilityAggregated(z2);
        if (z2) {
            a(110);
        } else {
            a(111);
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (Build.VERSION.SDK_INT < 28) {
            if (z2) {
                a(110);
            } else {
                a(111);
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 != 0 || this.f43348a0) {
            return;
        }
        this.f43348a0 = true;
        if (this.f43350c0) {
            return;
        }
        this.f43330F.setVisibility(0);
        this.f43330F.setOnClickListener(new x1(this));
        this.f43349b0 = false;
        Timer timer = new Timer();
        this.f43333I = timer;
        timer.schedule(new z1(this), 1000L, 1000L);
        a(this.f43338N);
        this.f43338N -= 1000;
    }

    public void setAdExtraInfoMap(Map<String, Object> map) {
        this.f43344T = map;
    }

    public void setDontCountDown(boolean z2) {
        CloseFrameLayout closeFrameLayout;
        this.f43350c0 = z2;
        if (!z2 || (closeFrameLayout = this.f43330F) == null) {
            return;
        }
        closeFrameLayout.setVisibility(8);
    }

    public final void a(long j2) {
        if (this.f43216b.f41644r.f41945k == 0) {
            this.f43329E.setText((j2 / 1000) + "s | " + this.f43332H);
            return;
        }
        this.f43329E.setText((j2 / 1000) + " s");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(u uVar) {
        e eVar;
        a aVar = this.f43335K;
        if (aVar != null) {
            aVar.onAdClick(uVar);
        }
        c cVar = this.f43217c;
        if (cVar == null || (eVar = cVar.f41832w) == null || eVar.f41848D0 != 1) {
            return;
        }
        com.smartdigimkt.b4.e.a().a(new a2(this));
    }

    public BaseSplashATView(Context context, com.smartdigimkt.l3.a aVar, c cVar, a aVar2) {
        Drawable directlySplashAdCTAButtongBgDrawable;
        e eVar;
        super(context, aVar, cVar);
        this.f43332H = "Skip";
        this.f43338N = 5000L;
        this.f43339O = 5000L;
        this.f43340P = false;
        this.f43342R = new w1(this);
        this.f43345U = 2;
        int iA = 1;
        this.f43346V = new AtomicInteger(1);
        this.f43347W = false;
        this.f43348a0 = false;
        this.f43349b0 = false;
        if (cVar != null && (eVar = cVar.f41832w) != null) {
            iA = eVar.a();
        }
        this.f43337M = new f(iA);
        this.f43335K = aVar2;
        this.f43332H = getResources().getString(k.a(getContext(), "myoffer_splash_skip_text", "string"));
        this.f43329E = (TextView) findViewById(k.a(getContext(), "myoffer_splash_skip", "id"));
        CloseFrameLayout closeFrameLayout = (CloseFrameLayout) findViewById(k.a(getContext(), "myoffer_splash_skip_area", "id"));
        this.f43330F = closeFrameLayout;
        this.f43331G = (ViewGroup) findViewById(k.a(getContext(), "myoffer_feedback_ll_id", "id"));
        this.f43338N = this.f43216b.f41644r.f41948l;
        this.f43334J = false;
        a((b3) closeFrameLayout, false);
        if (cVar.e() == 4) {
            try {
                View view = this.f43228n;
                if (view != null && (view instanceof CTAButtonLayout) && (directlySplashAdCTAButtongBgDrawable = SDMSDK.getInstance().getDirectlyOfferSetting().getDirectlySplashAdCTAButtongBgDrawable()) != null) {
                    ((CTAButtonLayout) this.f43228n).changeMajorButtonBackground(directlySplashAdCTAButtongBgDrawable);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        com.smartdigimkt.l3.a aVar3 = this.f43216b;
        this.f43339O = aVar3.f41644r.f41851E0;
        new l(this.f43217c, aVar3).a(this);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public final void a(boolean z2) {
        a aVar = this.f43335K;
        if (aVar != null) {
            aVar.onDeeplinkCallback(z2);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void a(int i2, int i3) {
        super.a(i2, i3);
        a((b3) this.f43330F, true);
    }

    public void a(int i2, boolean z2) {
        e eVar;
        e eVar2;
        d dVar;
        Timer timer = this.f43333I;
        if (timer != null) {
            timer.cancel();
        }
        this.f43333I = null;
        if (!((i2 != 2 && i2 != 7) || (eVar = this.f43216b.f41644r) == null || eVar.f41846C1 == 1) || this.f43334J) {
            return;
        }
        if (i2 == 2 && n()) {
            Map map = this.f43344T;
            if (map != null) {
                map.put(b.C0047b.f2181c, 1);
                return;
            }
            return;
        }
        this.f43334J = true;
        this.f43345U = i2;
        if (i2 == 6 && (dVar = this.f43229o) != null) {
            dVar.d();
        }
        if (i2 == 1 && this.f43349b0 && (eVar2 = this.f43216b.f41644r) != null && eVar2.f41846C1 != 1) {
            i2 = 11;
        }
        a(115);
        if (!this.f43347W) {
            a(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4594k, "SplashView not showing on screen."));
        }
        h.a(this.f43217c, this.f43216b, this.f43240z, this.f43239y);
        Map map2 = this.f43344T;
        if (map2 != null) {
            map2.put(b.C0047b.f2179a, Integer.valueOf(i2));
            this.f43344T.put(b.C0047b.f2180b, Boolean.valueOf(z2));
        }
        a aVar = this.f43335K;
        if (aVar != null) {
            aVar.onAdClosed();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseATView
    public void a(int i2) {
        super.a(i2);
        if (i2 == 110) {
            this.f43346V.set(2);
        } else {
            if (i2 != 111) {
                return;
            }
            this.f43346V.set(3);
        }
    }
}
