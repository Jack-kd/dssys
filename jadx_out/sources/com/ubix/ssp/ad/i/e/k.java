package com.ubix.ssp.ad.i.e;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class k extends a {

    /* renamed from: l0, reason: collision with root package name */
    private boolean f48258l0;

    public k(Context context) {
        super(context);
        this.f48258l0 = false;
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a() {
        com.ubix.ssp.ad.d.f fVar = (com.ubix.ssp.ad.d.f) findViewById(2060001);
        if (fVar != null) {
            fVar.a();
        }
        super.a();
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void c(Bundle bundle) {
        this.f48212c = new RelativeLayout.LayoutParams(-1, -2);
        this.f48214d = new RelativeLayout.LayoutParams(-1, -2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        this.f48224i = new RelativeLayout.LayoutParams(-1, -2);
        this.f48214d.addRule(10);
        this.f48212c.addRule(3, 2010003);
        this.f48212c.setMargins(0, r.b(2.0f), 0, 0);
        com.ubix.ssp.ad.d.f fVar = new com.ubix.ssp.ad.d.f(getContext(), bundle);
        fVar.setId(2060001);
        this.f48228k.addView(this.f48230l, this.f48214d);
        this.f48228k.addView(fVar, this.f48214d);
        layoutParams.addRule(13);
        addView(this.f48228k);
        addView(this.f48232n, this.f48212c);
        if (TextUtils.isEmpty(this.f48241w)) {
            this.f48232n.setVisibility(8);
        }
        if (i()) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, Math.min(150, this.f48189E / 7));
            this.f48226j = layoutParams2;
            layoutParams2.addRule(3, 200001);
            this.f48224i.addRule(3, 2010002);
            this.f48226j.setMargins(0, r.b(2.0f), 0, 0);
            addView(c(), this.f48226j);
        } else {
            this.f48224i.addRule(3, 200001);
        }
        this.f48224i.setMargins(0, r.b(2.0f), 0, 0);
        addView(e(), this.f48224i);
        this.f48228k.addView(h(), new ViewGroup.LayoutParams(-1, -1));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        fVar.addView(g(), layoutParams3);
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
        if (relativeLayout2 != null && (textView = (TextView) findViewById(920101)) != null) {
            relativeLayout2.getLayoutParams().height = (textView.getLineCount() + 1) * textView.getLineHeight();
        }
        View viewFindViewById = findViewById(200019);
        if (viewFindViewById != null) {
            viewFindViewById.bringToFront();
        }
    }

    @Override // com.ubix.ssp.ad.i.e.a
    public void a(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr.length > 0) {
            super.a(strArr[0], (ImageView) findViewById(200024));
        }
        if (strArr2 == null || strArr2.length <= 0) {
            return;
        }
        super.b(strArr2);
    }
}
