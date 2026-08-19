package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.j5;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public class SimpleMediaATView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f43605a;

    /* renamed from: b, reason: collision with root package name */
    public int f43606b;

    /* renamed from: c, reason: collision with root package name */
    public int f43607c;

    /* renamed from: d, reason: collision with root package name */
    public ImageView f43608d;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f43609e;

    /* renamed from: f, reason: collision with root package name */
    public Bitmap f43610f;

    public SimpleMediaATView(Context context) {
        this(context, null);
    }

    public final void a(Bitmap bitmap) {
        int[] iArrA = d.a(this.f43605a, this.f43606b, bitmap.getWidth() / bitmap.getHeight());
        ViewGroup.LayoutParams layoutParams = this.f43608d.getLayoutParams();
        layoutParams.width = iArrA[0];
        layoutParams.height = iArrA[1];
        this.f43608d.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
        if (layoutParams2 != null) {
            int i2 = layoutParams2.width == -2 ? iArrA[0] : this.f43605a;
            int i3 = layoutParams2.height == -2 ? iArrA[1] : this.f43606b;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (!childAt.equals(this.f43608d)) {
                    ViewGroup.LayoutParams layoutParams3 = childAt.getLayoutParams();
                    layoutParams3.width = i2;
                    childAt.setLayoutParams(layoutParams3);
                    ViewGroup.LayoutParams layoutParams4 = childAt.getLayoutParams();
                    layoutParams4.height = i3;
                    childAt.setLayoutParams(layoutParams4);
                }
            }
        }
    }

    public void initView(c cVar) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_simple_media_ad_view", "layout"), this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.f43607c = iMax;
        this.f43605a = iMax;
        this.f43606b = iMax;
        this.f43609e = (ImageView) findViewById(k.a(getContext(), "myoffer_simple_background", "id"));
        ImageView imageView = (ImageView) findViewById(k.a(getContext(), "myoffer_simple_main_image", "id"));
        this.f43608d = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        String str = cVar.f41815f;
        try {
            m.a(getContext()).a(new o(1, str), -1, -1, new j5(this, str));
        } catch (Throwable unused) {
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        boolean z2;
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        Bitmap bitmap = this.f43610f;
        if (bitmap == null) {
            if (size != 0 && size < this.f43605a) {
                this.f43605a = size;
            }
            if (size2 == 0 || size2 >= this.f43606b) {
                return;
            }
            this.f43606b = size2;
            return;
        }
        if (size == 0 || size >= this.f43605a) {
            z2 = false;
        } else {
            this.f43605a = size;
            z2 = true;
        }
        if (size2 != 0 && size2 < this.f43606b) {
            this.f43606b = size2;
        } else if (!z2) {
            return;
        }
        a(bitmap);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0031 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setLayoutParams(android.view.ViewGroup.LayoutParams r6) {
        /*
            r5 = this;
            super.setLayoutParams(r6)
            int r0 = r6.width
            r1 = 1
            r2 = -2
            r3 = -1
            if (r0 == r3) goto L15
            if (r0 != r2) goto Ld
            goto L15
        Ld:
            int r4 = r5.f43605a
            if (r4 == r0) goto L19
            r5.f43605a = r0
            r0 = r1
            goto L1a
        L15:
            int r0 = r5.f43607c
            r5.f43605a = r0
        L19:
            r0 = 0
        L1a:
            int r6 = r6.height
            if (r6 == r3) goto L28
            if (r6 != r2) goto L21
            goto L28
        L21:
            int r2 = r5.f43606b
            if (r2 == r6) goto L2c
            r5.f43606b = r6
            goto L2d
        L28:
            int r6 = r5.f43607c
            r5.f43606b = r6
        L2c:
            r1 = r0
        L2d:
            android.graphics.Bitmap r6 = r5.f43610f
            if (r6 == 0) goto L36
            if (r1 == 0) goto L36
            r5.a(r6)
        L36:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.basead.ui.SimpleMediaATView.setLayoutParams(android.view.ViewGroup$LayoutParams):void");
    }

    public SimpleMediaATView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleMediaATView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
