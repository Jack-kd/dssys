package com.ubix.ssp.ad.i.e;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class i extends a {
    public i(Context context) {
        super(context);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a(String[] strArr, String[] strArr2) {
        super.a(strArr);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void c(Bundle bundle) {
        this.f48224i = new RelativeLayout.LayoutParams(-1, -2);
        com.ubix.ssp.ad.e.t.a.e eVar = new com.ubix.ssp.ad.e.t.a.e(getContext());
        eVar.setId(200003);
        com.ubix.ssp.ad.e.t.a.e eVar2 = new com.ubix.ssp.ad.e.t.a.e(getContext());
        eVar2.setId(200004);
        com.ubix.ssp.ad.e.t.a.e eVar3 = new com.ubix.ssp.ad.e.t.a.e(getContext());
        eVar3.setId(200005);
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        eVar.setScaleType(scaleType);
        eVar2.setScaleType(scaleType);
        eVar3.setScaleType(scaleType);
        eVar.setSupportRound(true);
        eVar2.setSupportRound(true);
        eVar3.setSupportRound(true);
        eVar.setBackgroundColor(-13421773);
        eVar2.setBackgroundColor(-13421773);
        eVar3.setBackgroundColor(-13421773);
        com.ubix.ssp.ad.e.t.a.e[] eVarArr = this.f48231m;
        eVarArr[0] = eVar;
        eVarArr[1] = eVar2;
        eVarArr[2] = eVar3;
        this.f48212c.addRule(10);
        double d2 = this.f48189E / 3.3d;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) d2, (int) (d2 * 0.5625d));
        this.f48216e = layoutParams;
        layoutParams.addRule(9);
        double d3 = this.f48189E / 3.3d;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) d3, (int) (d3 * 0.5625d));
        this.f48218f = layoutParams2;
        layoutParams2.addRule(14);
        double d4 = this.f48189E / 3.3d;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) d4, (int) (d4 * 0.5625d));
        this.f48220g = layoutParams3;
        layoutParams3.addRule(11);
        addView(this.f48232n, this.f48212c);
        this.f48228k.addView(eVar, this.f48216e);
        this.f48228k.addView(eVar2, this.f48218f);
        this.f48228k.addView(eVar3, this.f48220g);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2050001);
        this.f48228k.addView(relativeLayout, this.f48218f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        this.f48222h = layoutParams4;
        layoutParams4.addRule(3, 200001);
        this.f48222h.setMargins(0, r.b(4.0f), 0, r.b(4.0f));
        addView(this.f48228k, this.f48222h);
        if (i()) {
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
            this.f48226j = layoutParams5;
            layoutParams5.addRule(3, 2010003);
            this.f48224i.addRule(3, 2010002);
            addView(c(), this.f48226j);
        } else {
            this.f48224i.addRule(3, 2010003);
        }
        this.f48224i.setMargins(0, r.b(2.0f), 0, 0);
        addView(e(), this.f48224i);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void l() {
        TextView textView;
        double dA = r.a().a(getContext());
        this.f48231m[0].getLayoutParams().width = this.f48185A;
        this.f48231m[0].getLayoutParams().height = this.f48186B;
        this.f48231m[1].getLayoutParams().width = this.f48185A;
        this.f48231m[1].getLayoutParams().height = this.f48186B;
        this.f48231m[2].getLayoutParams().width = this.f48185A;
        this.f48231m[2].getLayoutParams().height = this.f48186B;
        this.f48228k.getLayoutParams().width = this.f48189E;
        this.f48228k.getLayoutParams().height = this.f48186B;
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2010001);
        if (relativeLayout != null && relativeLayout.getLayoutParams() != null) {
            relativeLayout.getLayoutParams().width = this.f48189E;
        }
        this.f48232n.getLayoutParams().width = this.f48189E;
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(2010002);
        if (relativeLayout2 != null && (textView = (TextView) findViewById(920101)) != null) {
            relativeLayout2.getLayoutParams().height = (textView.getLineCount() + 1) * textView.getLineHeight();
        }
        ImageView imageView = (ImageView) findViewById(910101);
        if (imageView != null && imageView.getLayoutParams() != null) {
            int iMin = (int) Math.min(34.0d * dA, this.f48186B * 0.85d);
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
        relativeLayout3.getLayoutParams().height = (int) Math.min(dA * 36.0d, this.f48186B * 0.95d);
    }
}
