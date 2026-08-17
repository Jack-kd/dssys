package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.d0;
import com.smartdigimkt.v1.i2;
import com.smartdigimkt.v1.k2;
import com.smartdigimkt.v1.l2;

/* loaded from: classes5.dex */
public class EndCardView extends BaseEndCardView {

    /* renamed from: e, reason: collision with root package name */
    public int f43395e;

    /* renamed from: f, reason: collision with root package name */
    public int f43396f;

    /* renamed from: g, reason: collision with root package name */
    public RoundImageView f43397g;

    /* renamed from: h, reason: collision with root package name */
    public RoundImageView f43398h;

    /* renamed from: i, reason: collision with root package name */
    public ScanningAnimButton f43399i;

    /* renamed from: j, reason: collision with root package name */
    public Bitmap f43400j;

    /* renamed from: k, reason: collision with root package name */
    public final i2 f43401k;

    public EndCardView(Context context, c cVar, a aVar) {
        super(context, cVar, aVar);
        this.f43401k = new i2(this);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseEndCardView
    public final void a() {
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseEndCardView
    public Drawable getBgDrawable() {
        Bitmap bitmap = this.f43400j;
        return (bitmap == null || bitmap.isRecycled()) ? super.getBgDrawable() : new BitmapDrawable(this.f43400j);
    }

    public View getLearnMoreButton() {
        return this.f43399i;
    }

    public void init(boolean z2, boolean z3, d0 d0Var) {
        setId(k.a(getContext(), "myoffer_end_card_id", "id"));
        this.mListener = d0Var;
        this.f43397g = new RoundImageView(getContext());
        addView(this.f43397g, new RelativeLayout.LayoutParams(-1, -1));
        if (z2) {
            c cVar = this.f43246a;
            this.f43398h = new RoundImageView(getContext());
            int iA = k.a(getContext(), 12.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iA);
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            addView(this.f43398h, layoutParams);
            this.f43398h.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.f43398h.setImageResource(k.a(getContext(), "myoffer_ad_logo_default", "drawable"));
            String str = SDMSDK.getInstance().isUseLocalLogo() ? "" : cVar.f41816g;
            if (!TextUtils.isEmpty(str)) {
                ViewGroup.LayoutParams layoutParams2 = this.f43398h.getLayoutParams();
                m.a(getContext()).a(new o(1, str), layoutParams2.width, layoutParams2.height, new l2(this, str, iA));
            }
        }
        if (z3) {
            ScanningAnimButton scanningAnimButton = new ScanningAnimButton(getContext());
            this.f43399i = scanningAnimButton;
            scanningAnimButton.setText(k.a(getContext(), "myoffer_cta_learn_more", "string"));
            this.f43399i.setTextColor(Color.parseColor("#ffffffff"));
            this.f43399i.setTextSize(14.0f);
            this.f43399i.setGravity(17);
            this.f43399i.setBackgroundResource(k.a(getContext(), "myoffer_splash_bg_rectangle_btn_cta_asseblem", "drawable"));
            this.f43246a.getClass();
            this.f43399i.setOnClickListener(this.f43401k);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, k.a(getContext(), 48.0f));
            layoutParams3.addRule(12);
            layoutParams3.bottomMargin = k.a(getContext(), 96.0f);
            layoutParams3.leftMargin = k.a(getContext(), 24.0f);
            layoutParams3.rightMargin = k.a(getContext(), 24.0f);
            addView(this.f43399i, layoutParams3);
        }
        this.f43246a.getClass();
        setOnClickListener(this.f43401k);
    }

    public void load() {
        c cVar = this.f43246a;
        try {
            m.a(getContext()).a(new o(1, cVar.f41815f), this.f43395e, this.f43396f, new k2(this, cVar));
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setSize(int i2, int i3) {
        this.f43395e = i2;
        this.f43396f = i3;
    }
}
