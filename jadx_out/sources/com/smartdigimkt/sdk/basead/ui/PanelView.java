package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.r2.t;
import com.smartdigimkt.sdk.basead.ui.component.CTAButtonLayout;
import com.smartdigimkt.sdk.basead.ui.component.RoundFrameLayout;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.e4;
import com.smartdigimkt.v1.f4;
import com.smartdigimkt.v1.g4;
import com.smartdigimkt.v1.h4;
import com.smartdigimkt.v1.i4;
import com.smartdigimkt.v1.j4;
import com.smartdigimkt.v1.k4;
import com.smartdigimkt.z.z;
import com.smartdigimkt.z3.d;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class PanelView extends RelativeLayout {
    public static final int TYPE_FULL_SCREEN_BANNER = 100;
    public static final int TYPE_FULL_SCREEN_EMPTY_INFO = 108;
    public static final int TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_LANDSCAPE = 106;
    public static final int TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_PORTRAIT = 101;
    public static final int TYPE_FULL_SCREEN_ENDCARD_VERTICAL_LANDSCAPE = 102;
    public static final int TYPE_FULL_SCREEN_ENDCARD_VERTICAL_PORTRAIT = 105;
    public static final int TYPE_HALF_SCREEN_EMPTY_INFO = 107;
    public static final int TYPE_HALF_SCREEN_HORIZONTAL = 104;
    public static final int TYPE_HALF_SCREEN_VERTICAL = 103;
    public static final int TYPE_LETTER = 109;
    public static final int TYPE_UNINITIALIZED = 0;

    /* renamed from: a, reason: collision with root package name */
    public View f43509a;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f43510b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f43511c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f43512d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f43513e;

    /* renamed from: f, reason: collision with root package name */
    public CTAButtonLayout f43514f;

    /* renamed from: g, reason: collision with root package name */
    public BaseShakeView f43515g;

    /* renamed from: h, reason: collision with root package name */
    public k4 f43516h;

    /* renamed from: i, reason: collision with root package name */
    public int f43517i;

    /* renamed from: j, reason: collision with root package name */
    public e f43518j;

    /* renamed from: k, reason: collision with root package name */
    public a f43519k;

    /* renamed from: l, reason: collision with root package name */
    public c f43520l;

    /* renamed from: m, reason: collision with root package name */
    public int f43521m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f43522n;

    /* renamed from: o, reason: collision with root package name */
    public ArrayList f43523o;

    /* renamed from: p, reason: collision with root package name */
    public t f43524p;

    /* renamed from: q, reason: collision with root package name */
    public View f43525q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f43526r;

    /* renamed from: s, reason: collision with root package name */
    public final e4 f43527s;

    public PanelView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43521m = 0;
        this.f43522n = false;
        this.f43526r = false;
        this.f43527s = new e4(this);
    }

    private void setDataFrom(c cVar) {
        ViewGroup viewGroup;
        int iIndexOfChild;
        ImageView imageView = this.f43510b;
        if (imageView != null) {
            View view = this.f43525q;
            if (view != null) {
                imageView.setVisibility(0);
                view.setVisibility(0);
                ViewParent parent = imageView.getParent();
                if ((parent instanceof ViewGroup) && (iIndexOfChild = (viewGroup = (ViewGroup) parent).indexOfChild(imageView)) >= 0) {
                    ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                    d.a(imageView);
                    d.a(view);
                    RoundFrameLayout roundFrameLayout = new RoundFrameLayout(getContext());
                    int i2 = this.f43521m;
                    if (i2 == 102 || i2 == 106) {
                        roundFrameLayout.setRadius(8);
                    } else {
                        roundFrameLayout.setRadius(12);
                    }
                    roundFrameLayout.addView(view);
                    viewGroup.addView(roundFrameLayout, iIndexOfChild, layoutParams);
                    roundFrameLayout.setId(imageView.getId());
                    if (view instanceof ImageView) {
                        this.f43510b = (ImageView) view;
                    }
                }
            } else {
                String str = cVar.f41814e;
                if (!TextUtils.isEmpty(str)) {
                    ViewGroup.LayoutParams layoutParams2 = this.f43510b.getLayoutParams();
                    m.a(getContext()).a(new o(1, str), layoutParams2.width, layoutParams2.height, new h4(this, str));
                }
            }
            if (!a()) {
                this.f43510b.setVisibility(8);
            }
        }
        if (this.f43513e != null) {
            if (TextUtils.isEmpty(cVar.f41812d)) {
                this.f43513e.setVisibility(8);
            } else {
                this.f43513e.setText(cVar.f41812d);
            }
        }
        if (this.f43512d != null) {
            if (TextUtils.isEmpty(cVar.f41810c)) {
                this.f43512d.setVisibility(8);
            } else {
                this.f43512d.setText(cVar.f41810c);
            }
        }
        CTAButtonLayout cTAButtonLayout = this.f43514f;
        if (cTAButtonLayout != null) {
            cTAButtonLayout.initSetting(cVar, this.f43519k, this.f43526r, new i4(this));
            int i3 = this.f43521m;
            if (i3 == 108 || i3 == 107) {
                this.f43514f.changeMinorButtonStyle();
            }
        }
        new l(cVar, this.f43519k).a(this);
    }

    public final boolean a() {
        c cVar = this.f43520l;
        return ((cVar == null || TextUtils.isEmpty(cVar.f41814e)) && this.f43525q == null) ? false : true;
    }

    public View getCTAButton() {
        return this.f43514f;
    }

    public List<View> getClickViews() {
        return this.f43523o;
    }

    public View getDescView() {
        return this.f43513e;
    }

    public View getIconView() {
        ImageView imageView = this.f43510b;
        View view = this.f43525q;
        return view != null ? view : imageView;
    }

    public View getShakeView() {
        return this.f43515g;
    }

    public View getTitleView() {
        return this.f43512d;
    }

    public void init(c cVar, a aVar, int i2, boolean z2, k4 k4Var) {
        this.f43516h = k4Var;
        this.f43517i = i2;
        this.f43520l = cVar;
        this.f43519k = aVar;
        this.f43518j = aVar.f41644r;
        this.f43522n = z2;
        cVar.f();
        int i3 = this.f43518j.f41936h;
        this.f43523o = new ArrayList();
        e eVar = aVar.f41644r;
        if (eVar == null || !z.a(eVar)) {
            return;
        }
        this.f43524p = new t(cVar, this.f43518j);
    }

    public void notifyHalfScreenEndCardShow() {
        this.f43526r = true;
        CTAButtonLayout cTAButtonLayout = this.f43514f;
        if (cTAButtonLayout != null) {
            cTAButtonLayout.initSetting(this.f43520l, this.f43519k, true, new j4(this));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setBaseAdIconView(View view) {
        this.f43525q = view;
    }

    public void setLayoutType(int i2) {
        BaseShakeView baseShakeView;
        if (this.f43521m == i2) {
            return;
        }
        this.f43521m = i2;
        switch (i2) {
            case 101:
                if (!a()) {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_endcard_portrait_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_endcard_horizontal_portrait", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 102:
            case 106:
                if (!a()) {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_endcard_landscape_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_endcard_landscape", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 103:
                if (this.f43517i != 1) {
                    if (!a()) {
                        this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_vertical_without_icon", "layout"), (ViewGroup) this, true);
                        break;
                    } else {
                        this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_vertical", "layout"), (ViewGroup) this, true);
                        break;
                    }
                } else if (!a()) {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_horizontal_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_horizontal", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 104:
                if (!a()) {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_horizontal_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_horizontal", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 105:
                if (!a()) {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_endcard_portrait_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_endcard_vertical_portrait", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 107:
                this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_empty_info", "layout"), (ViewGroup) this, true);
                break;
            case 108:
                this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_full_screen_empty_info", "layout"), (ViewGroup) this, true);
                break;
            case 109:
                this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_letter", "layout"), (ViewGroup) this, true);
                break;
            default:
                if (!a()) {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_bottom_banner_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f43509a = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_panel_view_bottom_banner", "layout"), (ViewGroup) this, true);
                    break;
                }
        }
        this.f43526r = (i2 == 101 || i2 == 102 || i2 == 105 || i2 == 106 || i2 == 109) && !z.d(this.f43520l, this.f43519k);
        this.f43523o.clear();
        this.f43510b = (ImageView) this.f43509a.findViewById(k.a(getContext(), "myoffer_iv_banner_icon", "id"));
        this.f43512d = (TextView) this.f43509a.findViewById(k.a(getContext(), "myoffer_tv_banner_title", "id"));
        this.f43513e = (TextView) this.f43509a.findViewById(k.a(getContext(), "myoffer_tv_banner_desc", "id"));
        this.f43514f = (CTAButtonLayout) this.f43509a.findViewById(k.a(getContext(), "myoffer_panel_cta_layout", "id"));
        this.f43511c = (ImageView) this.f43509a.findViewById(k.a(getContext(), "myoffer_ad_logo", "id"));
        try {
            BaseShakeView baseShakeView2 = (BaseShakeView) this.f43509a.findViewById(k.a(getContext(), "myoffer_shake_hint_text", "id"));
            this.f43515g = baseShakeView2;
            baseShakeView2.setShakeSetting(this.f43519k.f41644r, this.f43520l.f41824o);
            this.f43515g.startShakeIconAnimation();
        } catch (Throwable unused) {
        }
        if (this.f43522n && (baseShakeView = this.f43515g) != null && this.f43521m != 108) {
            baseShakeView.setVisibility(0);
        }
        setDataFrom(this.f43520l);
        if (this.f43510b != null) {
            this.f43520l.getClass();
            this.f43510b.setOnClickListener(this.f43527s);
            this.f43523o.add(this.f43510b);
        }
        if (this.f43512d != null) {
            this.f43520l.getClass();
            this.f43512d.setOnClickListener(this.f43527s);
            this.f43523o.add(this.f43512d);
        }
        if (this.f43513e != null) {
            this.f43520l.getClass();
            this.f43513e.setOnClickListener(this.f43527s);
            this.f43523o.add(this.f43513e);
        }
        if (this.f43514f != null) {
            this.f43520l.getClass();
            this.f43514f.setOnClickListener(this.f43527s);
            this.f43523o.add(this.f43514f);
        }
        if (this.f43511c != null) {
            this.f43520l.getClass();
            this.f43511c.setOnClickListener(this.f43527s);
            this.f43523o.add(this.f43511c);
        }
        if (this.f43515g != null && this.f43522n) {
            this.f43520l.getClass();
            this.f43515g.setOnClickListener(this.f43527s);
            this.f43515g.setOnShakeListener(new g4(this), this.f43518j);
        }
        View viewFindViewById = this.f43509a.findViewById(k.a(getContext(), "myoffer_panel_view_blank", "id"));
        if (viewFindViewById != null) {
            this.f43520l.getClass();
            viewFindViewById.setOnClickListener(this.f43527s);
            this.f43523o.add(viewFindViewById);
        } else {
            this.f43520l.getClass();
            this.f43509a.setOnClickListener(this.f43527s);
            this.f43523o.add(this.f43509a);
        }
        ImageView imageView = this.f43510b;
        if (imageView instanceof RoundImageView) {
            ((RoundImageView) imageView).setNeedRadiu(true);
            int i3 = this.f43521m;
            if (i3 == 102 || i3 == 106) {
                ((RoundImageView) this.f43510b).setRadiusInDip(8);
            } else {
                ((RoundImageView) this.f43510b).setRadiusInDip(12);
            }
            this.f43510b.invalidate();
        }
        t tVar = this.f43524p;
        if (tVar != null) {
            tVar.f43027c = this.f43521m;
            tVar.f43036l = new f4(this);
            tVar.a(getContext(), this.f43509a);
        }
    }
}
