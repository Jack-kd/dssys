package com.byazt.zg;

import android.content.Context;
import android.content.Intent;

@com.byazt.kj.hp(hp = {0, 1, 308, 38})
/* loaded from: classes3.dex */
public class j {

    public interface hp {
    }

    public static void hp(Context context, Intent intent, hp hpVar) {
        if (context == null || intent == null) {
            return;
        }
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
        }
    }
}
