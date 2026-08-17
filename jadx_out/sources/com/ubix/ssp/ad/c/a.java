package com.ubix.ssp.ad.c;

import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.ubix.ssp.ad.c.c.c;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.b0.g;
import com.ubix.ssp.ad.e.f;

/* loaded from: classes5.dex */
public class a extends com.ubix.ssp.ad.b {

    /* renamed from: l, reason: collision with root package name */
    private int f45656l;

    /* renamed from: m, reason: collision with root package name */
    private int f45657m;

    /* renamed from: n, reason: collision with root package name */
    private int f45658n;

    /* renamed from: o, reason: collision with root package name */
    private double f45659o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f45660p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f45661q;

    /* renamed from: r, reason: collision with root package name */
    private com.ubix.ssp.ad.g.k.a f45662r;

    /* renamed from: s, reason: collision with root package name */
    protected AnimatorSet f45663s;

    /* renamed from: t, reason: collision with root package name */
    private c f45664t;

    public a(Context context) {
        super(context);
        this.f45656l = 4;
        this.f45659o = 3.0d;
        this.f45660p = true;
        this.f45661q = false;
        this.f45663s = new AnimatorSet();
    }

    private synchronized void s() {
        if (isShown() && this.f45660p && this.f45661q) {
            this.f45660p = false;
            com.ubix.ssp.ad.g.k.a aVar = this.f45662r;
            if (aVar != null) {
                aVar.a(this.f45639b, this);
            }
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(Context context, Bundle bundle) {
        int i2 = bundle.getInt("AD_WIDTH");
        int i3 = bundle.getInt("AD_HEIGHT");
        bundle.getBoolean("IS_DOWNLOAD", false);
        bundle.putSerializable("CLICK_MAP", this.f45638a);
        double dA = r.a().a(context);
        this.f45659o = dA;
        this.f45657m = (int) (i2 * dA);
        this.f45658n = (int) (i3 * dA);
        this.f45656l = (int) (this.f45656l * dA);
        c cVarA = c.a(context, bundle);
        this.f45664t = cVarA;
        addView(cVarA);
        if (bundle.getInt("TEMPLATE_ID") != 99001) {
            setBackgroundColor(-1);
        }
        this.f45661q = false;
    }

    @Override // com.ubix.ssp.ad.b
    public boolean b(Bundle bundle) {
        this.f45660p = true;
        this.f45661q = this.f45664t.a(bundle);
        return true;
    }

    @Override // com.ubix.ssp.ad.b
    public com.ubix.ssp.ad.g.k.b getInterface() {
        return this.f45662r;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        s();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            View viewFindViewById = findViewById(500104);
            if (viewFindViewById != null) {
                viewFindViewById.animate().cancel();
                AnimatorSet animatorSet = this.f45663s;
                if (animatorSet != null) {
                    animatorSet.removeAllListeners();
                }
            }
            View viewFindViewById2 = findViewById(100006);
            if (viewFindViewById2 != null) {
                ((g) viewFindViewById2).p();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        s();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f45657m <= 0) {
            this.f45657m = (int) (this.f45659o * 320.0d);
        }
        if (this.f45658n <= 0) {
            this.f45658n = (int) (this.f45657m / 6.4d);
        }
        setMeasuredDimension(this.f45657m, this.f45658n);
    }

    @Override // com.ubix.ssp.ad.b, android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            s();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        com.ubix.ssp.ad.g.k.a aVar = (com.ubix.ssp.ad.g.k.a) bVar;
        this.f45662r = aVar;
        this.f45664t.setInnerListener(aVar);
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        boolean z2;
        String strA;
        String str7;
        String str8;
        super.a(str, str2, str3, str4, str5, str6, j2);
        TextView textView = (TextView) findViewById(920101);
        if (textView == null) {
            return;
        }
        String str9 = "";
        if (j2 > 0) {
            strA = k.a(j2);
            z2 = true;
        } else {
            z2 = false;
            strA = "";
        }
        if (TextUtils.isEmpty(str5)) {
            str7 = "";
        } else {
            str7 = "丨备案号:" + str5;
        }
        if (TextUtils.isEmpty(str6)) {
            str8 = "";
        } else {
            str8 = "丨适用年龄:" + str6;
        }
        if (z2) {
            str9 = "丨应用大小:" + strA;
        }
        textView.setText(new f(String.format("应用名称:%s丨应用版本:%s丨开发者:%s%s%s%s丨权限丨隐私丨功能介绍", str, str2, str3, str7, str8, str9)).a(this.f45662r));
    }
}
