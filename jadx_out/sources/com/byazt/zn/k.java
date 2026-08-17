package com.byazt.zn;

import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 442, 42})
/* loaded from: classes3.dex */
public class k {
    public static String hp(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        return map.get(TextUtils.isEmpty(map.get("content-type")) ? AbstractC1114b.f5589g : "content-type");
    }
}
