package com.meishu.sdk.core.safe;

import android.view.ViewTreeObserver;

/* loaded from: classes4.dex */
public class j implements ViewTreeObserver.OnScrollChangedListener {
    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        try {
            safeOnScrollChanged();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void safeOnScrollChanged() {
    }
}
