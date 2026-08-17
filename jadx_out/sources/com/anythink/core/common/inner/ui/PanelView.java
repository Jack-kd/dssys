package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.ui.component.RoundFrameLayout;
import com.anythink.core.common.inner.ui.e.c;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class PanelView extends RelativeLayout {
    public static final int TYPE_FULL_SCREEN_BANNER = 0;
    public static final int TYPE_FULL_SCREEN_EMPTY_INFO = 8;
    public static final int TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_LANDSCAPE = 6;
    public static final int TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_PORTRAIT = 1;
    public static final int TYPE_FULL_SCREEN_ENDCARD_VERTICAL_LANDSCAPE = 2;
    public static final int TYPE_FULL_SCREEN_ENDCARD_VERTICAL_PORTRAIT = 5;
    public static final int TYPE_HALF_SCREEN_EMPTY_INFO = 7;
    public static final int TYPE_HALF_SCREEN_HORIZONTAL = 4;
    public static final int TYPE_HALF_SCREEN_VERTICAL = 3;
    public static final int TYPE_LETTER = 9;

    /* renamed from: a, reason: collision with root package name */
    protected boolean f5020a;

    /* renamed from: b, reason: collision with root package name */
    private View f5021b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f5022c;

    /* renamed from: d, reason: collision with root package name */
    private ImageView f5023d;

    /* renamed from: e, reason: collision with root package name */
    private TextView f5024e;

    /* renamed from: f, reason: collision with root package name */
    private TextView f5025f;

    /* renamed from: g, reason: collision with root package name */
    private ScanningAnimButton f5026g;

    /* renamed from: h, reason: collision with root package name */
    private a f5027h;

    /* renamed from: i, reason: collision with root package name */
    private int f5028i;

    /* renamed from: j, reason: collision with root package name */
    private y f5029j;

    /* renamed from: k, reason: collision with root package name */
    private x f5030k;

    /* renamed from: l, reason: collision with root package name */
    private w f5031l;

    /* renamed from: m, reason: collision with root package name */
    private int f5032m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f5033n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f5034o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f5035p;

    /* renamed from: q, reason: collision with root package name */
    private List<View> f5036q;

    /* renamed from: r, reason: collision with root package name */
    private View f5037r;

    /* renamed from: s, reason: collision with root package name */
    private final View.OnClickListener f5038s;

    /* renamed from: com.anythink.core.common.inner.ui.PanelView$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5040a;

        public AnonymousClass2(String str) {
            this.f5040a = str;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.f5040a)) {
                PanelView.this.f5022c.setImageBitmap(bitmap);
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.PanelView$3, reason: invalid class name */
    public class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (PanelView.this.f5027h != null) {
                a unused = PanelView.this.f5027h;
            }
        }
    }

    public interface a {
        void a();

        boolean b();
    }

    public PanelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5032m = 0;
        this.f5033n = false;
        this.f5034o = false;
        this.f5035p = false;
        this.f5020a = false;
        this.f5038s = new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.PanelView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (PanelView.this.f5029j != null) {
                    if (PanelView.this.f5029j.q() == 1) {
                        if (view != PanelView.this.f5026g || PanelView.this.f5027h == null) {
                            return;
                        }
                        a unused = PanelView.this.f5027h;
                        int i2 = com.anythink.core.common.inner.mixad.f.b.f4756a;
                        return;
                    }
                    if (PanelView.this.f5027h != null) {
                        if (view == PanelView.this.f5026g) {
                            a unused2 = PanelView.this.f5027h;
                            int i3 = com.anythink.core.common.inner.mixad.f.b.f4756a;
                        } else {
                            a unused3 = PanelView.this.f5027h;
                            int i4 = com.anythink.core.common.inner.mixad.f.b.f4756a;
                        }
                    }
                }
            }
        };
    }

    private static boolean a(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 5 || i2 == 6 || i2 == 9;
    }

    private static void d() {
    }

    private void e() {
        this.f5036q.clear();
        this.f5022c = (ImageView) this.f5021b.findViewById(p.a(getContext(), "myoffer_iv_banner_icon", "id"));
        this.f5024e = (TextView) this.f5021b.findViewById(p.a(getContext(), "myoffer_tv_banner_title", "id"));
        this.f5025f = (TextView) this.f5021b.findViewById(p.a(getContext(), "myoffer_tv_banner_desc", "id"));
        this.f5026g = (ScanningAnimButton) this.f5021b.findViewById(p.a(getContext(), "myoffer_panel_cta_layout", "id"));
        this.f5023d = (ImageView) this.f5021b.findViewById(p.a(getContext(), "myoffer_ad_logo", "id"));
    }

    private void f() {
        if (this.f5022c != null) {
            if (!this.f5031l.E()) {
                this.f5022c.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5022c);
        }
        if (this.f5024e != null) {
            if (!this.f5031l.E()) {
                this.f5024e.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5024e);
        }
        if (this.f5025f != null) {
            if (!this.f5031l.E()) {
                this.f5025f.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5025f);
        }
        if (this.f5026g != null) {
            if (!this.f5031l.E()) {
                this.f5026g.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5026g);
        }
        if (this.f5023d != null) {
            if (!this.f5031l.E()) {
                this.f5023d.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5023d);
        }
        View viewFindViewById = this.f5021b.findViewById(p.a(getContext(), "myoffer_panel_view_blank", "id"));
        if (viewFindViewById != null) {
            if (!this.f5031l.E()) {
                viewFindViewById.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(viewFindViewById);
        } else {
            if (!this.f5031l.E()) {
                this.f5021b.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5021b);
        }
    }

    private boolean g() {
        return h() || this.f5037r != null;
    }

    private boolean h() {
        w wVar = this.f5031l;
        return (wVar == null || TextUtils.isEmpty(wVar.m())) ? false : true;
    }

    public View getCTAButton() {
        return this.f5026g;
    }

    public List<View> getClickViews() {
        return this.f5036q;
    }

    public View getDescView() {
        return this.f5025f;
    }

    public View getIconView() {
        ImageView imageView = this.f5022c;
        View view = this.f5037r;
        return view != null ? view : imageView;
    }

    public View getTitleView() {
        return this.f5024e;
    }

    public void init(w wVar, x xVar, int i2, boolean z2, a aVar) {
        this.f5027h = aVar;
        this.f5028i = i2;
        this.f5031l = wVar;
        this.f5030k = xVar;
        this.f5029j = xVar.f4500t;
        this.f5035p = z2;
        this.f5033n = wVar.D();
        this.f5034o = this.f5029j.j() == 1;
        this.f5036q = new ArrayList();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setBaseAdIconView(View view) {
        this.f5037r = view;
    }

    public void setLayoutType(int i2) {
        ViewGroup viewGroup;
        int iIndexOfChild;
        this.f5032m = i2;
        switch (i2) {
            case 1:
                if (!g()) {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_endcard_portrait_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_endcard_horizontal_portrait", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 2:
            case 6:
                if (!g()) {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_endcard_landscape_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_endcard_landscape", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 3:
                if (this.f5028i != 1) {
                    if (!g()) {
                        this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_vertical_without_icon", "layout"), (ViewGroup) this, true);
                        break;
                    } else {
                        this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_vertical", "layout"), (ViewGroup) this, true);
                        break;
                    }
                } else if (!g()) {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_horizontal_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_horizontal", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 4:
                if (!g()) {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_horizontal_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_horizontal", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 5:
                if (!g()) {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_endcard_portrait_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_endcard_vertical_portrait", "layout"), (ViewGroup) this, true);
                    break;
                }
            case 7:
                this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_empty_info", "layout"), (ViewGroup) this, true);
                break;
            case 8:
                this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_full_screen_empty_info", "layout"), (ViewGroup) this, true);
                break;
            case 9:
                this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_letter", "layout"), (ViewGroup) this, true);
                break;
            default:
                if (!g()) {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_bottom_banner_without_icon", "layout"), (ViewGroup) this, true);
                    break;
                } else {
                    this.f5021b = LayoutInflater.from(getContext()).inflate(p.a(getContext(), "myoffer_panel_view_bottom_banner", "layout"), (ViewGroup) this, true);
                    break;
                }
        }
        this.f5020a = i2 == 1 || i2 == 2 || i2 == 5 || i2 == 6 || i2 == 9;
        this.f5036q.clear();
        this.f5022c = (ImageView) this.f5021b.findViewById(p.a(getContext(), "myoffer_iv_banner_icon", "id"));
        this.f5024e = (TextView) this.f5021b.findViewById(p.a(getContext(), "myoffer_tv_banner_title", "id"));
        this.f5025f = (TextView) this.f5021b.findViewById(p.a(getContext(), "myoffer_tv_banner_desc", "id"));
        this.f5026g = (ScanningAnimButton) this.f5021b.findViewById(p.a(getContext(), "myoffer_panel_cta_layout", "id"));
        this.f5023d = (ImageView) this.f5021b.findViewById(p.a(getContext(), "myoffer_ad_logo", "id"));
        w wVar = this.f5031l;
        ImageView imageView = this.f5022c;
        if (imageView != null) {
            View view = this.f5037r;
            if (view == null) {
                String strM = wVar.m();
                if (!TextUtils.isEmpty(strM)) {
                    ViewGroup.LayoutParams layoutParams = this.f5022c.getLayoutParams();
                    b.a(getContext()).a(new e(1, strM), layoutParams.width, layoutParams.height, new AnonymousClass2(strM));
                }
            } else if (imageView != null && view != null) {
                imageView.setVisibility(0);
                view.setVisibility(0);
                ViewParent parent = imageView.getParent();
                if ((parent instanceof ViewGroup) && (iIndexOfChild = (viewGroup = (ViewGroup) parent).indexOfChild(imageView)) >= 0) {
                    ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
                    ak.a(imageView);
                    ak.a(view);
                    RoundFrameLayout roundFrameLayout = new RoundFrameLayout(getContext());
                    int i3 = this.f5032m;
                    if (i3 == 2 || i3 == 6) {
                        roundFrameLayout.setRadius(8);
                    } else {
                        roundFrameLayout.setRadius(12);
                    }
                    roundFrameLayout.addView(view);
                    viewGroup.addView(roundFrameLayout, iIndexOfChild, layoutParams2);
                    roundFrameLayout.setId(imageView.getId());
                    if (view instanceof ImageView) {
                        this.f5022c = (ImageView) view;
                    }
                }
            }
            if (!g()) {
                this.f5022c.setVisibility(8);
            }
        }
        if (this.f5025f != null) {
            if (TextUtils.isEmpty(wVar.l())) {
                this.f5025f.setVisibility(8);
            } else {
                this.f5025f.setText(wVar.l());
            }
        }
        if (this.f5024e != null) {
            if (TextUtils.isEmpty(wVar.k())) {
                this.f5024e.setVisibility(8);
            } else {
                this.f5024e.setText(wVar.k());
            }
        }
        if (this.f5026g != null) {
            if (TextUtils.isEmpty(wVar.p())) {
                this.f5026g.setText(c.a(getContext(), wVar));
            } else {
                this.f5026g.setText(wVar.p());
            }
            this.f5026g.setOnClickListener(new AnonymousClass3());
            this.f5026g.startAnimation(this.f5030k.f4500t.D());
        }
        new com.anythink.core.common.inner.ui.e.a(wVar, this.f5030k).b(this);
        if (this.f5022c != null) {
            if (!this.f5031l.E()) {
                this.f5022c.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5022c);
        }
        if (this.f5024e != null) {
            if (!this.f5031l.E()) {
                this.f5024e.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5024e);
        }
        if (this.f5025f != null) {
            if (!this.f5031l.E()) {
                this.f5025f.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5025f);
        }
        if (this.f5026g != null) {
            if (!this.f5031l.E()) {
                this.f5026g.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5026g);
        }
        if (this.f5023d != null) {
            if (!this.f5031l.E()) {
                this.f5023d.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5023d);
        }
        View viewFindViewById = this.f5021b.findViewById(p.a(getContext(), "myoffer_panel_view_blank", "id"));
        if (viewFindViewById != null) {
            if (!this.f5031l.E()) {
                viewFindViewById.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(viewFindViewById);
        } else {
            if (!this.f5031l.E()) {
                this.f5021b.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5021b);
        }
        ImageView imageView2 = this.f5022c;
        if (imageView2 instanceof RoundImageView) {
            ((RoundImageView) imageView2).setNeedRadiu(true);
            int i4 = this.f5032m;
            if (i4 == 2 || i4 == 6) {
                ((RoundImageView) this.f5022c).setRadiusInDip(8);
            } else {
                ((RoundImageView) this.f5022c).setRadiusInDip(12);
            }
            this.f5022c.invalidate();
        }
    }

    private void b() {
        ViewGroup viewGroup;
        int iIndexOfChild;
        this.f5036q.clear();
        this.f5022c = (ImageView) this.f5021b.findViewById(p.a(getContext(), "myoffer_iv_banner_icon", "id"));
        this.f5024e = (TextView) this.f5021b.findViewById(p.a(getContext(), "myoffer_tv_banner_title", "id"));
        this.f5025f = (TextView) this.f5021b.findViewById(p.a(getContext(), "myoffer_tv_banner_desc", "id"));
        this.f5026g = (ScanningAnimButton) this.f5021b.findViewById(p.a(getContext(), "myoffer_panel_cta_layout", "id"));
        this.f5023d = (ImageView) this.f5021b.findViewById(p.a(getContext(), "myoffer_ad_logo", "id"));
        w wVar = this.f5031l;
        ImageView imageView = this.f5022c;
        if (imageView != null) {
            View view = this.f5037r;
            if (view == null) {
                String strM = wVar.m();
                if (!TextUtils.isEmpty(strM)) {
                    ViewGroup.LayoutParams layoutParams = this.f5022c.getLayoutParams();
                    b.a(getContext()).a(new e(1, strM), layoutParams.width, layoutParams.height, new AnonymousClass2(strM));
                }
            } else if (imageView != null && view != null) {
                imageView.setVisibility(0);
                view.setVisibility(0);
                ViewParent parent = imageView.getParent();
                if ((parent instanceof ViewGroup) && (iIndexOfChild = (viewGroup = (ViewGroup) parent).indexOfChild(imageView)) >= 0) {
                    ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
                    ak.a(imageView);
                    ak.a(view);
                    RoundFrameLayout roundFrameLayout = new RoundFrameLayout(getContext());
                    int i2 = this.f5032m;
                    if (i2 == 2 || i2 == 6) {
                        roundFrameLayout.setRadius(8);
                    } else {
                        roundFrameLayout.setRadius(12);
                    }
                    roundFrameLayout.addView(view);
                    viewGroup.addView(roundFrameLayout, iIndexOfChild, layoutParams2);
                    roundFrameLayout.setId(imageView.getId());
                    if (view instanceof ImageView) {
                        this.f5022c = (ImageView) view;
                    }
                }
            }
            if (!g()) {
                this.f5022c.setVisibility(8);
            }
        }
        if (this.f5025f != null) {
            if (TextUtils.isEmpty(wVar.l())) {
                this.f5025f.setVisibility(8);
            } else {
                this.f5025f.setText(wVar.l());
            }
        }
        if (this.f5024e != null) {
            if (TextUtils.isEmpty(wVar.k())) {
                this.f5024e.setVisibility(8);
            } else {
                this.f5024e.setText(wVar.k());
            }
        }
        if (this.f5026g != null) {
            if (TextUtils.isEmpty(wVar.p())) {
                this.f5026g.setText(c.a(getContext(), wVar));
            } else {
                this.f5026g.setText(wVar.p());
            }
            this.f5026g.setOnClickListener(new AnonymousClass3());
            this.f5026g.startAnimation(this.f5030k.f4500t.D());
        }
        new com.anythink.core.common.inner.ui.e.a(wVar, this.f5030k).b(this);
        if (this.f5022c != null) {
            if (!this.f5031l.E()) {
                this.f5022c.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5022c);
        }
        if (this.f5024e != null) {
            if (!this.f5031l.E()) {
                this.f5024e.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5024e);
        }
        if (this.f5025f != null) {
            if (!this.f5031l.E()) {
                this.f5025f.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5025f);
        }
        if (this.f5026g != null) {
            if (!this.f5031l.E()) {
                this.f5026g.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5026g);
        }
        if (this.f5023d != null) {
            if (!this.f5031l.E()) {
                this.f5023d.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5023d);
        }
        View viewFindViewById = this.f5021b.findViewById(p.a(getContext(), "myoffer_panel_view_blank", "id"));
        if (viewFindViewById != null) {
            if (!this.f5031l.E()) {
                viewFindViewById.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(viewFindViewById);
        } else {
            if (!this.f5031l.E()) {
                this.f5021b.setOnClickListener(this.f5038s);
            }
            this.f5036q.add(this.f5021b);
        }
        ImageView imageView2 = this.f5022c;
        if (imageView2 instanceof RoundImageView) {
            ((RoundImageView) imageView2).setNeedRadiu(true);
            int i3 = this.f5032m;
            if (i3 == 2 || i3 == 6) {
                ((RoundImageView) this.f5022c).setRadiusInDip(8);
            } else {
                ((RoundImageView) this.f5022c).setRadiusInDip(12);
            }
            this.f5022c.invalidate();
        }
    }

    private void c() {
        ImageView imageView = this.f5022c;
        if (imageView instanceof RoundImageView) {
            ((RoundImageView) imageView).setNeedRadiu(true);
            int i2 = this.f5032m;
            if (i2 == 2 || i2 == 6) {
                ((RoundImageView) this.f5022c).setRadiusInDip(8);
            } else {
                ((RoundImageView) this.f5022c).setRadiusInDip(12);
            }
            this.f5022c.invalidate();
        }
    }

    private boolean a() {
        return this.f5033n && !this.f5034o;
    }

    private void a(w wVar) {
        ViewGroup viewGroup;
        int iIndexOfChild;
        ImageView imageView = this.f5022c;
        if (imageView != null) {
            View view = this.f5037r;
            if (view == null) {
                String strM = wVar.m();
                if (!TextUtils.isEmpty(strM)) {
                    ViewGroup.LayoutParams layoutParams = this.f5022c.getLayoutParams();
                    b.a(getContext()).a(new e(1, strM), layoutParams.width, layoutParams.height, new AnonymousClass2(strM));
                }
            } else if (imageView != null && view != null) {
                imageView.setVisibility(0);
                view.setVisibility(0);
                ViewParent parent = imageView.getParent();
                if ((parent instanceof ViewGroup) && (iIndexOfChild = (viewGroup = (ViewGroup) parent).indexOfChild(imageView)) >= 0) {
                    ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
                    ak.a(imageView);
                    ak.a(view);
                    RoundFrameLayout roundFrameLayout = new RoundFrameLayout(getContext());
                    int i2 = this.f5032m;
                    if (i2 != 2 && i2 != 6) {
                        roundFrameLayout.setRadius(12);
                    } else {
                        roundFrameLayout.setRadius(8);
                    }
                    roundFrameLayout.addView(view);
                    viewGroup.addView(roundFrameLayout, iIndexOfChild, layoutParams2);
                    roundFrameLayout.setId(imageView.getId());
                    if (view instanceof ImageView) {
                        this.f5022c = (ImageView) view;
                    }
                }
            }
            if (!g()) {
                this.f5022c.setVisibility(8);
            }
        }
        if (this.f5025f != null) {
            if (!TextUtils.isEmpty(wVar.l())) {
                this.f5025f.setText(wVar.l());
            } else {
                this.f5025f.setVisibility(8);
            }
        }
        if (this.f5024e != null) {
            if (!TextUtils.isEmpty(wVar.k())) {
                this.f5024e.setText(wVar.k());
            } else {
                this.f5024e.setVisibility(8);
            }
        }
        if (this.f5026g != null) {
            if (!TextUtils.isEmpty(wVar.p())) {
                this.f5026g.setText(wVar.p());
            } else {
                this.f5026g.setText(c.a(getContext(), wVar));
            }
            this.f5026g.setOnClickListener(new AnonymousClass3());
            this.f5026g.startAnimation(this.f5030k.f4500t.D());
        }
        new com.anythink.core.common.inner.ui.e.a(wVar, this.f5030k).b(this);
    }

    private void a(ImageView imageView, View view) {
        ViewGroup viewGroup;
        int iIndexOfChild;
        if (imageView == null || view == null) {
            return;
        }
        imageView.setVisibility(0);
        view.setVisibility(0);
        ViewParent parent = imageView.getParent();
        if (!(parent instanceof ViewGroup) || (iIndexOfChild = (viewGroup = (ViewGroup) parent).indexOfChild(imageView)) < 0) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        ak.a(imageView);
        ak.a(view);
        RoundFrameLayout roundFrameLayout = new RoundFrameLayout(getContext());
        int i2 = this.f5032m;
        if (i2 != 2 && i2 != 6) {
            roundFrameLayout.setRadius(12);
        } else {
            roundFrameLayout.setRadius(8);
        }
        roundFrameLayout.addView(view);
        viewGroup.addView(roundFrameLayout, iIndexOfChild, layoutParams);
        roundFrameLayout.setId(imageView.getId());
        if (view instanceof ImageView) {
            this.f5022c = (ImageView) view;
        }
    }

    private void a(RoundFrameLayout roundFrameLayout) {
        int i2 = this.f5032m;
        if (i2 != 2 && i2 != 6) {
            roundFrameLayout.setRadius(12);
        } else {
            roundFrameLayout.setRadius(8);
        }
    }
}
