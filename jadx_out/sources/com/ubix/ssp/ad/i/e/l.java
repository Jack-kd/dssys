package com.ubix.ssp.ad.i.e;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;

/* loaded from: classes5.dex */
public class l extends a {

    /* renamed from: l0, reason: collision with root package name */
    private boolean f48259l0;

    public l(Context context) {
        super(context);
        this.f48259l0 = false;
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr.length > 0) {
            super.a(strArr[0], (ImageView) findViewById(200024));
        }
        if (strArr2 != null && strArr2.length > 0) {
            super.b(strArr2);
        }
        ImageView imageView = (ImageView) findViewById(200006);
        if (imageView != null) {
            imageView.setImageDrawable(q.a("ubix/ic_logo.png", this.f48219f0));
        }
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void c(Bundle bundle) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(r.b(11.0f), r.b(11.0f));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        this.f48212c = new RelativeLayout.LayoutParams(-1, -2);
        this.f48214d = new RelativeLayout.LayoutParams(-1, -2);
        this.f48224i = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.rightMargin = r.b(5.0f);
        layoutParams.topMargin = r.b(5.0f);
        this.f48214d.addRule(10);
        this.f48212c.addRule(3, 2010003);
        if (TextUtils.isEmpty(this.f48241w)) {
            this.f48232n.setVisibility(8);
        } else {
            this.f48212c.setMargins(r.b(3.0f), r.b(6.0f), r.b(3.0f), r.b(6.0f));
        }
        com.ubix.ssp.ad.d.f fVar = new com.ubix.ssp.ad.d.f(getContext(), bundle);
        fVar.setId(2060001);
        this.f48228k.addView(this.f48230l, this.f48214d);
        this.f48228k.addView(fVar, this.f48214d);
        layoutParams2.addRule(13);
        addView(this.f48228k);
        addView(this.f48232n, this.f48212c);
        if (i()) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            this.f48226j = layoutParams3;
            layoutParams3.addRule(10);
            this.f48226j.addRule(0, 2000014);
            this.f48226j.setMargins(r.b(2.0f), r.b(4.0f), r.b(2.0f), 0);
            this.f48228k.addView(d(), this.f48226j);
        }
        this.f48224i.addRule(12);
        this.f48224i.setMargins(r.b(4.0f), r.b(2.0f), r.b(4.0f), 0);
        this.f48228k.addView(b(false), this.f48224i);
        this.f48232n.setTextSize(this.f48193I);
        this.f48232n.setSingleLine();
        this.f48233o.setBackground(q.a("ubix/ic_close_gray.webp"));
        this.f48228k.addView(this.f48233o, layoutParams);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(2, 2010001);
        layoutParams4.addRule(3, 2000014);
        View view = new View(getContext());
        view.setId(200025);
        fVar.addView(view);
        fVar.addView(g(), layoutParams4);
        this.f48228k.addView(h(), new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void l() {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = this.f48230l.getLayoutParams();
        int i2 = this.f48189E;
        layoutParams2.width = i2;
        layoutParams2.height = (i2 * 16) / 9;
        this.f48230l.setLayoutParams(layoutParams2);
        this.f48230l.invalidate();
        ViewGroup.LayoutParams layoutParams3 = this.f48228k.getLayoutParams();
        int i3 = this.f48189E;
        layoutParams3.width = i3;
        layoutParams3.height = (i3 * 16) / 9;
        this.f48228k.setLayoutParams(layoutParams3);
        this.f48228k.requestLayout();
        View viewFindViewById = findViewById(200100);
        if (viewFindViewById != null && (layoutParams = viewFindViewById.getLayoutParams()) != null) {
            layoutParams.width = this.f48189E - r.b(20.0f);
        }
        ImageView imageView = (ImageView) findViewById(200006);
        if (imageView != null && imageView.getLayoutParams() != null) {
            imageView.getLayoutParams().width = r.b(15.0f);
            imageView.getLayoutParams().height = r.b(7.0f);
        }
        TextView textView = (TextView) findViewById(200007);
        if (textView != null) {
            textView.setTextColor(-1);
            textView.setShadowLayer(3.0f, 0.0f, 1.0f, 1711276032);
        }
        ImageView imageView2 = (ImageView) findViewById(200019);
        if (imageView2 != null && imageView2.getLayoutParams() != null) {
        }
        if (findViewById(2030001) != null) {
            findViewById(2030001).setBackgroundColor(0);
        }
        TextView textView2 = this.f48232n;
        if (textView2 != null) {
            textView2.setTextSize(TypedValue.applyDimension(0, Math.max(this.f48193I, 12), getContext().getResources().getDisplayMetrics()));
        }
        View viewFindViewById2 = findViewById(200019);
        if (viewFindViewById2 != null) {
            viewFindViewById2.bringToFront();
        }
    }
}
