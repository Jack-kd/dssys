package com.byazt.dnb;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import java.io.File;
import java.io.FileFilter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1239, 302})
/* loaded from: classes2.dex */
public final class zy {
    public static Map<String, Field> hp = new HashMap();

    public static boolean a(String str) {
        Object objApply;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(4);
            if (functionA != null && (objApply = functionA.apply(com.byazt.wi.j.hp().hp(5).hp(Boolean.class).hp(0, str).l())) != null) {
                return ((Boolean) objApply).booleanValue();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static JSONObject eb(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(4);
            if (functionA != null) {
                Object objApply = functionA.apply(com.byazt.wi.j.hp().hp(13).hp(JSONObject.class).hp(0, str).l());
                if (objApply instanceof JSONObject) {
                    return (JSONObject) objApply;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static void hp(String str, int i2) {
        if (i2 > 0) {
            try {
                if (d.f21856j < 7500) {
                    l(str, i2);
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(4);
        if (functionA != null) {
            functionA.apply(com.byazt.wi.j.hp().hp(100).hp(Void.class).hp(0, str).hp(1, Integer.valueOf(i2)).l());
        }
    }

    public static List<Integer> j(String str) {
        if (d.f21856j >= 7500) {
            Object objJ = j(str, 110);
            if (objJ instanceof List) {
                return (List) objJ;
            }
            return null;
        }
        File[] fileArrHp = hp(str);
        ArrayList arrayList = new ArrayList();
        if (fileArrHp != null) {
            for (File file : fileArrHp) {
                arrayList.add(Integer.valueOf(Integer.parseInt(file.getName().split("-")[1])));
            }
        }
        return arrayList;
    }

    public static int jx(String str) {
        if (TextUtils.equals("com.byted.pangle", str)) {
            return 7643;
        }
        return jx(str, 103);
    }

    public static void l(String str, int i2) {
        try {
            File[] fileArrHp = hp(str);
            if (fileArrHp != null) {
                for (File file : fileArrHp) {
                    if (Integer.parseInt(file.getName().split("-")[1]) == i2) {
                        w.l(file);
                        return;
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static ClassLoader q(String str) {
        try {
            Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(4);
            if (functionA != null) {
                return (ClassLoader) functionA.apply(com.byazt.wi.j.hp().hp(4).hp(ClassLoader.class).hp(0, str).l());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean s(String str) {
        Object objApply;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(4);
            if (functionA != null && (objApply = functionA.apply(com.byazt.wi.j.hp().hp(105).hp(Boolean.class).hp(0, str).l())) != null) {
                return ((Boolean) objApply).booleanValue();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int w(String str) {
        return TextUtils.equals("com.byted.pangle", str) ? d.f21856j : jx(str, 102);
    }

    public static int jx(String str, int i2) {
        Object objJ = j(str, i2);
        if (objJ instanceof Integer) {
            return ((Integer) objJ).intValue();
        }
        return 0;
    }

    public static int l(String str) {
        if (TextUtils.equals("com.byted.pangle", str)) {
            return d.f21856j;
        }
        return jx(str, 101);
    }

    private static Object j(String str, int i2) {
        try {
            Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(4);
            if (functionA != null) {
                return functionA.apply(com.byazt.wi.j.hp().hp(i2).hp(Integer.class).hp(0, str).l());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static File[] hp(String str) {
        return new File(com.byazt.ymw.eb.hp(sz.getContext(), false, null).getParent() + "/pangle_p/" + str).listFiles(new FileFilter() { // from class: com.byazt.dnb.zy.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file != null && file.getName().matches("^version-(\\d+)$");
            }
        });
    }

    public static void hp() {
        try {
            Function<SparseArray<Object>, Object> functionA = com.byazt.jz.s.u().a(4);
            if (functionA != null) {
                functionA.apply(com.byazt.wi.j.hp().hp(109).hp(Boolean.class).l());
            }
        } catch (Throwable unused) {
        }
    }
}
