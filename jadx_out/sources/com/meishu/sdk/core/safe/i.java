package com.meishu.sdk.core.safe;

import android.view.View;

/* loaded from: classes4.dex */
public class i implements View.OnLayoutChangeListener {
    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        try {
            safeOnLayoutChange(view, i2, i3, i4, i5, i6, i7, i8, i9);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public void safeOnLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
    }
}
