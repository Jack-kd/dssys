package com.octopus.ad.internal.e;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeDrawable;
import com.octopus.ad.R;
import com.octopus.ad.internal.a.i;
import com.octopus.ad.internal.b.a;
import com.octopus.ad.internal.c.t;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes4.dex */
public class g extends com.octopus.ad.internal.e.a {

    /* renamed from: A, reason: collision with root package name */
    private c f34884A;

    /* renamed from: B, reason: collision with root package name */
    private a f34885B;

    /* renamed from: t, reason: collision with root package name */
    protected boolean f34886t;

    /* renamed from: u, reason: collision with root package name */
    private int f34887u;

    /* renamed from: v, reason: collision with root package name */
    private boolean f34888v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f34889w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f34890x;

    /* renamed from: y, reason: collision with root package name */
    private com.octopus.ad.internal.a.b f34891y;

    /* renamed from: z, reason: collision with root package name */
    private String f34892z;

    /* renamed from: com.octopus.ad.internal.e.g$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34893a;

        static {
            int[] iArr = new int[a.values().length];
            f34893a = iArr;
            try {
                iArr[a.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34893a[a.TOP_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34893a[a.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34893a[a.CENTER_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34893a[a.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34893a[a.CENTER_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34893a[a.BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34893a[a.BOTTOM_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34893a[a.BOTTOM_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum a {
        TOP_LEFT,
        TOP_CENTER,
        TOP_RIGHT,
        CENTER_LEFT,
        CENTER,
        CENTER_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_CENTER,
        BOTTOM_RIGHT;

        public int a() {
            switch (AnonymousClass1.f34893a[ordinal()]) {
                case 1:
                    return 51;
                case 2:
                    return 49;
                case 3:
                    return BadgeDrawable.TOP_END;
                case 4:
                    return 8388627;
                case 5:
                default:
                    return 17;
                case 6:
                    return 8388629;
                case 7:
                    return BadgeDrawable.BOTTOM_START;
                case 8:
                    return 81;
                case 9:
                    return BadgeDrawable.BOTTOM_END;
            }
        }
    }

    public class b implements Animation.AnimationListener {

        /* renamed from: b, reason: collision with root package name */
        private final c f34905b;

        /* renamed from: c, reason: collision with root package name */
        private final com.octopus.ad.internal.a.b f34906c;

        public b(c cVar, com.octopus.ad.internal.a.b bVar) {
            this.f34905b = cVar;
            this.f34906c = bVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            animation.setAnimationListener(null);
            final c cVar = this.f34905b;
            final com.octopus.ad.internal.a.b bVar = this.f34906c;
            if (cVar == null || bVar == null) {
                return;
            }
            cVar.getView().getHandler().post(new Runnable() { // from class: com.octopus.ad.internal.e.g.b.1
                @Override // java.lang.Runnable
                public void run() {
                    bVar.clearAnimation();
                    cVar.k();
                    bVar.a();
                }
            });
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public g(Context context, ViewGroup viewGroup, String str) {
        super(context, viewGroup, str);
        this.f34892z = str;
    }

    @Override // com.octopus.ad.internal.e.a
    public void a(Context context, AttributeSet attributeSet) {
        super.a(context, attributeSet);
        com.octopus.ad.d.b.f.d("OctopusAd_Time", "SplashAdViewImpl setup 开始");
        this.f34887u = -1;
        this.f34886t = false;
        this.f34889w = false;
        this.f34890x = false;
        if (q.a().f35014e == 0) {
            this.f34891y = new com.octopus.ad.internal.a.b(getContext(), i.NONE, com.octopus.ad.internal.a.h.UP, 500L);
        }
        View view = (View) getParent();
        if (view != null) {
            int measuredHeight = view.getMeasuredHeight();
            int measuredHeight2 = view.getMeasuredHeight();
            q qVarA = q.a();
            int iQ = (int) ((measuredHeight / qVarA.q()) + 0.5f);
            this.f34744c.b((int) ((measuredHeight2 / qVarA.p()) + 0.5f));
            this.f34744c.c(iQ);
        }
        p pVar = p.SPLASH;
        this.f34747f = pVar;
        this.f34744c.a(pVar);
        this.f34746e.a(this.f34887u, this.f34892z);
    }

    public a getAdAlignment() {
        if (this.f34885B == null) {
            this.f34885B = a.CENTER;
        }
        return this.f34885B;
    }

    @Override // com.octopus.ad.internal.a
    public p getMediaType() {
        return p.SPLASH;
    }

    public boolean getResizeAdToFitContainer() {
        return this.f34889w;
    }

    public i getTransitionType() {
        com.octopus.ad.internal.a.b bVar = this.f34891y;
        return bVar != null ? bVar.getTransitionType() : i.NONE;
    }

    @Override // com.octopus.ad.internal.e.a
    public boolean k() {
        return false;
    }

    @Override // com.octopus.ad.internal.e.a, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (!this.f34890x || z2) {
            q qVarA = q.a();
            int iP = (int) (((i4 - i2) / qVarA.p()) + 0.5f);
            int iQ = (int) (((i5 - i3) / qVarA.q()) + 0.5f);
            if (iP >= this.f34744c.j() && (iQ >= this.f34744c.k() || iP <= 0 || iQ <= 0)) {
                this.f34744c.b(iP);
                this.f34744c.c(iQ);
                this.f34890x = true;
            } else {
                com.octopus.ad.internal.c cVar = this.f34746e;
                if (cVar != null) {
                    cVar.a();
                }
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            if (getChildAt(0) instanceof WebView) {
                t.b((WebView) getChildAt(0));
                return;
            }
            return;
        }
        com.octopus.ad.d.b.f.d("OctopusAd", "enter onWindowVisibilityChanged before dismantleBroadcast");
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34565a, com.octopus.ad.internal.c.f.a(R.string.hidden));
        if (this.f34746e != null && this.f34888v) {
            t();
        }
        if (getChildAt(0) instanceof WebView) {
            t.c((WebView) getChildAt(0));
        }
    }

    @Override // com.octopus.ad.internal.e.a
    public void r() {
        c cVar = this.f34884A;
        if (cVar != null) {
            cVar.o();
            this.f34884A = null;
        }
        com.octopus.ad.d.b.f.d("OctopusAd", "enter activityOnDestroy before dismantleBroadcast");
        if (this.f34746e != null) {
            t();
        }
    }

    public void t() {
        com.octopus.ad.internal.c.f.b(com.octopus.ad.internal.c.f.f34567c, com.octopus.ad.internal.c.f.a(R.string.stop));
        this.f34746e.a();
        this.f34888v = false;
    }

    @Override // com.octopus.ad.internal.e.a
    public boolean a(a.C0746a c0746a) {
        h();
        if (!super.a(c0746a)) {
            return false;
        }
        this.f34888v = true;
        return true;
    }

    @Override // com.octopus.ad.internal.e.a
    public boolean a(c cVar) {
        if (cVar != null && !cVar.j() && cVar.getView() != null && cVar.getAdWebView() != null) {
            if (this.f34743b == cVar) {
                b(80102);
                return false;
            }
            this.f34884A = cVar;
            if (getTransitionType() == i.NONE) {
                removeAllViews();
                c cVar2 = this.f34743b;
                if (cVar2 != null) {
                    cVar2.k();
                }
                View view = cVar.getView();
                if (view instanceof com.octopus.ad.d) {
                    setBackgroundColor(-16777216);
                }
                addView(view, new ViewGroup.LayoutParams(-1, -1));
                if (view.getLayoutParams() != null) {
                    ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity = getAdAlignment().a();
                }
                cVar.l();
            } else if (this.f34891y != null) {
                if (cVar.getView().getLayoutParams() != null) {
                    ((FrameLayout.LayoutParams) cVar.getView().getLayoutParams()).gravity = getAdAlignment().a();
                    this.f34891y.setLayoutParams(cVar.getView().getLayoutParams());
                }
                if (getChildCount() != 0 && indexOfChild(this.f34891y) != -1) {
                    if (cVar.getView() instanceof com.octopus.ad.d) {
                        cVar.l();
                    }
                    this.f34891y.addView(cVar.getView());
                    this.f34891y.showNext();
                } else {
                    removeAllViews();
                    if (cVar.getView() instanceof com.octopus.ad.d) {
                        cVar.l();
                    }
                    addView(this.f34891y, 0);
                    this.f34891y.addView(cVar.getView());
                }
                c cVar3 = this.f34743b;
                if (cVar3 != null) {
                    if (cVar3.getView().getAnimation() != null) {
                        cVar3.getView().getAnimation().setAnimationListener(new b(cVar3, this.f34891y));
                    } else {
                        cVar3.k();
                    }
                }
            }
            this.f34743b = cVar;
            return true;
        }
        b(80102);
        com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Loaded an ad with an invalid displayable");
        return false;
    }
}
