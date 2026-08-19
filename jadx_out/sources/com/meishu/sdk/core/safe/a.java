package com.meishu.sdk.core.safe;

import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes4.dex */
public abstract class a extends ClickableSpan {
    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        try {
            safeOnClick(view);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public abstract void safeOnClick(View view);
}
