package com.meishu.sdk.core.utils;

import android.content.Intent;
import com.meishu.sdk.core.domain.ar;

/* loaded from: classes4.dex */
public class ah extends ar {
    public Object c(Intent intent, String str, String str2) {
        try {
            Class<?> cls = Class.forName(str);
            return cls.getDeclaredMethod(this.f31583d, cls, CharSequence.class).invoke(null, intent, str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
