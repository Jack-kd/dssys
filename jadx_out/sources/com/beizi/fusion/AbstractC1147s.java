package com.beizi.fusion;

import java.util.Map;

/* renamed from: com.beizi.fusion.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1147s {
    public static boolean a(Map map, String str, boolean z2) {
        if (map != null) {
            Object obj = map.get(str);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
        }
        return z2;
    }

    public static String a(Map map, String str) {
        if (map != null) {
            Object obj = map.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
            return "";
        }
        return "";
    }

    public static int a(Map map, String str, int i2) {
        Object obj;
        if (map != null && (obj = map.get(str)) != null) {
            try {
                return Integer.parseInt(obj.toString());
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }
}
