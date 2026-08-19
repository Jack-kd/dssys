package com.meishu.sdk.core.safe;

import android.content.DialogInterface;

/* loaded from: classes4.dex */
public class b implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        try {
            safeOnClick(dialogInterface, i2);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public void safeOnClick(DialogInterface dialogInterface, int i2) {
    }
}
