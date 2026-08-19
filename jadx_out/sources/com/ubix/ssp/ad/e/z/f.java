package com.ubix.ssp.ad.e.z;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.z.h;

/* loaded from: classes5.dex */
public class f extends h implements View.OnClickListener {

    /* renamed from: h, reason: collision with root package name */
    private TextView f47921h;

    /* renamed from: i, reason: collision with root package name */
    private ImageView f47922i;

    /* renamed from: j, reason: collision with root package name */
    private View f47923j;

    /* renamed from: k, reason: collision with root package name */
    private com.ubix.ssp.ad.e.c0.c f47924k;

    /* renamed from: l, reason: collision with root package name */
    private WindowManager f47925l;

    /* renamed from: m, reason: collision with root package name */
    private int f47926m;

    /* renamed from: n, reason: collision with root package name */
    private int f47927n;

    /* renamed from: o, reason: collision with root package name */
    private int f47928o;

    /* renamed from: p, reason: collision with root package name */
    private float f47929p;

    public f(Context context) {
        super(context);
        this.f47926m = 0;
        this.f47927n = r.a().h(context);
        this.f47928o = r.a().c(context);
        this.f47929p = r.a().a(context);
        setBackgroundColor(-1);
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        d();
    }

    private void d() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.f47922i = new ImageView(getContext());
        this.f47921h = new TextView(getContext());
        this.f47923j = new View(getContext());
        com.ubix.ssp.ad.e.c0.c cVar = new com.ubix.ssp.ad.e.c0.c(getContext());
        this.f47924k = cVar;
        cVar.setWebChromeClient(new com.ubix.ssp.ad.e.c0.b(getContext(), null));
        this.f47924k.setWebViewClient(new com.ubix.ssp.ad.e.c0.d(getContext(), null));
        this.f47922i.setImageDrawable(q.a("ubix/ic_web_back.png"));
        this.f47922i.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f47921h.setTextColor(-13421773);
        relativeLayout.setId(20000);
        this.f47922i.setId(20003);
        this.f47921h.setId(20001);
        this.f47923j.setId(20002);
        this.f47924k.setId(20004);
        this.f47923j.setBackgroundColor(-921103);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (this.f47929p * 36.0f));
        int i2 = (int) (this.f47929p * 22.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams2.addRule(9);
        layoutParams2.addRule(15);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(13);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(Math.max(this.f47927n, this.f47928o), (((int) (Math.max(this.f47927n, this.f47928o) * 0.8d)) - ((int) (this.f47929p * 36.0f))) - 2);
        layoutParams5.addRule(3, 20002);
        int i3 = (int) (this.f47929p * 12.0f);
        layoutParams2.leftMargin = i3;
        layoutParams3.rightMargin = i3;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, 2);
        layoutParams6.addRule(3, 20000);
        this.f47922i.setPadding(10, 10, 10, 10);
        relativeLayout.addView(this.f47922i, layoutParams2);
        relativeLayout.addView(this.f47921h, layoutParams4);
        this.f47921h.setGravity(17);
        addView(relativeLayout, layoutParams);
        addView(this.f47923j, layoutParams6);
        addView(this.f47924k, layoutParams5);
        setBackgroundColor(-1);
        this.f47922i.setOnClickListener(this);
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(Dialog dialog, h.c cVar, h.b bVar) {
        this.f47967d = dialog;
        this.f47968e = cVar;
        this.f47969f = bVar;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public int getPopupType() {
        return 6;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 20003) {
            return;
        }
        l lVar = this.f47966c;
        if (lVar != null && lVar.b()) {
            this.f47966c.a();
        }
        Dialog dialog = this.f47967d;
        if (dialog != null && dialog.isShowing()) {
            this.f47967d.dismiss();
        }
        h.c cVar = this.f47968e;
        if (cVar != null) {
            cVar.a(null);
        }
        h.c cVar2 = this.f47968e;
        if (cVar2 != null) {
            cVar2.b(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            com.ubix.ssp.ad.e.c0.c cVar = this.f47924k;
            if (cVar != null) {
                cVar.loadUrl(com.anythink.core.common.res.d.f7446a);
                this.f47924k.destroy();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int iMin;
        super.onMeasure(i2, i3);
        if (this.f47925l == null) {
            this.f47925l = (WindowManager) getContext().getSystemService("window");
        }
        this.f47926m = this.f47925l.getDefaultDisplay().getOrientation();
        this.f47927n = r.a().h(getContext());
        this.f47928o = r.a().c(getContext());
        u.e("rotation=" + this.f47926m + ";width=" + this.f47927n + ";height=" + this.f47928o);
        int i5 = this.f47926m;
        if (i5 == 1 || i5 == 3) {
            i4 = this.f47927n;
            iMin = Math.min(i4, this.f47928o);
        } else {
            i4 = this.f47927n;
            iMin = Math.max(i4, this.f47928o);
        }
        setMeasuredDimension(i4, (int) (iMin * 0.8d));
        this.f47921h.requestLayout();
        this.f47924k.requestLayout();
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void setData(Bundle bundle) {
        String string = bundle.getString("TARGET_URL");
        String string2 = bundle.getString("TITLE");
        if (this.f47924k != null && !TextUtils.isEmpty(string)) {
            this.f47924k.loadUrl(string);
        }
        if (this.f47921h == null || TextUtils.isEmpty(string2)) {
            return;
        }
        this.f47921h.setText(string2);
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(l lVar, h.c cVar, h.b bVar) {
        this.f47966c = lVar;
        this.f47968e = cVar;
        this.f47969f = bVar;
    }
}
