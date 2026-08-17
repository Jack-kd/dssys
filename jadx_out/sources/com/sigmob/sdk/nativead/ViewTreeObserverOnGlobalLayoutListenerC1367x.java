package com.sigmob.sdk.nativead;

import android.content.Context;
import android.graphics.Typeface;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.am;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.views.ap;
import com.sigmob.sdk.base.views.aw;
import java.util.Map;

/* renamed from: com.sigmob.sdk.nativead.x, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class ViewTreeObserverOnGlobalLayoutListenerC1367x extends RelativeLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public static final int f38484a = 100;

    /* renamed from: b, reason: collision with root package name */
    public static final int f38485b = 70;

    /* renamed from: c, reason: collision with root package name */
    public static final int f38486c = 30;

    /* renamed from: d, reason: collision with root package name */
    public static final int f38487d = 12;

    /* renamed from: n, reason: collision with root package name */
    private static com.sigmob.sdk.base.views.v f38488n;

    /* renamed from: o, reason: collision with root package name */
    private static am.a f38489o;

    /* renamed from: e, reason: collision with root package name */
    private BaseAdUnit f38490e;

    /* renamed from: f, reason: collision with root package name */
    private final int f38491f;

    /* renamed from: g, reason: collision with root package name */
    private com.sigmob.sdk.base.views.v f38492g;

    /* renamed from: h, reason: collision with root package name */
    private TextView f38493h;

    /* renamed from: i, reason: collision with root package name */
    private am.a f38494i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f38495j;

    /* renamed from: k, reason: collision with root package name */
    private ClickCommon f38496k;

    /* renamed from: l, reason: collision with root package name */
    private InterfaceC1348d f38497l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f38498m;

    /* renamed from: p, reason: collision with root package name */
    private final int f38499p;

    /* renamed from: q, reason: collision with root package name */
    private final int f38500q;

    /* renamed from: r, reason: collision with root package name */
    private final int f38501r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f38502s;

    /* renamed from: t, reason: collision with root package name */
    private Boolean f38503t;
    private String title;

    /* renamed from: u, reason: collision with root package name */
    private final int f38504u;

    /* renamed from: v, reason: collision with root package name */
    private final int f38505v;

    /* renamed from: com.sigmob.sdk.nativead.x$1, reason: invalid class name */
    public class AnonymousClass1 implements am.c {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.sld = "5";
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38495j) {
                return;
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38495j = true;
            Number number = map.get("turn_x");
            Number number2 = map.get("turn_y");
            Number number3 = map.get("turn_z");
            Number number4 = map.get("turn_time");
            if (number != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_z = String.valueOf(number3.intValue());
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_time = String.valueOf(number4);
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.U
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38301b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.nativead.x$2, reason: invalid class name */
    public class AnonymousClass2 implements am.c {
        public AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38495j) {
                return;
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.sld = "2";
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            Number number = map.get("x_max_acc");
            Number number2 = map.get("y_max_acc");
            Number number3 = map.get("z_max_acc");
            if (number != null && ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null && ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null && ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.z_max_acc = String.valueOf(number3.intValue());
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.V
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38302b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.nativead.x$3, reason: invalid class name */
    public class AnonymousClass3 implements am.c {
        public AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.sld = "5";
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
            if (ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g instanceof com.sigmob.sdk.base.views.am) {
                ((com.sigmob.sdk.base.views.am) ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g).a(f2);
            }
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38495j) {
                return;
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38495j = true;
            Number number = map.get("turn_x");
            Number number2 = map.get("turn_y");
            Number number3 = map.get("turn_z");
            Number number4 = map.get("turn_time");
            if (number != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_z = String.valueOf(number3.intValue());
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.turn_time = String.valueOf(number4);
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.W
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38303b.b();
                }
            }, 400L);
        }
    }

    /* renamed from: com.sigmob.sdk.nativead.x$4, reason: invalid class name */
    public class AnonymousClass4 implements am.c {
        public AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.sld = "2";
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(float f2) {
            if (ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g instanceof ap) {
                ((ap) ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g).a(f2);
            }
        }

        @Override // com.sigmob.sdk.base.common.am.c
        public void a(Map<String, Number> map) {
            if (map == null || ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38495j) {
                return;
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38495j = true;
            Number number = map.get("x_max_acc");
            Number number2 = map.get("y_max_acc");
            Number number3 = map.get("z_max_acc");
            if (number != null && ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null && ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null && ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k != null) {
                ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38496k.z_max_acc = String.valueOf(number3.intValue());
            }
            ViewTreeObserverOnGlobalLayoutListenerC1367x.this.f38492g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.X
                @Override // java.lang.Runnable
                public final void run() {
                    this.f38304b.b();
                }
            }, 400L);
        }
    }

    public ViewTreeObserverOnGlobalLayoutListenerC1367x(Context context, BaseAdUnit baseAdUnit, int i2, int i3) {
        super(context);
        this.f38495j = false;
        this.f38503t = null;
        this.f38499p = Dips.dipsToIntPixels(100.0f, context);
        this.f38500q = Dips.dipsToIntPixels(70.0f, context);
        this.f38501r = Dips.dipsToIntPixels(30.0f, context);
        this.f38491f = Dips.dipsToIntPixels(0.5f, getContext());
        this.f38504u = i2;
        this.f38505v = i3;
        this.f38490e = baseAdUnit;
        this.f38496k = baseAdUnit.getClickCommon();
        a((int) baseAdUnit.getWidgetId(0));
    }

    private void d() {
        this.f38502s = true;
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    private void e() {
        this.f38492g = new aw(getContext());
        this.title = "扭动或点击前往";
        am.a aVar = new am.a(getContext(), new AnonymousClass1(), am.d.WRING);
        this.f38494i = aVar;
        aVar.a(SensorEntity.format(this.f38490e));
    }

    private void f() {
        this.f38492g = new com.sigmob.sdk.base.views.ac(getContext());
        this.title = "摇一摇或点击前往";
        am.a aVar = new am.a(getContext(), new AnonymousClass2(), am.d.SHAKE);
        this.f38494i = aVar;
        aVar.a(SensorEntity.format(this.f38490e));
    }

    private void g() {
        this.f38492g = new com.sigmob.sdk.base.views.am(getContext());
        this.title = "前倾或点击前往";
        am.a aVar = new am.a(getContext(), new AnonymousClass3(), am.d.SLOPE);
        this.f38494i = aVar;
        aVar.a(SensorEntity.format(this.f38490e));
    }

    private void h() {
        this.f38492g = new ap(getContext());
        this.title = "晃动或点击前往";
        am.a aVar = new am.a(getContext(), new AnonymousClass4(), am.d.SWING);
        this.f38494i = aVar;
        aVar.a(SensorEntity.format(this.f38490e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        InterfaceC1348d interfaceC1348d = this.f38497l;
        if (interfaceC1348d == null) {
            return;
        }
        interfaceC1348d.onAction();
    }

    public void a() {
        if (this.f38498m && this.f38492g.getVisibility() == 0) {
            com.sigmob.sdk.base.views.v vVar = f38488n;
            if (vVar != null && vVar != this.f38492g) {
                vVar.b();
                f38488n = null;
            }
            am.a aVar = f38489o;
            if (aVar != null && aVar != this.f38494i) {
                aVar.b();
                f38489o = null;
            }
            this.f38495j = false;
            if (this.f38494i != null && this.f38498m && com.sigmob.sdk.base.utils.w.b(this)) {
                am.a aVar2 = f38489o;
                am.a aVar3 = this.f38494i;
                if (aVar2 != aVar3) {
                    f38489o = aVar3;
                    aVar3.a();
                }
                com.sigmob.sdk.base.views.v vVar2 = this.f38492g;
                if (vVar2 == null || vVar2 == f38488n || vVar2.getVisibility() != 0) {
                    return;
                }
                com.sigmob.sdk.base.views.v vVar3 = this.f38492g;
                f38488n = vVar3;
                vVar3.a();
            }
        }
    }

    public boolean getCreateWidgetViewResult() {
        return com.sigmob.sdk.base.utils.v.b(this.f38492g);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f38498m = true;
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f38498m = false;
        this.f38502s = false;
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        b();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.f38502s) {
            this.f38502s = false;
            int iMin = Math.min(this.f38504u, this.f38505v);
            com.sigmob.sdk.base.utils.w.a(this.f38493h);
            if (iMin < this.f38501r) {
                com.sigmob.sdk.base.views.v vVar = this.f38492g;
                if (vVar != null) {
                    vVar.b();
                    this.f38492g.setVisibility(4);
                }
                am.a aVar = this.f38494i;
                if (aVar != null) {
                    aVar.b();
                }
                this.f38503t = Boolean.FALSE;
                return;
            }
            com.sigmob.sdk.base.views.v vVar2 = this.f38492g;
            if (vVar2 == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = vVar2.getLayoutParams();
            if (layoutParams != null && layoutParams.width != iMin) {
                layoutParams.width = iMin;
                layoutParams.height = iMin;
                this.f38492g.setLayoutParams(layoutParams);
            }
            Boolean bool = this.f38503t;
            if (bool != null && !bool.booleanValue()) {
                this.f38492g.a();
                this.f38492g.setVisibility(0);
                am.a aVar2 = this.f38494i;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }
            if (iMin < this.f38499p) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) getParent();
            Context context = getContext();
            if (context == null || viewGroup == null || this.f38493h == null) {
                return;
            }
            int top = getTop() + this.f38492g.getMeasuredHeight();
            com.sigmob.sdk.base.utils.w.a(this.f38493h);
            int drawableId = ResourceUtil.getDrawableId(context, "sig_layout_background_radius");
            if (drawableId > 0) {
                this.f38493h.setBackgroundResource(drawableId);
            }
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 1;
            layoutParams2.setMargins(0, top + this.f38491f, 0, 0);
            viewGroup.addView(this.f38493h, layoutParams2);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f38502s = true;
    }

    public void setMotionActionListener(InterfaceC1348d interfaceC1348d) {
        this.f38497l = interfaceC1348d;
    }

    public void a(int i2) {
        switch (i2) {
            case 138731:
                h();
                break;
            case 138733:
                g();
                break;
            case 138757:
                f();
                break;
            case 138758:
                e();
                break;
        }
        if (this.f38492g == null) {
            return;
        }
        this.f38496k.widget_id = i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f38492g.setId(ClientMetadata.generateViewId());
        addView(this.f38492g, layoutParams);
        TextView textView = new TextView(getContext());
        this.f38493h = textView;
        textView.setText(this.title);
        this.f38493h.setTextSize(2, 12.0f);
        this.f38493h.setTextColor(-1);
        this.f38493h.setTypeface(Typeface.DEFAULT_BOLD);
        this.f38493h.setId(ClientMetadata.generateViewId());
    }

    public void b() {
        com.sigmob.sdk.base.views.v vVar = this.f38492g;
        if (vVar != null) {
            vVar.b();
        }
        am.a aVar = this.f38494i;
        if (aVar != null) {
            aVar.b();
        }
        com.sigmob.sdk.base.views.v vVar2 = f38488n;
        if (vVar2 != null && vVar2 == this.f38492g) {
            f38488n = null;
        }
        am.a aVar2 = f38489o;
        if (aVar2 == null || aVar2 != this.f38494i) {
            return;
        }
        f38489o = null;
    }

    public void c() {
        com.sigmob.sdk.base.views.v vVar = f38488n;
        if (vVar != null && vVar == this.f38492g) {
            f38488n = null;
        }
        am.a aVar = f38489o;
        if (aVar != null && aVar == this.f38494i) {
            f38489o = null;
        }
        com.sigmob.sdk.base.views.v vVar2 = this.f38492g;
        if (vVar2 != null) {
            vVar2.b();
            com.sigmob.sdk.base.utils.w.a(this.f38492g);
            this.f38492g = null;
        }
        TextView textView = this.f38493h;
        if (textView != null) {
            com.sigmob.sdk.base.utils.w.a(textView);
            this.f38493h = null;
        }
        am.a aVar2 = this.f38494i;
        if (aVar2 != null) {
            aVar2.c();
            this.f38494i = null;
        }
    }
}
