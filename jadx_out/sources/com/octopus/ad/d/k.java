package com.octopus.ad.d;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.octopus.ad.internal.utilities.ViewUtil;

/* loaded from: classes4.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    int f34038a;

    /* renamed from: b, reason: collision with root package name */
    int f34039b;

    /* renamed from: c, reason: collision with root package name */
    private Context f34040c;

    /* renamed from: d, reason: collision with root package name */
    private int f34041d;

    /* renamed from: e, reason: collision with root package name */
    private int f34042e;

    /* renamed from: f, reason: collision with root package name */
    private a f34043f = null;

    /* renamed from: g, reason: collision with root package name */
    private boolean f34044g = false;

    /* renamed from: h, reason: collision with root package name */
    private int f34045h = 200;

    /* renamed from: i, reason: collision with root package name */
    private com.octopus.ad.e.a f34046i;

    public interface a {
        void a(com.octopus.ad.a.d dVar);
    }

    public k(Context context) {
        this.f34040c = context;
    }

    public void a() {
        a(1000);
        b(0);
    }

    public void b(int i2) {
        this.f34042e = i2;
    }

    public void b() {
        this.f34044g = false;
        com.octopus.ad.e.a aVar = this.f34046i;
        if (aVar != null) {
            aVar.b();
        }
        this.f34043f = null;
        this.f34040c = null;
        this.f34046i = null;
        this.f34045h = 200;
    }

    public void a(int i2) {
        this.f34041d = i2;
    }

    public void a(a aVar) {
        this.f34043f = aVar;
    }

    public View a(final int i2, final int i3, String str) {
        com.octopus.ad.d.b.f.a("ScrollClickUtil", "enter getScrollClick");
        if (this.f34040c == null) {
            return null;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                str = "向上滑动跳转至\n第三方应用或详情页";
            }
            com.octopus.ad.e.a aVar = new com.octopus.ad.e.a(this.f34040c);
            this.f34046i = aVar;
            aVar.setScrollDirection("up");
            this.f34046i.setTitleText(str);
            int i4 = Integer.parseInt("35");
            int i5 = Integer.parseInt("56");
            float f2 = i2 / 360.0f;
            this.f34046i.setTitleFont((int) (10.0f * f2));
            this.f34046i.setHandWidth((int) (i4 * f2));
            this.f34046i.setScrollbarHeight((int) (i5 * f2));
            this.f34046i.c();
            String str2 = "77%";
            TextUtils.isEmpty("50%");
            if (TextUtils.isEmpty("77%")) {
                str2 = "50%";
            }
            if ("50%".endsWith("%")) {
                this.f34038a = (Integer.parseInt("50%".substring(0, "50%".indexOf("%"))) * i2) / 100;
            } else {
                this.f34038a = Integer.parseInt("50%");
            }
            if (str2.endsWith("%")) {
                this.f34039b = (Integer.parseInt(str2.substring(0, str2.indexOf("%"))) * i3) / 100;
            } else {
                this.f34039b = Integer.parseInt(str2);
            }
            this.f34038a = ViewUtil.dip2px(this.f34040c, this.f34038a);
            this.f34039b = ViewUtil.dip2px(this.f34040c, this.f34039b);
            final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            com.octopus.ad.d.b.f.a("ScrollClickUtil", "topInt = " + this.f34039b + ",centerXInt = " + this.f34038a + ",adWidthDp = " + i2 + ",adHeightDp = " + i3);
            this.f34046i.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.octopus.ad.d.k.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (k.this.f34046i == null) {
                        return;
                    }
                    k.this.f34046i.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int measuredWidth = k.this.f34046i.getMeasuredWidth();
                    int measuredHeight = k.this.f34046i.getMeasuredHeight();
                    k kVar = k.this;
                    if (kVar.f34039b == 0) {
                        kVar.f34039b = ViewUtil.dip2px(kVar.f34040c, i3) / 2;
                    }
                    k kVar2 = k.this;
                    if (kVar2.f34038a == 0) {
                        kVar2.f34038a = ViewUtil.dip2px(kVar2.f34040c, i2) / 2;
                    }
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    k kVar3 = k.this;
                    layoutParams2.topMargin = kVar3.f34039b - (measuredHeight / 2);
                    layoutParams2.leftMargin = kVar3.f34038a - (measuredWidth / 2);
                    kVar3.f34046i.setLayoutParams(layoutParams);
                    com.octopus.ad.d.b.f.a("ScrollClickUtil", "topMargin = " + layoutParams.topMargin + ",leftMargin = " + layoutParams.leftMargin + ",scrollViewWidthInt = " + measuredWidth);
                }
            });
            this.f34046i.setLayoutParams(layoutParams);
            this.f34046i.postDelayed(new Runnable() { // from class: com.octopus.ad.d.k.2
                @Override // java.lang.Runnable
                public void run() {
                    if (k.this.f34046i != null) {
                        k.this.f34046i.a();
                    }
                }
            }, 10L);
            return this.f34046i;
        } catch (Throwable unused) {
            return null;
        }
    }
}
