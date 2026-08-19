package com.byazt.yv;

import com.byazt.jw.w;

@com.byazt.kj.hp(hp = {0, 1, 1455, 38})
/* loaded from: classes3.dex */
public class j {
    public static String hp = "com.bytedance.openadsdk";

    /* renamed from: l, reason: collision with root package name */
    public static String f28319l = "content://" + hp + ".TTMultiProvider";

    public static String hp(w wVar) {
        if (wVar.getContext() != null) {
            hp = wVar.getContext().getPackageName();
            f28319l = "content://" + hp + ".TTMultiProvider";
        }
        return f28319l;
    }
}
