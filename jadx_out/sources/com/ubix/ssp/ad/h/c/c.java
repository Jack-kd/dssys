package com.ubix.ssp.ad.h.c;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class c extends b {

    /* renamed from: v, reason: collision with root package name */
    int f48055v;

    /* renamed from: w, reason: collision with root package name */
    int f48056w;

    /* renamed from: x, reason: collision with root package name */
    int f48057x;

    /* renamed from: y, reason: collision with root package name */
    private WindowManager f48058y;

    /* renamed from: z, reason: collision with root package name */
    private boolean f48059z;

    public c(Context context, Bundle bundle) {
        super(context, bundle);
        this.f48059z = false;
        this.f48057x = com.ubix.ssp.ad.e.a0.c.e(getContext());
        this.f48055v = r.a().h(getContext().getApplicationContext());
        this.f48056w = r.a().c(getContext().getApplicationContext()) - this.f48057x;
        this.f48048r = bundle.getInt("RENDER_MODE", 0);
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public boolean a(int i2) {
        return super.a(i2);
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public int getAppInfoTop() {
        int top;
        int i2;
        View viewFindViewById = findViewById(920101);
        if (viewFindViewById == null || viewFindViewById.getVisibility() == 8) {
            top = this.f48056w;
            i2 = this.f48040j * 3;
        } else {
            top = viewFindViewById.getTop();
            i2 = this.f48040j * 2;
        }
        return top - i2;
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public int getRealTemplateId() {
        return 6004;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int appInfoTop;
        int i6;
        int i7;
        int iB;
        com.ubix.ssp.ad.e.t.a.e eVar;
        ImageView.ScaleType scaleType;
        com.ubix.ssp.ad.e.c cVar;
        int i8;
        int iA;
        int measuredWidth;
        int measuredWidth2;
        int iA2;
        double d2;
        double d3;
        double d4;
        int i9;
        com.ubix.ssp.ad.e.e eVar2;
        double d5;
        double d6;
        super.onLayout(z2, i2, i3, i4, i5);
        int i10 = this.f48031a;
        if (getResources().getConfiguration().orientation == 2) {
            i10 = this.f48032b;
        }
        int i11 = i10;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            int id = childAt.getId();
            boolean z3 = true;
            switch (id) {
                case 400001:
                    int i13 = this.f48050t;
                    if (i13 != 1) {
                        if (i13 == 2) {
                            int iB2 = this.f48055v - r.b(24.0f);
                            int i14 = this.f48040j * 3;
                            childAt.layout(iB2 - i14, i14, this.f48055v - i14, r.b(24.0f) + (this.f48040j * 3));
                        } else if (i13 == 3 || i13 == 4) {
                            int iB3 = this.f48055v - r.b(40.0f);
                            appInfoTop = this.f48040j * 3;
                            i6 = iB3 - appInfoTop;
                            i7 = this.f48055v - appInfoTop;
                            iB = r.b(16.0f) + (this.f48040j * 3);
                            break;
                        } else {
                            int i15 = this.f48055v;
                            int i16 = i4 - i2;
                            int i17 = i5 - i3;
                            int iMin = Math.min(i16, i17 - this.f48057x) / 16;
                            int i18 = this.f48040j * 3;
                            childAt.layout(i15 - (iMin + i18), i18, this.f48055v - i18, (Math.min(i16, i17 - this.f48057x) / 16) + (this.f48040j * 3));
                        }
                    }
                    break;
                case 400002:
                    i6 = this.f48040j * 3;
                    appInfoTop = getAppInfoTop() - (i11 / 28);
                    i7 = (this.f48040j * 3) + (i11 / 12);
                    iB = getAppInfoTop();
                    break;
                case 400003:
                    View viewFindViewById = findViewById(400002);
                    childAt.layout(viewFindViewById.getRight() + this.f48040j, viewFindViewById.getTop() + ((viewFindViewById.getHeight() - childAt.getMeasuredHeight()) / 2), viewFindViewById.getRight() + childAt.getMeasuredWidth() + this.f48040j, viewFindViewById.getTop() + ((viewFindViewById.getHeight() + childAt.getMeasuredHeight()) / 2));
                    continue;
                case 400004:
                    int i19 = this.f48048r;
                    if (i19 == 1) {
                        childAt.layout(0, 0, i4, i5 - this.f48057x);
                        eVar = (com.ubix.ssp.ad.e.t.a.e) childAt;
                        scaleType = ImageView.ScaleType.FIT_CENTER;
                    } else {
                        childAt.layout(0, 0, i4, i5);
                        eVar = (com.ubix.ssp.ad.e.t.a.e) childAt;
                        scaleType = i19 == 2 ? ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_XY;
                    }
                    eVar.setScaleType(scaleType);
                    continue;
                case 400005:
                    childAt.layout(0, 0, i4 - i2, (i5 - i3) - this.f48057x);
                    continue;
                default:
                    switch (id) {
                        case 910100:
                        case 910200:
                            int top = findViewById(400002) != null ? findViewById(400002).getTop() : i5;
                            if (findViewById(910301) != null) {
                                top = findViewById(910301).getTop();
                            } else {
                                z3 = false;
                            }
                            findViewById(400004);
                            int measuredHeight = top - childAt.getMeasuredHeight();
                            int i20 = (this.f48055v - this.f48031a) / 2;
                            if (getRealTemplateId() == 6003) {
                                measuredWidth2 = ((this.f48031a - childAt.getMeasuredWidth()) / 2) + i20;
                                iA = measuredHeight - (z3 ? r.a(20.0f) : 0);
                                measuredWidth = i20 + ((this.f48031a + childAt.getMeasuredWidth()) / 2);
                                iA2 = z3 ? r.a(20.0f) : 0;
                                childAt.layout(measuredWidth2, iA, measuredWidth, top - iA2);
                                break;
                            } else {
                                int measuredWidth3 = ((this.f48031a - childAt.getMeasuredWidth()) / 2) + i20;
                                iA = measuredHeight - (z3 ? r.a(40.0f) : 0);
                                measuredWidth = i20 + ((this.f48031a + childAt.getMeasuredWidth()) / 2);
                                if (z3) {
                                    iA2 = r.a(40.0f);
                                    measuredWidth2 = measuredWidth3;
                                    childAt.layout(measuredWidth2, iA, measuredWidth, top - iA2);
                                } else {
                                    measuredWidth2 = measuredWidth3;
                                    childAt.layout(measuredWidth2, iA, measuredWidth, top - iA2);
                                }
                            }
                        case 910301:
                            try {
                                int iMin2 = Math.min((int) (this.f48055v * 0.8d * 0.212d), (int) (r.a().c(getContext()) * 0.15d));
                                int i21 = (int) ((this.f48045o * 25.0d) / 2.0d);
                                if (this.f48059z) {
                                    childAt.layout(((int) (this.f48055v * 0.3d)) - i21, ((getAppInfoTop() - (i11 / 20)) - iMin2) - i21, ((int) (this.f48055v * 0.7d)) + i21, (getAppInfoTop() - (i11 / 20)) + i21);
                                    cVar = (com.ubix.ssp.ad.e.c) childAt;
                                    i8 = (int) (this.f48055v * 0.4d);
                                } else {
                                    childAt.layout(((int) (this.f48055v * 0.1d)) - i21, ((getAppInfoTop() - (i11 / 20)) - iMin2) - i21, ((int) (this.f48055v * 0.9d)) + i21, (getAppInfoTop() - (i11 / 20)) + i21);
                                    cVar = (com.ubix.ssp.ad.e.c) childAt;
                                    i8 = (int) (this.f48055v * 0.8d);
                                }
                                int i22 = i21 * 2;
                                cVar.a(i8 + i22, iMin2 + i22);
                                break;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                break;
                            }
                        case 910401:
                            View viewFindViewById2 = findViewById(920101);
                            int height = viewFindViewById2 != null ? viewFindViewById2.getHeight() : 0;
                            if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
                                if (this.f48059z) {
                                    d5 = height;
                                    d6 = i5 * 0.5d;
                                } else {
                                    d5 = height;
                                    d6 = i5 * 0.4d;
                                }
                                childAt.layout(0, i5 - ((int) (d5 + d6)), i4, i5);
                                eVar2 = (com.ubix.ssp.ad.e.e) childAt;
                                i9 = (int) d6;
                            } else {
                                if (this.f48059z) {
                                    d2 = height;
                                    d3 = i5;
                                    d4 = 0.65d;
                                } else {
                                    d2 = height;
                                    d3 = i5;
                                    d4 = 0.45d;
                                }
                                i9 = (int) (d2 + (d3 * d4));
                                childAt.layout(0, i5 - i9, i4, i5);
                                eVar2 = (com.ubix.ssp.ad.e.e) childAt;
                            }
                            eVar2.a(i4, i9);
                            break;
                        case 920101:
                            int i23 = this.f48040j * 3;
                            int i24 = i5 - i3;
                            int measuredHeight2 = (i24 - this.f48057x) - childAt.getMeasuredHeight();
                            int i25 = this.f48040j * 3;
                            childAt.layout(i23, measuredHeight2 - i25, this.f48055v - i25, (i24 - this.f48057x) - i25);
                            childAt.getLayoutParams().width = this.f48055v - (this.f48040j * 6);
                            break;
                        case 920301:
                            int i26 = this.f48040j * 3;
                            childAt.layout(i26, i26, r.b(20.0f) + (this.f48040j * 3), r.b(12.0f) + (this.f48040j * 3));
                            continue;
                    }
                    break;
            }
            childAt.layout(i6, appInfoTop, i7, iB);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.f48058y == null) {
            this.f48058y = (WindowManager) getContext().getSystemService("window");
        }
        int orientation = this.f48058y.getDefaultDisplay().getOrientation();
        a(this.f48039i);
        if (orientation == 1 || orientation == 3) {
            this.f48059z = true;
        } else {
            this.f48059z = false;
        }
        this.f48055v = getWidth();
        this.f48056w = getHeight() - com.ubix.ssp.ad.e.a0.c.e(getContext());
    }
}
