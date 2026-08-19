package com.ubix.ssp.ad.i.e;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;

/* loaded from: classes5.dex */
public class d extends a {
    public d(Context context) {
        super(context);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a(String[] strArr, String[] strArr2) {
        super.a(strArr[0]);
        ImageView imageView = (ImageView) findViewById(200006);
        if (imageView != null) {
            imageView.setImageDrawable(q.a("ubix/ic_logo.png", this.f48219f0));
        }
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void c(Bundle bundle) {
        this.f48224i = new RelativeLayout.LayoutParams(-1, -2);
        this.f48214d.addRule(10);
        this.f48212c.addRule(12);
        this.f48228k.addView(this.f48230l, this.f48214d);
        this.f48224i.addRule(10);
        this.f48224i.setMargins(r.b(6.0f), r.b(6.0f), r.b(6.0f), 0);
        this.f48228k.addView(e(), this.f48224i);
        this.f48228k.addView(this.f48232n, this.f48212c);
        if (i()) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            this.f48226j = layoutParams;
            layoutParams.addRule(3, 2010001);
            this.f48226j.addRule(5, 2010001);
            this.f48226j.addRule(7, 2010001);
            this.f48226j.addRule(15);
            this.f48226j.setMargins(0, 0, 0, 0);
            this.f48228k.addView(d(), this.f48226j);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 200001);
        layoutParams2.addRule(3, 2010001);
        this.f48228k.addView(g(), layoutParams2);
        addView(this.f48228k);
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
        com.ubix.ssp.ad.e.t.a.e eVar = this.f48230l;
        if (eVar != null && eVar.getLayoutParams() != null) {
            this.f48230l.getLayoutParams().width = this.f48189E;
            this.f48230l.getLayoutParams().height = (this.f48189E * 9) / 16;
        }
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
        if (viewGroup == null || (layoutParams = viewGroup.getLayoutParams()) == null) {
            return;
        }
        TextView textView2 = (TextView) findViewById(200018);
        TextView textView3 = (TextView) findViewById(200012);
        if (textView2 == null || textView3 == null) {
            return;
        }
        int measuredWidth = viewGroup.getMeasuredWidth();
        int iMeasureText = (int) textView3.getPaint().measureText("|权限");
        int iMeasureText2 = (int) textView2.getPaint().measureText(((Object) textView2.getText()) + "");
        if (measuredWidth > 0) {
            int i3 = iMeasureText * 2;
            int i4 = iMeasureText2 + i3;
            if (i4 >= measuredWidth) {
                textView2.getLayoutParams().width = measuredWidth - i3;
                layoutParams.width = measuredWidth;
            } else {
                textView2.getLayoutParams().width = iMeasureText2;
                layoutParams.width = i4;
            }
        }
    }
}
