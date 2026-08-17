package com.sigmob.sdk.base.common;

import android.content.Context;
import android.widget.Toast;

/* loaded from: classes4.dex */
public class ak extends Toast {
    public ak(Context context) {
        super(context);
    }

    public static Toast a(Context context, CharSequence charSequence, int i2) {
        Toast toastMakeText = Toast.makeText(context, charSequence, i2);
        toastMakeText.setGravity(17, 0, 0);
        return toastMakeText;
    }
}
