package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.inner.e.e;
import com.anythink.core.common.v.a.f;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.p;
import java.util.Map;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public abstract class BaseSplashATView extends BaseATView {

    /* renamed from: A, reason: collision with root package name */
    boolean f4919A;

    /* renamed from: B, reason: collision with root package name */
    boolean f4920B;

    /* renamed from: C, reason: collision with root package name */
    boolean f4921C;

    /* renamed from: D, reason: collision with root package name */
    boolean f4922D;

    /* renamed from: a, reason: collision with root package name */
    private f.b f4923a;

    /* renamed from: b, reason: collision with root package name */
    private long f4924b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Object> f4925c;

    /* renamed from: q, reason: collision with root package name */
    protected TextView f4926q;

    /* renamed from: r, reason: collision with root package name */
    protected CloseFrameLayout f4927r;
    public int ranDom;

    /* renamed from: s, reason: collision with root package name */
    protected CloseShadeView f4928s;

    /* renamed from: t, reason: collision with root package name */
    protected String f4929t;

    /* renamed from: u, reason: collision with root package name */
    protected Timer f4930u;

    /* renamed from: v, reason: collision with root package name */
    protected volatile boolean f4931v;

    /* renamed from: w, reason: collision with root package name */
    protected com.anythink.core.common.inner.e.a f4932w;

    /* renamed from: x, reason: collision with root package name */
    final long f4933x;

    /* renamed from: y, reason: collision with root package name */
    protected com.anythink.core.common.inner.ui.e.a f4934y;

    /* renamed from: z, reason: collision with root package name */
    protected int f4935z;

    /* renamed from: com.anythink.core.common.inner.ui.BaseSplashATView$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (BaseSplashATView.this.f4824f.f4500t.k() == 0 || BaseSplashATView.this.f4921C) {
                BaseSplashATView.this.g();
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseSplashATView$2, reason: invalid class name */
    public class AnonymousClass2 implements ViewTreeObserver.OnGlobalLayoutListener {
        public AnonymousClass2() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            ViewGroup.LayoutParams layoutParams;
            CloseShadeView closeShadeView = BaseSplashATView.this.f4928s;
            if (closeShadeView != null && (layoutParams = closeShadeView.getLayoutParams()) != null) {
                layoutParams.width = BaseSplashATView.this.f4927r.getWidth();
                layoutParams.height = BaseSplashATView.this.f4927r.getHeight();
                BaseSplashATView.this.f4928s.setLayoutParams(layoutParams);
            }
            BaseSplashATView.this.f4927r.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.BaseSplashATView$3, reason: invalid class name */
    public class AnonymousClass3 extends TimerTask {
        public AnonymousClass3() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            BaseSplashATView baseSplashATView = BaseSplashATView.this;
            if (ak.a(baseSplashATView, baseSplashATView.f4923a)) {
                BaseSplashATView.this.post(new Runnable() { // from class: com.anythink.core.common.inner.ui.BaseSplashATView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (BaseSplashATView.this.f4924b <= 0) {
                            BaseSplashATView.c(BaseSplashATView.this);
                            return;
                        }
                        BaseSplashATView baseSplashATView2 = BaseSplashATView.this;
                        baseSplashATView2.a(baseSplashATView2.f4924b);
                        BaseSplashATView.this.f4924b -= 1000;
                    }
                });
            }
        }
    }

    public BaseSplashATView(Context context) {
        super(context);
        this.f4929t = "Skip";
        this.f4933x = 1000L;
        this.f4924b = 5000L;
        this.f4919A = false;
        this.f4920B = false;
        this.f4921C = false;
    }

    private void c() {
        this.f4927r.setVisibility(0);
        this.f4927r.setOnClickListener(new AnonymousClass1());
        if (this.f4935z >= this.ranDom) {
            CloseFrameLayout closeFrameLayout = this.f4927r;
            if (closeFrameLayout != null) {
                closeFrameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass2());
            }
            CloseShadeView closeShadeView = this.f4928s;
            if (closeShadeView != null) {
                closeShadeView.setVisibility(0);
            }
        } else {
            CloseShadeView closeShadeView2 = this.f4928s;
            if (closeShadeView2 != null) {
                closeShadeView2.setVisibility(8);
            }
        }
        this.f4921C = false;
        Timer timer = new Timer();
        this.f4930u = timer;
        timer.schedule(new AnonymousClass3(), 1000L, 1000L);
        a(this.f4924b);
        this.f4924b -= 1000;
    }

    private void f() {
        g();
        this.f4926q.setText(this.f4929t);
        this.f4921C = true;
    }

    private static void i() {
    }

    private static boolean j() {
        return false;
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a(boolean z2) {
    }

    public void checkSkipViewLocation() {
        try {
            ViewGroup.LayoutParams layoutParams = this.f4926q.getLayoutParams();
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                int iB = ((FrameLayout.LayoutParams) layoutParams).topMargin + p.b(getContext());
                int[] iArr = new int[2];
                this.f4926q.getLocationOnScreen(iArr);
                int i2 = iArr[1];
                if (i2 < iB) {
                    int i3 = iB - i2;
                    ViewParent parent = this.f4926q.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).setPadding(((ViewGroup) parent).getPaddingLeft(), ((ViewGroup) parent).getPaddingTop() + i3, ((ViewGroup) parent).getPaddingRight(), ((ViewGroup) parent).getPaddingBottom());
                    }
                    View viewFindViewById = findViewById(p.a(getContext(), "myoffer_btn_mute_id", "id"));
                    if (viewFindViewById != null && (viewFindViewById.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                        layoutParams2.topMargin += i3;
                        viewFindViewById.setLayoutParams(layoutParams2);
                    }
                    View viewFindViewById2 = findViewById(p.a(getContext(), "myoffer_feedback_ll_id", "id"));
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

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void e() {
        this.f4919A = true;
        if (this.f4932w != null) {
            new e();
        }
    }

    public void g() {
        h();
        if (this.f4931v) {
            return;
        }
        this.f4931v = true;
        com.anythink.core.common.inner.e.a aVar = this.f4932w;
        if (aVar != null) {
            aVar.b();
        }
    }

    public final void h() {
        Timer timer = this.f4930u;
        if (timer != null) {
            timer.cancel();
        }
        this.f4930u = null;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        checkSkipViewLocation();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 != 0 || this.f4920B) {
            return;
        }
        this.f4920B = true;
        if (this.f4922D) {
            return;
        }
        this.f4927r.setVisibility(0);
        this.f4927r.setOnClickListener(new AnonymousClass1());
        if (this.f4935z >= this.ranDom) {
            CloseFrameLayout closeFrameLayout = this.f4927r;
            if (closeFrameLayout != null) {
                closeFrameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass2());
            }
            CloseShadeView closeShadeView = this.f4928s;
            if (closeShadeView != null) {
                closeShadeView.setVisibility(0);
            }
        } else {
            CloseShadeView closeShadeView2 = this.f4928s;
            if (closeShadeView2 != null) {
                closeShadeView2.setVisibility(8);
            }
        }
        this.f4921C = false;
        Timer timer = new Timer();
        this.f4930u = timer;
        timer.schedule(new AnonymousClass3(), 1000L, 1000L);
        a(this.f4924b);
        this.f4924b -= 1000;
    }

    public void setAdExtraInfoMap(Map<String, Object> map) {
        this.f4925c = map;
    }

    public void setDontCountDown(boolean z2) {
        this.f4922D = z2;
        if (z2) {
            CloseFrameLayout closeFrameLayout = this.f4927r;
            if (closeFrameLayout != null) {
                closeFrameLayout.setVisibility(8);
            }
            CloseShadeView closeShadeView = this.f4928s;
            if (closeShadeView != null) {
                closeShadeView.setVisibility(8);
            }
        }
    }

    private void b() {
        if (this.f4920B) {
            return;
        }
        this.f4920B = true;
        if (this.f4922D) {
            return;
        }
        this.f4927r.setVisibility(0);
        this.f4927r.setOnClickListener(new AnonymousClass1());
        if (this.f4935z >= this.ranDom) {
            CloseFrameLayout closeFrameLayout = this.f4927r;
            if (closeFrameLayout != null) {
                closeFrameLayout.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass2());
            }
            CloseShadeView closeShadeView = this.f4928s;
            if (closeShadeView != null) {
                closeShadeView.setVisibility(0);
            }
        } else {
            CloseShadeView closeShadeView2 = this.f4928s;
            if (closeShadeView2 != null) {
                closeShadeView2.setVisibility(8);
            }
        }
        this.f4921C = false;
        Timer timer = new Timer();
        this.f4930u = timer;
        timer.schedule(new AnonymousClass3(), 1000L, 1000L);
        a(this.f4924b);
        this.f4924b -= 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2) {
        if (this.f4824f.f4500t.k() == 0) {
            this.f4926q.setText((j2 / 1000) + "s | " + this.f4929t);
            return;
        }
        this.f4926q.setText((j2 / 1000) + " s");
    }

    @Override // com.anythink.core.common.inner.ui.BaseATView
    public final void a(e eVar) {
        w wVar = this.f4825g;
        if (wVar == null || wVar.g() == null || !this.f4825g.g().C()) {
            return;
        }
        s.b();
        s.b(new Runnable() { // from class: com.anythink.core.common.inner.ui.BaseSplashATView.4
            @Override // java.lang.Runnable
            public final void run() {
                BaseSplashATView.this.g();
            }
        });
    }

    public BaseSplashATView(Context context, x xVar, w wVar, com.anythink.core.common.inner.e.a aVar) {
        super(context, xVar, wVar);
        this.f4929t = "Skip";
        this.f4933x = 1000L;
        this.f4924b = 5000L;
        this.f4919A = false;
        this.f4920B = false;
        this.f4921C = false;
        this.f4923a = new f.b((wVar == null || wVar.g() == null) ? 1 : wVar.g().ac());
        this.f4932w = aVar;
        this.f4929t = getResources().getString(p.a(getContext(), "myoffer_splash_skip_text", "string"));
        this.f4926q = (TextView) findViewById(p.a(getContext(), "myoffer_splash_skip", "id"));
        this.f4927r = (CloseFrameLayout) findViewById(p.a(getContext(), "myoffer_splash_skip_area", "id"));
        this.f4928s = (CloseShadeView) findViewById(p.a(getContext(), "myoffer_splash_skip_shade_area", "id"));
        this.f4924b = this.f4824f.f4500t.i();
        this.f4931v = false;
        com.anythink.core.common.inner.ui.e.a aVar2 = new com.anythink.core.common.inner.ui.e.a(this.f4825g, this.f4824f);
        this.f4934y = aVar2;
        aVar2.b(this);
        this.ranDom = new Random().nextInt(100) + 1;
        this.f4935z = this.f4824f.f4500t.a();
        int i2 = this.f4824f.f4490j;
        if (i2 == 34 || i2 == 58 || i2 == 2 || i2 == 39) {
            this.f4935z = -1;
        }
    }

    public static /* synthetic */ void c(BaseSplashATView baseSplashATView) {
        baseSplashATView.g();
        baseSplashATView.f4926q.setText(baseSplashATView.f4929t);
        baseSplashATView.f4921C = true;
    }
}
