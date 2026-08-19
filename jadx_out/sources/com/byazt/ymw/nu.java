package com.byazt.ymw;

import android.content.Context;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 68, 546})
/* loaded from: classes3.dex */
public class nu {
    public static final Class<?>[] hp;
    public static final HashMap<Class<?>, Class<?>> jx;

    /* renamed from: l, reason: collision with root package name */
    public static Map<String, Method> f28105l = new HashMap();

    static {
        HashMap<Class<?>, Class<?>> map = new HashMap<>();
        jx = map;
        map.put(Boolean.TYPE, Boolean.class);
        map.put(Byte.TYPE, Byte.class);
        map.put(Character.TYPE, Character.class);
        map.put(Short.TYPE, Short.class);
        map.put(Integer.TYPE, Integer.class);
        map.put(Long.TYPE, Long.class);
        map.put(Double.TYPE, Double.class);
        map.put(Float.TYPE, Float.class);
        map.put(Void.TYPE, Void.class);
        hp = new Class[0];
    }

    public static int hp(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
