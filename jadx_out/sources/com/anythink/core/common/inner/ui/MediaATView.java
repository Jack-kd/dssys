package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.inner.ui.BaseMediaATView;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.g;
import com.anythink.core.common.v.p;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class MediaATView extends BaseMediaATView {
    public static final String TAG = "anythink_" + MediaATView.class.getSimpleName();

    /* renamed from: j, reason: collision with root package name */
    protected TextView f5006j;

    /* renamed from: k, reason: collision with root package name */
    protected TextView f5007k;

    /* renamed from: l, reason: collision with root package name */
    protected ImageView f5008l;

    /* renamed from: m, reason: collision with root package name */
    protected ImageView f5009m;

    /* renamed from: n, reason: collision with root package name */
    protected RoundImageView f5010n;

    /* renamed from: o, reason: collision with root package name */
    protected TextView f5011o;

    /* renamed from: p, reason: collision with root package name */
    protected ImageView f5012p;

    /* renamed from: q, reason: collision with root package name */
    RelativeLayout f5013q;

    /* renamed from: com.anythink.core.common.inner.ui.MediaATView$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {
        public AnonymousClass2() {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
            Log.e(MediaATView.TAG, "load: image load fail:".concat(String.valueOf(str2)));
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, final Bitmap bitmap) {
            if (TextUtils.equals(MediaATView.this.f4839a.n(), str)) {
                MediaATView.this.f5009m.setVisibility(0);
                MediaATView.this.f5009m.setImageBitmap(bitmap);
                MediaATView.this.post(new Runnable() { // from class: com.anythink.core.common.inner.ui.MediaATView.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int width = MediaATView.this.getWidth();
                        int height = MediaATView.this.getHeight();
                        if (width <= 0 || height <= 0) {
                            return;
                        }
                        int[] iArrA = ak.a(width, height, bitmap.getWidth() / bitmap.getHeight());
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) MediaATView.this.f5009m.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.width = iArrA[0];
                            layoutParams.height = iArrA[1];
                            layoutParams.addRule(13);
                            MediaATView.this.f5009m.setLayoutParams(layoutParams);
                        }
                    }
                });
                g.a(MediaATView.this.getContext(), bitmap, new g.a() { // from class: com.anythink.core.common.inner.ui.MediaATView.2.2
                    @Override // com.anythink.core.common.v.g.a
                    public final void a() {
                    }

                    @Override // com.anythink.core.common.v.g.a
                    public final void a(Bitmap bitmap2) {
                        MediaATView.this.f5008l.setVisibility(0);
                        MediaATView.this.f5008l.setScaleType(ImageView.ScaleType.FIT_XY);
                        MediaATView.this.f5008l.setImageBitmap(bitmap2);
                    }
                });
            }
        }
    }

    public MediaATView(Context context, w wVar, x xVar, boolean z2, BaseMediaATView.a aVar) {
        super(context, wVar, xVar, z2, aVar);
    }

    private String b() {
        int i2 = this.f4846h;
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "myoffer_media_ad_view" : "myoffer_template_text_float" : "myoffer_template_top_text" : "myoffer_template_top_image" : "myoffer_template_left_text" : "myoffer_template_left_image";
    }

    private void c() {
        FrameLayout frameLayout;
        TextView textView;
        if (a()) {
            int i2 = this.f4846h;
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                ViewGroup viewGroup = (ViewGroup) findViewById(p.a(getContext(), "myoffer_title_desc", "id"));
                if (viewGroup != null) {
                    ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                    if (layoutParams instanceof RelativeLayout.LayoutParams) {
                        ((RelativeLayout.LayoutParams) layoutParams).leftMargin = getResources().getDimensionPixelSize(p.a(getContext(), "myoffer_template_margin_white", "dimen"));
                        viewGroup.setLayoutParams(layoutParams);
                    }
                }
            } else if ((i2 == 1 || i2 == 2) && (textView = this.f5006j) != null) {
                ViewGroup.LayoutParams layoutParams2 = textView.getLayoutParams();
                if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                    ((LinearLayout.LayoutParams) layoutParams2).leftMargin = 0;
                    this.f5006j.setLayoutParams(layoutParams2);
                }
            }
        }
        if (TextUtils.isEmpty(this.f4839a.k()) && this.f4846h == 6) {
            ViewGroup.LayoutParams layoutParams3 = this.f5011o.getLayoutParams();
            if (layoutParams3 instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams3).topMargin = 0;
                this.f5011o.setLayoutParams(layoutParams3);
            }
        }
        if (TextUtils.isEmpty(this.f4839a.l())) {
            int i3 = this.f4846h;
            if (i3 == 2 || i3 == 1) {
                ViewGroup.LayoutParams layoutParams4 = this.f5007k.getLayoutParams();
                if (layoutParams4 instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) layoutParams4;
                    layoutParams5.addRule(13);
                    layoutParams5.removeRule(12);
                }
            }
            if (this.f4846h != 5 || (frameLayout = (FrameLayout) findViewById(p.a(getContext(), "myoffer_template_bg_desc", "id"))) == null) {
                return;
            }
            frameLayout.setVisibility(8);
        }
    }

    private static void d() {
    }

    public boolean a() {
        return TextUtils.isEmpty(this.f4839a.m());
    }

    @Override // com.anythink.core.common.inner.ui.BaseMediaATView
    public List<View> getClickViews() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f5007k);
        if (this.f4840b.q() != 1) {
            arrayList.add(this.f5006j);
            arrayList.add(this.f5009m);
            arrayList.add(this.f5010n);
            arrayList.add(this.f5011o);
            y yVar = this.f4840b;
            if (yVar != null && yVar.q() == 0) {
                arrayList.add(this.f5008l);
                arrayList.add(this.f5013q);
            }
        }
        return arrayList;
    }

    @Override // com.anythink.core.common.inner.ui.BaseMediaATView
    public void init(int i2, int i3, int i4) {
        FrameLayout frameLayout;
        TextView textView;
        w wVar;
        View viewFindViewById;
        super.init(i2, i3, i4);
        int i5 = this.f4846h;
        View viewInflate = LayoutInflater.from(getContext()).inflate(p.a(getContext(), i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? i5 != 5 ? "myoffer_media_ad_view" : "myoffer_template_text_float" : "myoffer_template_top_text" : "myoffer_template_top_image" : "myoffer_template_left_text" : "myoffer_template_left_image", "layout"), (ViewGroup) null, false);
        FrameLayout frameLayout2 = this.f4844f;
        if (frameLayout2 != null) {
            frameLayout2.removeAllViews();
            this.f4844f.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        }
        this.f5006j = (TextView) findViewById(p.a(getContext(), "myoffer_banner_ad_title", "id"));
        this.f5007k = (TextView) findViewById(p.a(getContext(), "myoffer_media_ad_cta", "id"));
        this.f5008l = (ImageView) findViewById(p.a(getContext(), "myoffer_media_ad_bg_blur", "id"));
        this.f5009m = (ImageView) findViewById(p.a(getContext(), "myoffer_media_ad_main_image", "id"));
        this.f5012p = (ImageView) findViewById(p.a(getContext(), "myoffer_ad_logo", "id"));
        this.f5010n = (RoundImageView) findViewById(p.a(getContext(), "myoffer_media_ad_icon", "id"));
        this.f5011o = (TextView) findViewById(p.a(getContext(), "myoffer_banner_ad_desc", "id"));
        this.f5013q = (RelativeLayout) findViewById(p.a(getContext(), "myoffer_media_ad_container", "id"));
        String strK = this.f4839a.k();
        if (TextUtils.isEmpty(strK)) {
            this.f5006j.setVisibility(8);
        } else {
            this.f5006j.setText(strK);
        }
        String strP = this.f4839a.p();
        if (TextUtils.isEmpty(strP)) {
            this.f5007k.setText(p.a(getContext(), "myoffer_cta_learn_more", "string"));
        } else {
            this.f5007k.setText(strP);
        }
        String strL = this.f4839a.l();
        if (TextUtils.isEmpty(strL)) {
            this.f5011o.setVisibility(8);
        } else {
            this.f5011o.setText(strL);
        }
        if (TextUtils.isEmpty(this.f4839a.m())) {
            this.f5010n.setVisibility(8);
        } else {
            this.f5010n.setRadiusInDip(6);
            this.f5010n.setNeedRadiu(true);
            ViewGroup.LayoutParams layoutParams = this.f5010n.getLayoutParams();
            b.a(getContext()).a(new e(1, this.f4839a.m()), layoutParams.width, layoutParams.height, new b.a() { // from class: com.anythink.core.common.inner.ui.MediaATView.1
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    if (TextUtils.equals(MediaATView.this.f4839a.m(), str)) {
                        MediaATView.this.f5010n.setImageBitmap(bitmap);
                    }
                }
            });
        }
        com.anythink.core.common.inner.ui.e.a aVar = new com.anythink.core.common.inner.ui.e.a(this.f4839a, this.f4841c);
        this.f4847i = aVar;
        aVar.b(this);
        if (!com.anythink.core.common.inner.a.a.a(this.f4839a) && (viewFindViewById = findViewById(p.a(getContext(), "myoffer_media_ad_main_image_container", "id"))) != null) {
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
            if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) layoutParams2).bottomMargin = p.a(getContext(), 84.0f);
                viewFindViewById.setLayoutParams(layoutParams2);
            }
        }
        a(i2, i3);
        if ((this.f5007k instanceof ScanningAnimButton) && (wVar = this.f4839a) != null && wVar.g() != null) {
            ((ScanningAnimButton) this.f5007k).startAnimation(this.f4839a.g().D());
        }
        if (a()) {
            int i6 = this.f4846h;
            if (i6 == 3 || i6 == 4 || i6 == 5) {
                ViewGroup viewGroup = (ViewGroup) findViewById(p.a(getContext(), "myoffer_title_desc", "id"));
                if (viewGroup != null) {
                    ViewGroup.LayoutParams layoutParams3 = viewGroup.getLayoutParams();
                    if (layoutParams3 instanceof RelativeLayout.LayoutParams) {
                        ((RelativeLayout.LayoutParams) layoutParams3).leftMargin = getResources().getDimensionPixelSize(p.a(getContext(), "myoffer_template_margin_white", "dimen"));
                        viewGroup.setLayoutParams(layoutParams3);
                    }
                }
            } else if ((i6 == 1 || i6 == 2) && (textView = this.f5006j) != null) {
                ViewGroup.LayoutParams layoutParams4 = textView.getLayoutParams();
                if (layoutParams4 instanceof LinearLayout.LayoutParams) {
                    ((LinearLayout.LayoutParams) layoutParams4).leftMargin = 0;
                    this.f5006j.setLayoutParams(layoutParams4);
                }
            }
        }
        if (TextUtils.isEmpty(this.f4839a.k()) && this.f4846h == 6) {
            ViewGroup.LayoutParams layoutParams5 = this.f5011o.getLayoutParams();
            if (layoutParams5 instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams5).topMargin = 0;
                this.f5011o.setLayoutParams(layoutParams5);
            }
        }
        if (TextUtils.isEmpty(this.f4839a.l())) {
            int i7 = this.f4846h;
            if (i7 == 2 || i7 == 1) {
                ViewGroup.LayoutParams layoutParams6 = this.f5007k.getLayoutParams();
                if (layoutParams6 instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) layoutParams6;
                    layoutParams7.addRule(13);
                    layoutParams7.removeRule(12);
                }
            }
            if (this.f4846h != 5 || (frameLayout = (FrameLayout) findViewById(p.a(getContext(), "myoffer_template_bg_desc", "id"))) == null) {
                return;
            }
            frameLayout.setVisibility(8);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
    }

    public void a(int i2, int i3) {
        this.f5009m.setScaleType(ImageView.ScaleType.FIT_CENTER);
        b.a(getContext()).a(new e(1, this.f4839a.n()), i2, i3, new AnonymousClass2());
    }

    private void b(int i2, int i3) {
        this.f5009m.setScaleType(ImageView.ScaleType.FIT_CENTER);
        b.a(getContext()).a(new e(1, this.f4839a.n()), i2, i3, new AnonymousClass2());
    }
}
