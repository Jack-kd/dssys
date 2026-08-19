package com.byazt.aw;

import android.content.Context;
import com.bytedance.pangle.wrapper.PluginActivityWrapper;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;

@com.byazt.kj.hp(hp = {0, 1, 1452, 28})
/* loaded from: classes2.dex */
public class hp {
    public static Object hp(Context context) {
        if (context != null) {
            try {
                Object obj = context.getClass() == PluginActivityWrapper.class ? ((PluginActivityWrapper) context).mOriginActivity : context.getClass() == PluginApplicationWrapper.class ? ((PluginApplicationWrapper) context).mOriginApplication : null;
                if (obj != null) {
                    return obj;
                }
            } catch (Throwable unused) {
            }
        }
        return context;
    }
}
