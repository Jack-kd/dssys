package com.ubix.ssp.ad.i.e;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class b extends a {
    public b(Context context) {
        super(context);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a(String[] strArr, String[] strArr2) {
        super.a(strArr[0]);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void c(Bundle bundle) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(3, this.f48232n.getId());
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, 0, r.b(2.0f));
        layoutParams3.setMargins(0, 0, 0, r.b(2.0f));
        layoutParams4.addRule(3, this.f48232n.getId());
        addView(this.f48232n, layoutParams2);
        if (TextUtils.isEmpty(this.f48241w)) {
            this.f48232n.setVisibility(8);
        }
        this.f48228k.addView(this.f48230l, layoutParams4);
        addView(this.f48228k, layoutParams3);
        if (i()) {
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams5.addRule(3, 2010003);
            layoutParams.addRule(3, 2010002);
            layoutParams5.setMargins(0, 0, 0, r.b(2.0f));
            addView(c(), layoutParams5);
        } else {
            layoutParams.addRule(3, this.f48228k.getId());
        }
        layoutParams.setMargins(0, r.b(2.0f), 0, 0);
        addView(e(), layoutParams);
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void l() {
        TextView textView;
        ViewGroup.LayoutParams layoutParams = this.f48230l.getLayoutParams();
        int i2 = this.f48189E;
        layoutParams.width = i2;
        layoutParams.height = (i2 * 9) / 16;
        this.f48230l.setLayoutParams(layoutParams);
        this.f48230l.invalidate();
        ViewGroup.LayoutParams layoutParams2 = this.f48228k.getLayoutParams();
        int i3 = this.f48189E;
        layoutParams2.width = i3;
        layoutParams2.height = (i3 * 9) / 16;
        this.f48228k.setLayoutParams(layoutParams2);
        this.f48228k.requestLayout();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2010001);
        if (relativeLayout != null && relativeLayout.getLayoutParams() != null) {
            relativeLayout.getLayoutParams().width = this.f48189E;
        }
        this.f48232n.getLayoutParams().width = this.f48189E;
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(2010002);
        if (relativeLayout2 == null || (textView = (TextView) findViewById(920101)) == null) {
            return;
        }
        relativeLayout2.getLayoutParams().height = (textView.getLineCount() + 1) * textView.getLineHeight();
    }
}
