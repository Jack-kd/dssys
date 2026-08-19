package com.ubix.ssp.ad.i.e;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class g extends a {
    public g(Context context) {
        super(context);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a(String[] strArr, String[] strArr2) {
        super.a(strArr[0]);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void c(Bundle bundle) {
        this.f48224i = new RelativeLayout.LayoutParams(-2, -2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f48243y, this.f48244z);
        this.f48214d = layoutParams;
        layoutParams.addRule(10);
        this.f48212c.addRule(10);
        this.f48212c.addRule(1, 200002);
        this.f48212c.setMargins(r.b(6.0f), 0, 0, 0);
        this.f48224i.addRule(1, 200002);
        this.f48224i.addRule(8, 200002);
        this.f48224i.setMargins(r.b(6.0f), 0, 0, 0);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2050001);
        this.f48228k.addView(this.f48230l, this.f48214d);
        this.f48228k.addView(relativeLayout, this.f48214d);
        this.f48228k.addView(this.f48232n, this.f48212c);
        this.f48228k.addView(e(), this.f48224i);
        addView(this.f48228k);
        if (i()) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            this.f48226j = layoutParams2;
            layoutParams2.addRule(3, 2010003);
            this.f48226j.addRule(9);
            this.f48226j.setMargins(0, r.b(2.0f), 0, 0);
            addView(c(), this.f48226j);
        }
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void l() {
        TextView textView;
        double dA = r.a().a(getContext());
        this.f48232n.setMaxLines(2);
        if (this.f48232n.getLayoutParams() != null) {
            this.f48232n.getLayoutParams().width = this.f48189E - (this.f48243y + r.b(6.0f));
        }
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2010001);
        if (relativeLayout != null && relativeLayout.getLayoutParams() != null) {
            relativeLayout.getLayoutParams().width = this.f48189E - (this.f48243y + r.b(6.0f));
        }
        this.f48230l.getLayoutParams().width = this.f48243y;
        this.f48230l.getLayoutParams().height = this.f48244z;
        this.f48228k.getLayoutParams().width = this.f48189E;
        this.f48228k.getLayoutParams().height = this.f48244z;
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(2010002);
        if (relativeLayout2 != null && (textView = (TextView) findViewById(920101)) != null) {
            relativeLayout2.getLayoutParams().height = (textView.getLineCount() + 1) * textView.getLineHeight();
        }
        ImageView imageView = (ImageView) findViewById(910101);
        if (imageView != null && imageView.getLayoutParams() != null) {
            int iMin = (int) Math.min(34.0d * dA, this.f48230l.getMeasuredHeight() * 0.85d);
            imageView.getLayoutParams().width = iMin;
            imageView.getLayoutParams().height = iMin;
            ViewGroup viewGroup = (ViewGroup) imageView.getParent();
            if (viewGroup != null) {
                viewGroup.getLayoutParams().width = iMin;
                viewGroup.getLayoutParams().height = iMin;
            }
        }
        RelativeLayout relativeLayout3 = (RelativeLayout) findViewById(2030001);
        if (relativeLayout3 == null || relativeLayout3.getLayoutParams() == null) {
            return;
        }
        findViewById(2030001).setBackgroundColor(0);
        relativeLayout3.getLayoutParams().height = (int) Math.min(dA * 36.0d, this.f48230l.getMeasuredHeight() * 0.95d);
    }
}
