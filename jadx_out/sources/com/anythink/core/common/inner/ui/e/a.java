package com.anythink.core.common.inner.ui.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    View f5163a;

    /* renamed from: b, reason: collision with root package name */
    ImageView f5164b;

    /* renamed from: c, reason: collision with root package name */
    TextView f5165c;

    /* renamed from: d, reason: collision with root package name */
    TextView f5166d;

    /* renamed from: e, reason: collision with root package name */
    TextView f5167e;

    /* renamed from: f, reason: collision with root package name */
    TextView f5168f;

    /* renamed from: g, reason: collision with root package name */
    TextView f5169g;

    /* renamed from: h, reason: collision with root package name */
    TextView f5170h;

    /* renamed from: i, reason: collision with root package name */
    ImageView f5171i;

    /* renamed from: j, reason: collision with root package name */
    private final w<?> f5172j;

    /* renamed from: k, reason: collision with root package name */
    private final x f5173k;

    /* renamed from: l, reason: collision with root package name */
    private y f5174l;

    /* renamed from: m, reason: collision with root package name */
    private FrameLayout f5175m;

    /* renamed from: n, reason: collision with root package name */
    private View f5176n;

    /* renamed from: com.anythink.core.common.inner.ui.e.a$7, reason: invalid class name */
    public class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.e.a$8, reason: invalid class name */
    public class AnonymousClass8 implements b.a {
        public AnonymousClass8() {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, a.this.f5172j.o())) {
                a.this.f5164b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                a.this.f5164b.setImageBitmap(bitmap);
                a.this.f5164b.setVisibility(0);
                a.this.f5164b.post(new Runnable() { // from class: com.anythink.core.common.inner.ui.e.a.8.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (a.this.f5173k != null && a.this.f5172j.E() && a.this.f5173k.f4490j == 28) {
                            a.this.f5164b.setBackgroundColor(Color.parseColor("#66999999"));
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.anythink.core.common.inner.ui.e.a$9, reason: invalid class name */
    public class AnonymousClass9 implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f5186a;

        public AnonymousClass9(View view) {
            this.f5186a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            this.f5186a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            int height = this.f5186a.getHeight();
            int width = this.f5186a.getWidth();
            int iA = p.a(this.f5186a.getContext(), 8.0f);
            ViewGroup.LayoutParams layoutParams = this.f5186a.getLayoutParams();
            layoutParams.height = iA;
            if (width <= 0 || height <= 0) {
                layoutParams.width = iA;
            } else {
                layoutParams.width = (iA * width) / height;
            }
            this.f5186a.setLayoutParams(layoutParams);
        }
    }

    public a(w<?> wVar, x xVar) {
        this.f5172j = wVar;
        this.f5173k = xVar;
        if (wVar != null) {
            this.f5174l = xVar.f4500t;
        }
    }

    private void c(View view) {
        Context context = view.getContext();
        this.f5175m = (FrameLayout) view.findViewById(p.a(context, "myoffer_ad_logo_container", "id"));
        this.f5164b = (ImageView) view.findViewById(p.a(context, "myoffer_ad_logo", "id"));
        this.f5171i = (ImageView) view.findViewById(p.a(context, "myoffer_banner_self_ad_logo_label", "id"));
        if (this.f5164b == null) {
            this.f5164b = (ImageView) view.findViewById(p.a(context, "myoffer_banner_self_ad_logo", "id"));
        }
        View view2 = this.f5176n;
        if (this.f5175m != null && view2 != null && view2.getVisibility() == 0) {
            if (view2.getParent() != null && (view2.getParent() instanceof ViewGroup)) {
                ((ViewGroup) view2.getParent()).removeView(view2);
            }
            this.f5175m.removeAllViews();
            this.f5175m.addView(view2);
            view2.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass9(view2));
            return;
        }
        ImageView imageView = this.f5164b;
        if (imageView != null) {
            imageView.setVisibility(0);
            this.f5164b.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.f5164b.setOnClickListener(new AnonymousClass7());
            this.f5164b.setImageResource(p.a(context, "myoffer_ad_logo_default", "drawable"));
            if (!TextUtils.isEmpty(this.f5172j.o())) {
                int iA = p.a(context, 100.0f);
                com.anythink.core.common.res.b.a(context).a(new e(3, this.f5172j.o()), iA, iA, new AnonymousClass8());
                return;
            }
            if (this.f5172j.C() == null) {
                if (this.f5172j.E()) {
                    this.f5164b.setVisibility(4);
                    return;
                }
                return;
            }
            Bitmap bitmapC = this.f5172j.C();
            ViewGroup.LayoutParams layoutParams = this.f5164b.getLayoutParams();
            int i2 = layoutParams.height;
            layoutParams.width = (int) (i2 * ((bitmapC.getWidth() * 1.0f) / bitmapC.getHeight()));
            layoutParams.height = i2;
            this.f5164b.setLayoutParams(layoutParams);
            this.f5164b.setScaleType(ImageView.ScaleType.FIT_XY);
            this.f5164b.setImageBitmap(bitmapC);
            this.f5164b.setImageBitmap(this.f5172j.C());
            this.f5164b.setVisibility(0);
        }
    }

    private boolean d(View view) {
        if (this.f5175m == null || view == null || view.getVisibility() != 0) {
            return false;
        }
        if (view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        this.f5175m.removeAllViews();
        this.f5175m.addView(view);
        view.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass9(view));
        return true;
    }

    public final void a(View view) {
        this.f5176n = view;
    }

    public final void b(View view) {
        Context context = view.getContext();
        Context context2 = view.getContext();
        this.f5175m = (FrameLayout) view.findViewById(p.a(context2, "myoffer_ad_logo_container", "id"));
        this.f5164b = (ImageView) view.findViewById(p.a(context2, "myoffer_ad_logo", "id"));
        this.f5171i = (ImageView) view.findViewById(p.a(context2, "myoffer_banner_self_ad_logo_label", "id"));
        if (this.f5164b == null) {
            this.f5164b = (ImageView) view.findViewById(p.a(context2, "myoffer_banner_self_ad_logo", "id"));
        }
        View view2 = this.f5176n;
        if (this.f5175m == null || view2 == null || view2.getVisibility() != 0) {
            ImageView imageView = this.f5164b;
            if (imageView != null) {
                imageView.setVisibility(0);
                this.f5164b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                this.f5164b.setOnClickListener(new AnonymousClass7());
                this.f5164b.setImageResource(p.a(context2, "myoffer_ad_logo_default", "drawable"));
                if (!TextUtils.isEmpty(this.f5172j.o())) {
                    int iA = p.a(context2, 100.0f);
                    com.anythink.core.common.res.b.a(context2).a(new e(3, this.f5172j.o()), iA, iA, new AnonymousClass8());
                } else if (this.f5172j.C() != null) {
                    Bitmap bitmapC = this.f5172j.C();
                    ViewGroup.LayoutParams layoutParams = this.f5164b.getLayoutParams();
                    int i2 = layoutParams.height;
                    layoutParams.width = (int) (i2 * ((bitmapC.getWidth() * 1.0f) / bitmapC.getHeight()));
                    layoutParams.height = i2;
                    this.f5164b.setLayoutParams(layoutParams);
                    this.f5164b.setScaleType(ImageView.ScaleType.FIT_XY);
                    this.f5164b.setImageBitmap(bitmapC);
                    this.f5164b.setImageBitmap(this.f5172j.C());
                    this.f5164b.setVisibility(0);
                } else if (this.f5172j.E()) {
                    this.f5164b.setVisibility(4);
                }
            }
        } else {
            if (view2.getParent() != null && (view2.getParent() instanceof ViewGroup)) {
                ((ViewGroup) view2.getParent()).removeView(view2);
            }
            this.f5175m.removeAllViews();
            this.f5175m.addView(view2);
            view2.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass9(view2));
        }
        ViewGroup viewGroup = (ViewGroup) view.findViewById(p.a(context, "myoffer_four_element_container", "id"));
        this.f5163a = viewGroup;
        if (viewGroup == null) {
            return;
        }
        this.f5165c = (TextView) viewGroup.findViewById(p.a(context, "myoffer_publisher_name", "id"));
        this.f5167e = (TextView) this.f5163a.findViewById(p.a(context, "myoffer_privacy_agreement", "id"));
        this.f5168f = (TextView) this.f5163a.findViewById(p.a(context, "myoffer_permission_manage", "id"));
        this.f5166d = (TextView) this.f5163a.findViewById(p.a(context, "myoffer_version_name", "id"));
        this.f5169g = (TextView) this.f5163a.findViewById(p.a(context, "myoffer_function_manage", "id"));
        this.f5170h = (TextView) this.f5163a.findViewById(p.a(context, "myoffer_disclaimer", "id"));
        View viewFindViewById = view.findViewById(p.a(context, "myoffer_four_element_container_bg", "id"));
        View viewFindViewById2 = this.f5163a.findViewById(p.a(context, "myoffer_center_line1", "id"));
        if (viewFindViewById2 == null) {
            viewFindViewById2 = this.f5163a.findViewById(p.a(context, "myoffer_banner_center_line", "id"));
        }
        View viewFindViewById3 = this.f5163a.findViewById(p.a(context, "myoffer_center_line2", "id"));
        if (viewFindViewById3 == null) {
            viewFindViewById3 = this.f5163a.findViewById(p.a(context, "myoffer_banner_center_line2", "id"));
        }
        View viewFindViewById4 = this.f5163a.findViewById(p.a(context, "myoffer_center_line3", "id"));
        if (this.f5172j.D()) {
            this.f5163a.setVisibility(0);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            TextView textView = this.f5165c;
            if (textView != null) {
                textView.setVisibility(0);
                this.f5165c.setText(this.f5172j.x());
                this.f5165c.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.e.a.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                    }
                });
            }
            TextView textView2 = this.f5166d;
            if (textView2 != null) {
                textView2.setVisibility(0);
                this.f5166d.setText(context.getResources().getString(p.a(context, "myoffer_panel_version", "string"), this.f5172j.y()));
                this.f5166d.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.e.a.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                    }
                });
            }
            if (this.f5167e != null) {
                if (TextUtils.isEmpty(this.f5172j.z())) {
                    this.f5167e.setVisibility(8);
                } else {
                    this.f5167e.setVisibility(0);
                    this.f5167e.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.e.a.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            com.anythink.core.common.v.x.a(s.b().g(), a.this.f5172j.z());
                        }
                    });
                }
            }
            if (this.f5168f != null) {
                if (TextUtils.isEmpty(this.f5172j.A())) {
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setVisibility(8);
                    }
                    this.f5168f.setVisibility(8);
                } else {
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setVisibility(0);
                    }
                    this.f5168f.setVisibility(0);
                    this.f5168f.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.e.a.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            com.anythink.core.common.v.x.a(s.b().g(), a.this.f5172j.A());
                        }
                    });
                }
            }
            if (this.f5169g != null) {
                if (TextUtils.isEmpty(this.f5172j.b())) {
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setVisibility(8);
                    }
                    this.f5169g.setVisibility(8);
                } else {
                    if (viewFindViewById3 != null) {
                        viewFindViewById3.setVisibility(0);
                    }
                    this.f5169g.setVisibility(0);
                    this.f5169g.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.e.a.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            com.anythink.core.common.v.x.a(s.b().g(), a.this.f5172j.b());
                        }
                    });
                }
            }
        } else {
            if (this.f5163a != null && !TextUtils.equals(String.valueOf(this.f5174l.n()), "2")) {
                this.f5163a.setVisibility(8);
            }
            TextView textView3 = this.f5166d;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            TextView textView4 = this.f5165c;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            TextView textView5 = this.f5167e;
            if (textView5 != null) {
                textView5.setVisibility(8);
            }
            TextView textView6 = this.f5168f;
            if (textView6 != null) {
                textView6.setVisibility(8);
            }
            TextView textView7 = this.f5169g;
            if (textView7 != null) {
                textView7.setVisibility(8);
            }
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(8);
            }
            if (viewFindViewById3 != null) {
                viewFindViewById3.setVisibility(8);
            }
            if (viewFindViewById != null) {
                try {
                    viewFindViewById.setBackground(null);
                } catch (Throwable unused) {
                }
            }
        }
        if (this.f5170h != null) {
            View view3 = this.f5163a;
            if (view3 != null) {
                view3.setVisibility(0);
            }
            this.f5170h.setVisibility(0);
            if (viewFindViewById4 != null && this.f5172j.D()) {
                viewFindViewById4.setVisibility(0);
            }
            if (TextUtils.isEmpty(this.f5173k.f4500t.L())) {
                return;
            }
            this.f5170h.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.e.a.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    com.anythink.core.common.v.x.a(s.b().g(), a.this.f5173k.f4500t.L());
                }
            });
        }
    }

    private void a() {
        ImageView imageView = this.f5164b;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        View view = this.f5163a;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private void a(BaseAd baseAd, com.anythink.core.basead.b.b bVar) {
        a(baseAd, bVar, false);
    }

    public final void a(BaseAd baseAd, com.anythink.core.basead.b.b bVar, boolean z2) {
        x xVar = this.f5173k;
        if (xVar == null || baseAd == null || bVar == null || this.f5163a == null || xVar.f4490j != 34) {
            return;
        }
        String domain = baseAd.getDomain();
        String warning = baseAd.getWarning();
        String adFrom = baseAd.getAdFrom();
        if (TextUtils.isEmpty(domain) && TextUtils.isEmpty(warning) && TextUtils.isEmpty(adFrom)) {
            return;
        }
        this.f5163a.setVisibility(0);
        if (z2 && this.f5166d != null && !TextUtils.isEmpty(adFrom)) {
            a(this.f5166d, adFrom);
            bVar.f(this.f5166d);
        }
        if (this.f5168f != null && !TextUtils.isEmpty(domain)) {
            a(this.f5168f, domain);
            bVar.g(this.f5168f);
        }
        if (this.f5169g == null || TextUtils.isEmpty(warning)) {
            return;
        }
        a(this.f5169g, warning);
        bVar.h(this.f5169g);
    }

    private static void a(TextView textView, String str) {
        if (textView == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            textView.setVisibility(0);
            textView.setText(str);
        } else {
            textView.setVisibility(8);
        }
    }
}
