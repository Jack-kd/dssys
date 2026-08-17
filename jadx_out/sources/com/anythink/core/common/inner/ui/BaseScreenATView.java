package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.core.basead.ui.web.WebProgressBarView;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.e.d;
import com.anythink.core.common.inner.e.e;
import com.anythink.core.common.inner.ui.BaseEndCardView;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public abstract class BaseScreenATView extends BaseATView {
    public static final int FORMAT_INTERSTITIAL = 3;
    public static final int FORMAT_REWARD_VIDEO = 1;
    public static final String TAG = "BaseScreenATView";

    /* renamed from: A, reason: collision with root package name */
    protected ViewGroup f4851A;

    /* renamed from: B, reason: collision with root package name */
    protected MuteImageView f4852B;

    /* renamed from: C, reason: collision with root package name */
    com.anythink.core.common.inner.ui.e.a f4853C;

    /* renamed from: D, reason: collision with root package name */
    protected com.anythink.core.common.inner.ui.component.a f4854D;

    /* renamed from: E, reason: collision with root package name */
    protected d f4855E;

    /* renamed from: F, reason: collision with root package name */
    protected boolean f4856F;

    /* renamed from: G, reason: collision with root package name */
    protected int f4857G;

    /* renamed from: H, reason: collision with root package name */
    protected int f4858H;

    /* renamed from: I, reason: collision with root package name */
    protected int f4859I;

    /* renamed from: J, reason: collision with root package name */
    protected int f4860J;

    /* renamed from: K, reason: collision with root package name */
    private long f4861K;

    /* renamed from: L, reason: collision with root package name */
    private long f4862L;

    /* renamed from: M, reason: collision with root package name */
    private long f4863M;

    /* renamed from: N, reason: collision with root package name */
    private CountDownView f4864N;

    /* renamed from: O, reason: collision with root package name */
    private WebProgressBarView f4865O;

    /* renamed from: a, reason: collision with root package name */
    protected int f4866a;

    /* renamed from: b, reason: collision with root package name */
    protected int f4867b;

    /* renamed from: c, reason: collision with root package name */
    protected int f4868c;

    /* renamed from: d, reason: collision with root package name */
    protected int f4869d;
    public boolean hasClick;

    /* renamed from: l, reason: collision with root package name */
    protected int f4870l;

    /* renamed from: m, reason: collision with root package name */
    protected int f4871m;

    /* renamed from: n, reason: collision with root package name */
    protected int f4872n;
    public int nativeTemplateRatio;

    /* renamed from: o, reason: collision with root package name */
    protected boolean f4873o;

    /* renamed from: p, reason: collision with root package name */
    protected int f4874p;

    /* renamed from: q, reason: collision with root package name */
    protected long f4875q;

    /* renamed from: r, reason: collision with root package name */
    protected int f4876r;
    public int ranDom;

    /* renamed from: s, reason: collision with root package name */
    protected boolean f4877s;

    /* renamed from: t, reason: collision with root package name */
    protected boolean f4878t;

    /* renamed from: u, reason: collision with root package name */
    protected boolean f4879u;

    /* renamed from: v, reason: collision with root package name */
    protected RelativeLayout f4880v;

    /* renamed from: w, reason: collision with root package name */
    protected PanelView f4881w;

    /* renamed from: x, reason: collision with root package name */
    protected BaseEndCardView f4882x;

    /* renamed from: y, reason: collision with root package name */
    protected CloseImageView f4883y;

    /* renamed from: z, reason: collision with root package name */
    protected CloseShadeView f4884z;

    /* renamed from: com.anythink.core.common.inner.ui.BaseScreenATView$1, reason: invalid class name */
    public class AnonymousClass1 implements BaseEndCardView.a {
        public AnonymousClass1() {
        }

        @Override // com.anythink.core.common.inner.ui.BaseEndCardView.a
        public final void a() {
        }

        @Override // com.anythink.core.common.inner.ui.BaseEndCardView.a
        public final void b() {
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseScreenATView$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BaseScreenATView.this.l();
        }
    }

    public BaseScreenATView(Context context) {
        super(context);
        this.hasClick = false;
        this.nativeTemplateRatio = 1;
    }

    private void A() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i2 = displayMetrics.widthPixels;
        this.f4868c = i2;
        int i3 = displayMetrics.heightPixels;
        this.f4869d = i3;
        this.f4857G = i2;
        this.f4858H = i3;
    }

    private static void B() {
    }

    private void C() {
        this.f4874p = g();
        EndCardView endCardView = new EndCardView(getContext(), this.f4825g, this.f4824f);
        endCardView.setSize(this.f4868c, this.f4869d);
        endCardView.init(false, false, new AnonymousClass1());
        this.f4882x = endCardView;
        q();
        endCardView.load();
        if (a(this.f4874p)) {
            o();
        }
        r();
    }

    private void D() {
        destroy();
    }

    private void E() {
        b(4);
    }

    private void F() {
        CloseImageView closeImageView = this.f4883y;
        if (closeImageView != null) {
            closeImageView.setVisibility(8);
            this.f4883y.setOnClickListener(new AnonymousClass2());
        }
    }

    private void G() {
        MuteImageView muteImageView = this.f4852B;
        if (muteImageView == null || muteImageView.getVisibility() == 0) {
            return;
        }
        this.f4852B.setVisibility(0);
    }

    private void H() {
        com.anythink.core.common.inner.ui.component.a aVar = this.f4854D;
        if (aVar != null) {
            aVar.a();
        }
    }

    private void I() {
        if (1 == this.f4866a) {
            p();
            if (this.f4878t) {
                return;
            }
            this.f4878t = true;
            d dVar = this.f4855E;
            if (dVar != null) {
                dVar.c();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void y() {
        /*
            r6 = this;
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.o()
            if (r0 <= 0) goto L16
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.o()
            int r0 = r0 * 1000
        L14:
            long r0 = (long) r0
            goto L1f
        L16:
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.o()
            goto L14
        L1f:
            r6.f4861K = r0
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.p()
            if (r0 <= 0) goto L37
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.p()
            int r0 = r0 * 1000
        L35:
            long r0 = (long) r0
            goto L40
        L37:
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.p()
            goto L35
        L40:
            r6.f4862L = r0
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L52
            long r4 = r6.f4861K
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 < 0) goto L52
            long r4 = r4 + r0
            r6.f4863M = r4
            goto L54
        L52:
            r6.f4863M = r0
        L54:
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.s()
            int r0 = r0 * 1000
            r6.f4872n = r0
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.a()
            r6.f4876r = r0
            com.anythink.core.common.h.x r0 = r6.f4824f
            com.anythink.core.common.h.y r0 = r0.f4500t
            int r0 = r0.r()
            if (r0 != 0) goto L76
            r0 = 1
            goto L77
        L76:
            r0 = 0
        L77:
            r6.f4879u = r0
            com.anythink.core.common.h.x r0 = r6.f4824f
            int r1 = r0.f4490j
            r2 = 34
            if (r1 == r2) goto L8c
            r2 = 58
            if (r1 == r2) goto L8c
            r2 = 2
            if (r1 == r2) goto L8c
            r2 = 39
            if (r1 != r2) goto L8f
        L8c:
            r1 = -1
            r6.f4876r = r1
        L8f:
            com.anythink.core.common.h.y r0 = r0.f4500t
            boolean r1 = r0 instanceof com.anythink.core.common.inner.mixad.e.c
            if (r1 == 0) goto L9d
            com.anythink.core.common.inner.mixad.e.c r0 = (com.anythink.core.common.inner.mixad.e.c) r0
            int r0 = r0.ai()
            r6.nativeTemplateRatio = r0
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.BaseScreenATView.y():void");
    }

    private void z() {
        com.anythink.core.common.inner.ui.e.a aVar = new com.anythink.core.common.inner.ui.e.a(this.f4825g, this.f4824f);
        this.f4853C = aVar;
        aVar.b(this);
    }

    public final void a(com.anythink.core.common.inner.b.a aVar) {
        d dVar = this.f4855E;
        if (dVar != null) {
            dVar.a(aVar);
        }
    }

    public abstract boolean a(int i2);

    public void b() {
        this.f4880v = (RelativeLayout) findViewById(p.a(getContext(), "myoffer_rl_root", "id"));
        this.f4883y = (CloseImageView) findViewById(p.a(getContext(), "myoffer_btn_close_id", "id"));
        this.f4884z = (CloseShadeView) findViewById(p.a(getContext(), "myoffer_btn_close_shade_id", "id"));
        this.f4881w = (PanelView) findViewById(p.a(getContext(), "myoffer_banner_view_id", "id"));
        this.f4864N = (CountDownView) findViewById(p.a(getContext(), "myoffer_count_down_view_id", "id"));
        this.f4852B = (MuteImageView) findViewById(p.a(getContext(), "myoffer_btn_mute_id", "id"));
        this.f4851A = (ViewGroup) findViewById(p.a(getContext(), "myoffer_feedback_ll_id", "id"));
        WebProgressBarView webProgressBarView = (WebProgressBarView) findViewById(p.a(getContext(), "myoffer_player_view_progress_bar_id", "id"));
        this.f4865O = webProgressBarView;
        this.f4854D = new com.anythink.core.common.inner.ui.component.a(this.f4824f.f4500t, this.f4864N, webProgressBarView);
        com.anythink.core.common.inner.ui.e.a aVar = new com.anythink.core.common.inner.ui.e.a(this.f4825g, this.f4824f);
        this.f4853C = aVar;
        aVar.b(this);
        b(4);
        k();
        CloseImageView closeImageView = this.f4883y;
        if (closeImageView != null) {
            closeImageView.setVisibility(8);
            this.f4883y.setOnClickListener(new AnonymousClass2());
        }
        i();
        j();
        this.f4873o = a(this.f4874p);
    }

    public void c() {
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public void d() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i2 = displayMetrics.widthPixels;
        this.f4868c = i2;
        int i3 = displayMetrics.heightPixels;
        this.f4869d = i3;
        this.f4857G = i2;
        this.f4858H = i3;
        h();
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public void destroy() {
        super.destroy();
        this.f4855E = null;
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void e() {
        d dVar = this.f4855E;
        if (dVar != null) {
            dVar.a(new e());
        }
    }

    public void f() {
        this.f4877s = true;
        this.f4874p = g();
        EndCardView endCardView = new EndCardView(getContext(), this.f4825g, this.f4824f);
        endCardView.setSize(this.f4868c, this.f4869d);
        endCardView.init(false, false, new AnonymousClass1());
        this.f4882x = endCardView;
        q();
        endCardView.load();
        if (a(this.f4874p)) {
            o();
        }
        r();
    }

    public abstract int g();

    public long getHideBannerTime() {
        return this.f4863M;
    }

    public long getShowBannerTime() {
        return this.f4861K;
    }

    public void h() {
    }

    public void handleFullScreenClick(ViewGroup viewGroup) {
    }

    public boolean hasReward() {
        return this.f4878t;
    }

    public void i() {
    }

    public void init() {
        b();
    }

    public boolean isShowEndCard() {
        return this.f4877s;
    }

    public boolean isVideoMute() {
        return this.f4879u;
    }

    public void j() {
    }

    public void k() {
    }

    public abstract void l();

    public final void m() {
        d dVar = this.f4855E;
        if (dVar != null) {
            dVar.d();
        }
    }

    public void n() {
        b(0);
        MuteImageView muteImageView = this.f4852B;
        if (muteImageView == null || muteImageView.getVisibility() == 0) {
            return;
        }
        this.f4852B.setVisibility(0);
    }

    public final void o() {
        PanelView panelView = this.f4881w;
        if (panelView != null) {
            if (panelView.getVisibility() != 0) {
                panelView.setVisibility(0);
            }
            if (panelView.getCTAButton() == null || panelView.getCTAButton().getVisibility() != 0) {
                return;
            }
            ScanningAnimButton scanningAnimButton = this.f4829k;
            if (scanningAnimButton == null || !scanningAnimButton.equals(panelView.getCTAButton())) {
                this.f4829k = (ScanningAnimButton) panelView.getCTAButton();
            }
        }
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
    }

    public void p() {
        CloseImageView closeImageView = this.f4883y;
        if (closeImageView == null || closeImageView.getVisibility() == 0) {
            return;
        }
        this.f4883y.setVisibility(0);
    }

    public abstract void q();

    public void r() {
    }

    public final CloseImageView s() {
        return this.f4883y;
    }

    public void setHasReward(boolean z2) {
        this.f4878t = z2;
    }

    public void setHideBannerTime(long j2) {
        this.f4863M = j2;
    }

    public void setIsShowEndCard(boolean z2) {
        this.f4877s = z2;
    }

    public void setListener(d dVar) {
        this.f4855E = dVar;
    }

    public void setShowBannerTime(long j2) {
        this.f4861K = j2;
    }

    public void setVideoMute(boolean z2) {
        this.f4879u = z2;
    }

    public final PanelView t() {
        return this.f4881w;
    }

    public final boolean u() {
        x xVar = this.f4824f;
        return xVar != null && xVar.f4490j == 59;
    }

    public final boolean v() {
        x xVar = this.f4824f;
        return xVar != null && xVar.f4490j == 2;
    }

    public final boolean w() {
        x xVar = this.f4824f;
        return xVar != null && xVar.f4490j == 39;
    }

    public final boolean x() {
        y yVar;
        x xVar = this.f4824f;
        return (xVar == null || (yVar = xVar.f4500t) == null || yVar.q() == 0) ? false : true;
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a(e eVar) {
        d dVar = this.f4855E;
        if (dVar != null) {
            dVar.b(eVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseScreenATView(android.content.Context r3, com.anythink.core.common.h.x r4, com.anythink.core.common.h.w r5, java.lang.String r6, int r7, int r8) {
        /*
            r2 = this;
            r2.<init>(r3, r4, r5, r6)
            r3 = 0
            r2.hasClick = r3
            r4 = 1
            r2.nativeTemplateRatio = r4
            r2.f4866a = r7
            r2.f4867b = r8
            r2.f4856F = r3
            java.util.Random r5 = new java.util.Random
            r5.<init>()
            r6 = 100
            int r5 = r5.nextInt(r6)
            int r5 = r5 + r4
            r2.ranDom = r5
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.o()
            if (r5 <= 0) goto L33
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.o()
            int r5 = r5 * 1000
        L31:
            long r5 = (long) r5
            goto L3c
        L33:
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.o()
            goto L31
        L3c:
            r2.f4861K = r5
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.p()
            if (r5 <= 0) goto L54
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.p()
            int r5 = r5 * 1000
        L52:
            long r5 = (long) r5
            goto L5d
        L54:
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.p()
            goto L52
        L5d:
            r2.f4862L = r5
            r7 = 0
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r0 <= 0) goto L6f
            long r0 = r2.f4861K
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 < 0) goto L6f
            long r0 = r0 + r5
            r2.f4863M = r0
            goto L71
        L6f:
            r2.f4863M = r5
        L71:
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.s()
            int r5 = r5 * 1000
            r2.f4872n = r5
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.a()
            r2.f4876r = r5
            com.anythink.core.common.h.x r5 = r2.f4824f
            com.anythink.core.common.h.y r5 = r5.f4500t
            int r5 = r5.r()
            if (r5 != 0) goto L92
            r3 = r4
        L92:
            r2.f4879u = r3
            com.anythink.core.common.h.x r3 = r2.f4824f
            int r4 = r3.f4490j
            r5 = 34
            if (r4 == r5) goto La7
            r5 = 58
            if (r4 == r5) goto La7
            r5 = 2
            if (r4 == r5) goto La7
            r5 = 39
            if (r4 != r5) goto Laa
        La7:
            r4 = -1
            r2.f4876r = r4
        Laa:
            com.anythink.core.common.h.y r3 = r3.f4500t
            boolean r4 = r3 instanceof com.anythink.core.common.inner.mixad.e.c
            if (r4 == 0) goto Lb8
            com.anythink.core.common.inner.mixad.e.c r3 = (com.anythink.core.common.inner.mixad.e.c) r3
            int r3 = r3.ai()
            r2.nativeTemplateRatio = r3
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.inner.ui.BaseScreenATView.<init>(android.content.Context, com.anythink.core.common.h.x, com.anythink.core.common.h.w, java.lang.String, int, int):void");
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a(boolean z2) {
        d dVar = this.f4855E;
        if (dVar != null) {
            dVar.a(z2);
        }
    }

    public final void a(long j2) {
        com.anythink.core.common.inner.ui.component.a aVar = this.f4854D;
        if (aVar != null) {
            aVar.b(j2);
        }
    }

    public final void b(int i2) {
        com.anythink.core.common.inner.ui.component.a aVar = this.f4854D;
        if (aVar != null) {
            aVar.a(i2);
        }
    }

    public final void b(long j2) {
        com.anythink.core.common.inner.ui.component.a aVar = this.f4854D;
        if (aVar != null) {
            aVar.a(j2);
        }
    }
}
