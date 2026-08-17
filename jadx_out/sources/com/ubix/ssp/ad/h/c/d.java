package com.ubix.ssp.ad.h.c;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class d extends b {

    /* renamed from: v, reason: collision with root package name */
    int f48060v;

    /* renamed from: w, reason: collision with root package name */
    int f48061w;

    /* renamed from: x, reason: collision with root package name */
    private WindowManager f48062x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f48063y;

    public d(Context context, Bundle bundle) {
        super(context, bundle);
        this.f48063y = false;
        this.f48060v = r.a().h(getContext());
        this.f48061w = r.a().c(getContext()) - com.ubix.ssp.ad.e.a0.c.e(getContext());
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
            top = this.f48061w;
            i2 = this.f48040j * 3;
        } else {
            top = viewFindViewById.getTop();
            i2 = this.f48040j * 2;
        }
        return top - i2;
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public int getRealTemplateId() {
        return 6014;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        com.ubix.ssp.ad.e.c cVar;
        int i6;
        int i7;
        int i8;
        int i9;
        int iB;
        int appInfoTop;
        int i10;
        int i11;
        int iB2;
        int iA;
        int measuredWidth;
        int measuredWidth2;
        int iA2;
        super.onLayout(z2, i2, i3, i4, i5);
        int i12 = this.f48031a;
        if (getResources().getConfiguration().orientation == 2) {
            i12 = this.f48032b;
        }
        int i13 = i12;
        for (int i14 = 0; i14 < getChildCount(); i14++) {
            View childAt = getChildAt(i14);
            boolean z3 = true;
            switch (childAt.getId()) {
                case 400001:
                    int i15 = this.f48050t;
                    if (i15 != 1) {
                        if (i15 == 2) {
                            int iB3 = this.f48060v - r.b(24.0f);
                            i7 = this.f48040j * 3;
                            i8 = iB3 - i7;
                            i9 = this.f48060v - i7;
                            iB = r.b(24.0f);
                        } else if (i15 == 3 || i15 == 4) {
                            int iB4 = this.f48060v - r.b(40.0f);
                            appInfoTop = this.f48040j * 3;
                            i10 = iB4 - appInfoTop;
                            i11 = this.f48060v - appInfoTop;
                            iB2 = r.b(16.0f) + (this.f48040j * 3);
                            break;
                        } else {
                            int i16 = this.f48060v;
                            int iMin = Math.min(i16, this.f48061w) / 16;
                            i7 = this.f48040j * 3;
                            i8 = i16 - (iMin + i7);
                            int i17 = this.f48060v;
                            i9 = i17 - i7;
                            iB = Math.min(i17, this.f48061w) / 16;
                        }
                        childAt.layout(i8, i7, i9, iB + (this.f48040j * 3));
                    }
                    break;
                case 400002:
                    i10 = this.f48040j * 3;
                    appInfoTop = getAppInfoTop() - (i13 / 28);
                    i11 = (this.f48040j * 3) + (i13 / 12);
                    iB2 = getAppInfoTop();
                    break;
                case 400003:
                    View viewFindViewById = findViewById(400002);
                    childAt.layout(viewFindViewById.getRight() + this.f48040j, viewFindViewById.getTop() + ((viewFindViewById.getHeight() - childAt.getMeasuredHeight()) / 2), viewFindViewById.getRight() + childAt.getMeasuredWidth() + this.f48040j, viewFindViewById.getTop() + ((viewFindViewById.getHeight() + childAt.getMeasuredHeight()) / 2));
                    continue;
                case 400004:
                    int i18 = i4 - i2;
                    int i19 = this.f48031a;
                    int i20 = i5 - i3;
                    int i21 = this.f48032b;
                    childAt.layout((i18 - i19) / 2, (i20 - i21) / 2, (i18 + i19) / 2, (i20 + i21) / 2);
                    continue;
                case 400005:
                    childAt.layout(0, 0, this.f48060v, this.f48061w);
                    continue;
                case 400007:
                    int i22 = this.f48060v;
                    int iMin2 = (i22 - (Math.min(i22, this.f48061w) / 16)) - (this.f48040j * 3);
                    int appInfoTop2 = getAppInfoTop() - (Math.min(this.f48060v, this.f48061w) / 16);
                    int i23 = this.f48040j;
                    childAt.layout(iMin2, appInfoTop2 - i23, this.f48060v - (i23 * 3), getAppInfoTop() - this.f48040j);
                    continue;
                case 400008:
                    childAt.setVisibility(0);
                    childAt.layout(0, 0, i4, i5);
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    layoutParams.width = i4 - i2;
                    layoutParams.height = i5 - i3;
                    continue;
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
                    int i24 = (this.f48060v - this.f48031a) / 2;
                    if (getRealTemplateId() == 6003) {
                        measuredWidth2 = ((this.f48031a - childAt.getMeasuredWidth()) / 2) + i24;
                        iA = measuredHeight - (z3 ? r.a(20.0f) : 0);
                        measuredWidth = i24 + ((this.f48031a + childAt.getMeasuredWidth()) / 2);
                        iA2 = z3 ? r.a(20.0f) : 0;
                        childAt.layout(measuredWidth2, iA, measuredWidth, top - iA2);
                        continue;
                    } else {
                        int measuredWidth3 = ((this.f48031a - childAt.getMeasuredWidth()) / 2) + i24;
                        iA = measuredHeight - (z3 ? r.a(40.0f) : 0);
                        measuredWidth = i24 + ((this.f48031a + childAt.getMeasuredWidth()) / 2);
                        if (z3) {
                            iA2 = r.a(40.0f);
                            measuredWidth2 = measuredWidth3;
                            childAt.layout(measuredWidth2, iA, measuredWidth, top - iA2);
                            continue;
                        } else {
                            measuredWidth2 = measuredWidth3;
                            childAt.layout(measuredWidth2, iA, measuredWidth, top - iA2);
                            continue;
                        }
                    }
                case 910301:
                    try {
                        int iMin3 = Math.min((int) (this.f48060v * 0.8d * 0.212d), (int) (r.a().c(getContext()) * 0.15d));
                        int i25 = (int) ((this.f48045o * 25.0d) / 2.0d);
                        if (this.f48063y) {
                            childAt.layout(((int) (this.f48060v * 0.3d)) - i25, (((getAppInfoTop() - (i13 / 20)) - 50) - iMin3) - i25, ((int) (this.f48060v * 0.7d)) + i25, ((getAppInfoTop() - (i13 / 20)) - 50) + i25);
                            cVar = (com.ubix.ssp.ad.e.c) childAt;
                            i6 = (int) (this.f48060v * 0.4d);
                        } else {
                            childAt.layout(((int) (this.f48060v * 0.1d)) - i25, (((getAppInfoTop() - (i13 / 20)) - 50) - iMin3) - i25, ((int) (this.f48060v * 0.9d)) + i25, ((getAppInfoTop() - (i13 / 20)) - 50) + i25);
                            cVar = (com.ubix.ssp.ad.e.c) childAt;
                            i6 = (int) (this.f48060v * 0.8d);
                        }
                        int i26 = i25 * 2;
                        cVar.a(i6 + i26, iMin3 + i26);
                        continue;
                    } catch (Exception e2) {
                        try {
                            e2.printStackTrace();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                case 920101:
                    int i27 = this.f48040j * 3;
                    int measuredHeight2 = this.f48061w - childAt.getMeasuredHeight();
                    int i28 = this.f48040j * 3;
                    childAt.layout(i27, measuredHeight2 - i28, this.f48060v - i28, this.f48061w - i28);
                    childAt.getLayoutParams().width = this.f48060v - (this.f48040j * 6);
                    continue;
                case 920301:
                    int i29 = this.f48040j * 3;
                    childAt.layout(i29, i29, r.b(20.0f) + (this.f48040j * 3), r.b(12.0f) + (this.f48040j * 3));
                    continue;
                default:
            }
            childAt.layout(i10, appInfoTop, i11, iB2);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.f48062x == null) {
            this.f48062x = (WindowManager) getContext().getSystemService("window");
        }
        int orientation = this.f48062x.getDefaultDisplay().getOrientation();
        a(this.f48039i);
        if (orientation == 1 || orientation == 3) {
            this.f48063y = true;
        } else {
            this.f48063y = false;
        }
        this.f48060v = getWidth();
        this.f48061w = getHeight() - com.ubix.ssp.ad.e.a0.c.e(getContext());
    }
}
