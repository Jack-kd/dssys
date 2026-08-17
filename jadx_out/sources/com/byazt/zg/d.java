package com.byazt.zg;

import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 308, 670})
/* loaded from: classes3.dex */
public class d {
    public static <T> boolean hp(List<T> list) {
        return list == null || list.size() == 0;
    }

    public static <T> boolean l(List<T> list) {
        return list == null || list.size() == 0 || list.get(0) == null;
    }
}
