package com.ubix.ssp.ad.h.c;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class g extends b {

    /* renamed from: v, reason: collision with root package name */
    int f48074v;

    /* renamed from: w, reason: collision with root package name */
    int f48075w;

    /* renamed from: x, reason: collision with root package name */
    WindowManager f48076x;

    /* renamed from: y, reason: collision with root package name */
    int f48077y;

    public g(Context context, Bundle bundle) {
        super(context, bundle);
        this.f48077y = 6012;
        this.f48077y = bundle.getInt("TEMPLATE_ID");
        this.f48074v = r.a().h(getContext());
        this.f48075w = r.a().c(getContext()) - com.ubix.ssp.ad.e.a0.c.e(getContext());
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public boolean a(int i2) {
        return super.a(i2);
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public int getRealTemplateId() {
        return 6012;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0181 A[PHI: r4 r5 r6 r7
      0x0181: PHI (r4v44 float) = (r4v43 float), (r4v0 float) binds: [B:42:0x01a4, B:35:0x017f] A[DONT_GENERATE, DONT_INLINE]
      0x0181: PHI (r5v35 int) = (r5v32 int), (r5v36 int) binds: [B:42:0x01a4, B:35:0x017f] A[DONT_GENERATE, DONT_INLINE]
      0x0181: PHI (r6v28 int) = (r6v25 int), (r6v29 int) binds: [B:42:0x01a4, B:35:0x017f] A[DONT_GENERATE, DONT_INLINE]
      0x0181: PHI (r7v18 int) = (r7v15 int), (r7v22 int) binds: [B:42:0x01a4, B:35:0x017f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a7 A[PHI: r5 r6 r7
      0x01a7: PHI (r5v33 int) = (r5v32 int), (r5v36 int) binds: [B:42:0x01a4, B:35:0x017f] A[DONT_GENERATE, DONT_INLINE]
      0x01a7: PHI (r6v26 int) = (r6v25 int), (r6v29 int) binds: [B:42:0x01a4, B:35:0x017f] A[DONT_GENERATE, DONT_INLINE]
      0x01a7: PHI (r7v16 int) = (r7v15 int), (r7v22 int) binds: [B:42:0x01a4, B:35:0x017f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r11, int r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.h.c.g.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        int iG;
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.f48076x == null) {
            this.f48076x = (WindowManager) getContext().getSystemService("window");
        }
        int orientation = this.f48076x.getDefaultDisplay().getOrientation();
        a(this.f48039i);
        if (orientation == 1 || orientation == 3) {
            this.f48074v = r.a().f(getContext());
            iG = r.a().g(getContext());
        } else {
            this.f48074v = r.a().h(getContext());
            iG = r.a().c(getContext());
        }
        this.f48075w = iG - com.ubix.ssp.ad.e.a0.c.e(getContext());
        View viewFindViewById = findViewById(400008);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.width = this.f48031a;
        layoutParams.height = this.f48032b;
        viewFindViewById.setLayoutParams(layoutParams);
    }
}
