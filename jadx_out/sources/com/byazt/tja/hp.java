package com.byazt.tja;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1570, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final Map<String, InterfaceC0372hp> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: com.byazt.tja.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0372hp {
    }

    public static void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l(str);
    }

    private static InterfaceC0372hp l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return hp.remove(str);
    }

    public static void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l(str);
    }
}
