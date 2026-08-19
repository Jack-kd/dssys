package com.ubix.ssp.ad.h.c;

import android.content.Context;
import android.os.Bundle;
import android.view.WindowManager;
import com.kwad.library.solder.lib.ext.PluginError;
import com.ubix.ssp.ad.e.a0.r;

/* loaded from: classes5.dex */
public class a extends b {

    /* renamed from: v, reason: collision with root package name */
    int f48028v;

    /* renamed from: w, reason: collision with root package name */
    int f48029w;

    /* renamed from: x, reason: collision with root package name */
    WindowManager f48030x;

    public a(Context context, Bundle bundle) {
        super(context, bundle);
        this.f48028v = r.a().h(getContext());
        this.f48029w = r.a().c(getContext()) - com.ubix.ssp.ad.e.a0.c.e(getContext());
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public boolean a(int i2) {
        return super.a(i2);
    }

    @Override // com.ubix.ssp.ad.h.c.b
    public int getRealTemplateId() {
        return PluginError.ERROR_BUILD_REMOTE_PLUGIN_INFO;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x01fc A[PHI: r8 r9 r10
      0x01fc: PHI (r8v28 int) = (r8v27 int), (r8v30 int) binds: [B:50:0x01f5, B:43:0x01d1] A[DONT_GENERATE, DONT_INLINE]
      0x01fc: PHI (r9v32 int) = (r9v31 int), (r9v34 int) binds: [B:50:0x01f5, B:43:0x01d1] A[DONT_GENERATE, DONT_INLINE]
      0x01fc: PHI (r10v25 int) = (r10v24 int), (r10v30 int) binds: [B:50:0x01f5, B:43:0x01d1] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.h.c.a.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        int iG;
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.f48030x == null) {
            this.f48030x = (WindowManager) getContext().getSystemService("window");
        }
        int orientation = this.f48030x.getDefaultDisplay().getOrientation();
        a(this.f48039i);
        if (orientation == 1 || orientation == 3) {
            this.f48028v = r.a().f(getContext());
            iG = r.a().g(getContext());
        } else {
            this.f48028v = r.a().h(getContext());
            iG = r.a().c(getContext());
        }
        this.f48029w = iG - com.ubix.ssp.ad.e.a0.c.e(getContext());
    }
}
