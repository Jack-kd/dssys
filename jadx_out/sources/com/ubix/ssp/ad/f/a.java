package com.ubix.ssp.ad.f;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.t.a.e;
import com.ubix.ssp.ad.g.k.d;

/* loaded from: classes5.dex */
public class a extends com.ubix.ssp.ad.b {

    /* renamed from: l, reason: collision with root package name */
    private int f47973l;

    /* renamed from: m, reason: collision with root package name */
    private int f47974m;

    /* renamed from: n, reason: collision with root package name */
    private int f47975n;

    /* renamed from: o, reason: collision with root package name */
    private int f47976o;

    /* renamed from: p, reason: collision with root package name */
    private double f47977p;

    /* renamed from: q, reason: collision with root package name */
    private d f47978q;

    public a(Context context) {
        super(context);
    }

    private void s() {
        e eVar = new e(getContext());
        View imageView = new ImageView(getContext());
        View imageView2 = new ImageView(getContext());
        eVar.setId(600001);
        imageView.setId(600002);
        imageView2.setId(600004);
        eVar.setScaleType(ImageView.ScaleType.FIT_XY);
        eVar.setSupportRound(false);
        addView(eVar);
        addView(imageView);
        addView(imageView2);
    }

    @Override // com.ubix.ssp.ad.b
    public void a(Context context, Bundle bundle) {
        int iMin;
        double d2;
        double d3;
        this.f47975n = r.a().h(context);
        this.f47976o = r.a().c(context);
        int i2 = bundle.getInt("AD_WIDTH");
        int i3 = bundle.getInt("AD_HEIGHT");
        double dA = r.a().a(context);
        this.f47977p = dA;
        if (i2 == -1 && i3 == -2) {
            int i4 = (int) (dA * 80.0d);
            this.f47974m = i4;
            this.f47973l = i4;
        } else {
            if (Math.min(i2, i3) <= 60) {
                d2 = this.f47977p;
                d3 = 60.0d;
            } else if (Math.min(i2, i3) >= 100) {
                d2 = this.f47977p;
                d3 = 100.0d;
            } else {
                this.f47973l = (int) (Math.min(i2, i3) * this.f47977p);
                iMin = (int) (Math.min(i2, i3) * this.f47977p);
                this.f47974m = iMin;
            }
            iMin = (int) (d2 * d3);
            this.f47973l = iMin;
            this.f47974m = iMin;
        }
        s();
    }

    @Override // com.ubix.ssp.ad.b
    public boolean b(Bundle bundle) {
        try {
            com.ubix.ssp.ad.e.v.e.b().a(bundle.getStringArray("IMAGE_URL")[0], (ImageView) findViewById(600001), -1, null);
            ImageView imageView = (ImageView) findViewById(600002);
            ImageView imageView2 = (ImageView) findViewById(600004);
            if (imageView != null) {
                imageView.setImageDrawable(q.a("ubix/ic_logo_dark_bg.webp", bundle.getBoolean("IS_UNNAMED")));
            }
            if (imageView2 == null) {
                return true;
            }
            imageView2.setImageDrawable(q.a("ubix/ic_close_gray.webp"));
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ubix.ssp.ad.b
    public com.ubix.ssp.ad.g.k.b getInterface() {
        return this.f47978q;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            switch (childAt.getId()) {
                case 600001:
                    childAt.layout(0, 0, this.f47973l, this.f47974m);
                    break;
                case 600002:
                    double bottom = findViewById(600001).getBottom();
                    double d2 = this.f47977p;
                    childAt.layout(0, (int) (bottom - (6.36d * d2)), (int) (d2 * 14.0d), findViewById(600001).getBottom());
                    break;
                case 600004:
                    childAt.layout((int) (findViewById(600001).getRight() - (this.f47977p * 12.0d)), findViewById(600001).getTop(), findViewById(600001).getRight(), (int) (findViewById(600001).getTop() + (this.f47977p * 12.0d)));
                    break;
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(this.f47973l, this.f47974m);
    }

    @Override // com.ubix.ssp.ad.b
    public <T extends com.ubix.ssp.ad.g.k.b> void setInnerListener(T t2) {
        this.f47978q = (d) t2;
    }
}
