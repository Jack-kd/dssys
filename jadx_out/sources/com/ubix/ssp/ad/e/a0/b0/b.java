package com.ubix.ssp.ad.e.a0.b0;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.byazt.pu.TTDownloadField;
import com.ubix.ssp.ad.e.a0.u;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public class b {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        String f46105a;

        /* renamed from: b, reason: collision with root package name */
        Activity f46106b;

        /* renamed from: c, reason: collision with root package name */
        boolean f46107c;

        /* renamed from: d, reason: collision with root package name */
        boolean f46108d;

        /* renamed from: e, reason: collision with root package name */
        boolean f46109e;

        @NonNull
        public String toString() {
            return "name=" + this.f46105a + ";activity" + this.f46106b + ";isPause=" + this.f46107c + ";isStop=" + this.f46108d + ";isFinish=" + this.f46109e;
        }
    }

    public static int a() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = Class.forName("android.app.ActivityThread");
        Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
        declaredMethod.setAccessible(true);
        Object objInvoke = declaredMethod.invoke(null, null);
        if (objInvoke == null) {
            return -1;
        }
        String[] strArr = {"mActivities", "activities", "mActivitys"};
        int i2 = 1;
        for (int i3 = 0; i3 < 3; i3++) {
            try {
                Field declaredField = cls.getDeclaredField(strArr[i3]);
                declaredField.setAccessible(true);
                Object obj = declaredField.get(objInvoke);
                if (obj instanceof Map) {
                    Map map = (Map) obj;
                    Iterator it = map.keySet().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            a aVarA = a(map.get(it.next()));
                            u.e("ActivityInfo2=" + aVarA.toString());
                            if (!aVarA.f46107c) {
                                i2 = 0;
                                break;
                            }
                        }
                    }
                }
            } catch (NoSuchFieldException unused) {
            }
        }
        return i2;
    }

    private static a a(Object obj) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Object obj2;
        if (obj == null) {
            return null;
        }
        a aVar = new a();
        Class<?> cls = obj.getClass();
        try {
            Field declaredField = cls.getDeclaredField(TTDownloadField.TT_ACTIVITY);
            declaredField.setAccessible(true);
            Object obj3 = declaredField.get(obj);
            u.e("activity activity=" + obj3);
            if (obj3 instanceof Activity) {
                aVar.f46106b = (Activity) obj3;
                aVar.f46105a = obj3.getClass().getName();
            }
        } catch (NoSuchFieldException unused) {
            String[] strArr = {TTDownloadField.TT_ACTIVITY, "mActivity", "activityRef"};
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    Field declaredField2 = cls.getDeclaredField(strArr[i2]);
                    declaredField2.setAccessible(true);
                    obj2 = declaredField2.get(obj);
                } catch (NoSuchFieldException unused2) {
                }
                if (obj2 instanceof Activity) {
                    aVar.f46106b = (Activity) obj2;
                    aVar.f46105a = obj2.getClass().getName();
                } else {
                    continue;
                }
            }
        }
        try {
            Field declaredField3 = cls.getDeclaredField("paused");
            declaredField3.setAccessible(true);
            aVar.f46107c = declaredField3.getBoolean(obj);
            u.e("activity activity paused=" + aVar.f46107c);
        } catch (NoSuchFieldException unused3) {
            String[] strArr2 = {"paused", "mPaused", "isPaused"};
            for (int i3 = 0; i3 < 3; i3++) {
                try {
                    Field declaredField4 = cls.getDeclaredField(strArr2[i3]);
                    declaredField4.setAccessible(true);
                    aVar.f46107c = declaredField4.getBoolean(obj);
                    u.e("activity activity paused exc=" + aVar.f46107c);
                } catch (NoSuchFieldException unused4) {
                }
            }
        }
        try {
            Field declaredField5 = cls.getDeclaredField("stopped");
            declaredField5.setAccessible(true);
            aVar.f46108d = declaredField5.getBoolean(obj);
        } catch (NoSuchFieldException unused5) {
            String[] strArr3 = {"stopped", "mStopped", "isStopped"};
            for (int i4 = 0; i4 < 3; i4++) {
                try {
                    Field declaredField6 = cls.getDeclaredField(strArr3[i4]);
                    declaredField6.setAccessible(true);
                    aVar.f46108d = declaredField6.getBoolean(obj);
                } catch (NoSuchFieldException unused6) {
                }
            }
        }
        try {
            Field declaredField7 = cls.getDeclaredField("finishing");
            declaredField7.setAccessible(true);
            aVar.f46109e = declaredField7.getBoolean(obj);
        } catch (NoSuchFieldException unused7) {
        }
        return aVar;
    }
}
