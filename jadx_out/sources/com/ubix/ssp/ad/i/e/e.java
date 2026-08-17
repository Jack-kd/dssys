package com.ubix.ssp.ad.i.e;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;

/* loaded from: classes5.dex */
public class e extends a {

    /* renamed from: l0, reason: collision with root package name */
    private boolean f48256l0;

    public e(Context context) {
        super(context);
        this.f48256l0 = false;
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a(String[] strArr, String[] strArr2) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    super.a(strArr[0], (ImageView) findViewById(200024));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
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
        this.f48224i = new RelativeLayout.LayoutParams(-1, -2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        this.f48224i.addRule(10);
        this.f48224i.setMargins(r.b(6.0f), r.b(6.0f), r.b(6.0f), 0);
        this.f48212c.addRule(12);
        com.ubix.ssp.ad.d.f fVar = new com.ubix.ssp.ad.d.f(getContext(), bundle);
        fVar.setId(2060001);
        this.f48228k.addView(this.f48230l, layoutParams);
        this.f48228k.addView(fVar, layoutParams);
        addView(this.f48228k);
        RelativeLayout relativeLayoutE = e();
        fVar.addView(this.f48232n, this.f48212c);
        this.f48228k.addView(relativeLayoutE, this.f48224i);
        if (i()) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            this.f48226j = layoutParams3;
            layoutParams3.addRule(3, 2010001);
            this.f48226j.addRule(5, 2010001);
            this.f48226j.addRule(7, 2010001);
            this.f48226j.addRule(15);
            this.f48226j.setMargins(0, 0, 0, 0);
            this.f48228k.addView(d(), this.f48226j);
        }
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(2, 200001);
        layoutParams4.addRule(3, 2010001);
        fVar.addView(g(), layoutParams4);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void l() {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = this.f48228k.getLayoutParams();
        if (layoutParams2 != null) {
            int i2 = this.f48189E;
            layoutParams2.width = i2;
            layoutParams2.height = (i2 * 9) / 16;
            this.f48228k.setLayoutParams(layoutParams2);
        }
        ViewGroup.LayoutParams layoutParams3 = this.f48230l.getLayoutParams();
        int i3 = this.f48189E;
        layoutParams3.width = i3;
        layoutParams3.height = (i3 * 9) / 16;
        this.f48230l.setLayoutParams(layoutParams3);
        this.f48230l.invalidate();
        this.f48232n.setMaxLines(1);
        this.f48232n.setTextSize(this.f48195K);
        this.f48232n.setTextColor(-1);
        this.f48232n.setPadding(r.b(6.0f), r.b(8.0f), r.b(6.0f), r.b(8.0f));
        this.f48232n.setBackground(com.ubix.ssp.ad.e.a0.c.a(0, -1291845632, 8));
        TextView textView = (TextView) findViewById(200007);
        if (textView != null) {
            textView.setTextColor(-1);
            textView.setShadowLayer(3.0f, 0.0f, 3.0f, 1711276032);
        }
        ImageView imageView = this.f48233o;
        if (imageView != null) {
            imageView.setImageDrawable(q.a("ubix/ic_close_gray.webp"));
        }
        ImageView imageView2 = (ImageView) findViewById(200006);
        if (imageView2 != null) {
            imageView2.getLayoutParams().width = (int) (((this.f48189E / 3) / 7) * 1.4d);
            imageView2.getLayoutParams().height = (int) (((this.f48189E / 6) / 7) * 1.5d);
        }
        if (findViewById(2030001) != null) {
            findViewById(2030001).setBackgroundColor(0);
        }
        ViewGroup viewGroup = (ViewGroup) findViewById(200100);
        if (viewGroup != null && (layoutParams = viewGroup.getLayoutParams()) != null) {
            TextView textView2 = (TextView) findViewById(200018);
            TextView textView3 = (TextView) findViewById(200012);
            if (textView2 != null && textView3 != null) {
                int measuredWidth = viewGroup.getMeasuredWidth();
                int iMeasureText = (int) textView3.getPaint().measureText("|权限");
                int iMeasureText2 = (int) textView2.getPaint().measureText(((Object) textView2.getText()) + "");
                if (measuredWidth > 0) {
                    int i4 = iMeasureText * 2;
                    int i5 = iMeasureText2 + i4;
                    if (i5 >= measuredWidth) {
                        textView2.getLayoutParams().width = measuredWidth - i4;
                        layoutParams.width = measuredWidth;
                    } else {
                        textView2.getLayoutParams().width = iMeasureText2;
                        layoutParams.width = i5;
                    }
                }
            }
        }
        View viewFindViewById = findViewById(200019);
        if (viewFindViewById != null) {
            viewFindViewById.bringToFront();
        }
    }
}
