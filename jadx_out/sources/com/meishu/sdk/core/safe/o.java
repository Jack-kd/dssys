package com.meishu.sdk.core.safe;

import android.view.View;

/* loaded from: classes4.dex */
public class o implements View.OnClickListener {
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            safeOnClick(view);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public void safeOnClick(View view) {
    }
}
