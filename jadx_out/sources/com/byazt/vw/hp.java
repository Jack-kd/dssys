package com.byazt.vw;

import com.bytedance.pangle.log.ZeusLogger;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 2442, 28})
/* loaded from: classes3.dex */
public class hp {
    public static Method hp;

    /* renamed from: j, reason: collision with root package name */
    public static Method f26728j;
    public static Method jx;

    /* renamed from: l, reason: collision with root package name */
    public static Method f26729l;

    static {
        try {
            hp = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            f26729l = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            jx = Class.class.getDeclaredMethod("getDeclaredConstructor", Class[].class);
            f26728j = Class.class.getDeclaredMethod("forName", String.class);
        } catch (Throwable th) {
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "DoubleReflectorinit failed", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Field hp(java.lang.Class<?> r6, java.lang.String r7) {
        /*
            java.lang.reflect.Method r0 = com.byazt.vw.hp.hp
            r1 = 0
            if (r0 == 0) goto L40
            java.lang.Object[] r2 = new java.lang.Object[]{r7}     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r0 = r0.invoke(r6, r2)     // Catch: java.lang.Throwable -> L1a
            java.lang.reflect.Field r0 = (java.lang.reflect.Field) r0     // Catch: java.lang.Throwable -> L1a
            if (r0 == 0) goto L18
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> L16
            goto L18
        L16:
            r1 = move-exception
            goto L1e
        L18:
            r1 = r0
            goto L40
        L1a:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L1e:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "DoubleReflector"
            r2.<init>(r3)
            java.lang.String r3 = r6.getName()
            java.lang.Object[] r3 = new java.lang.Object[]{r3, r7}
            java.lang.String r4 = "getField %s#%s failed !!!"
            java.lang.String r3 = java.lang.String.format(r4, r3)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "Zeus_pangle"
            com.bytedance.pangle.log.ZeusLogger.w(r3, r2, r1)
            goto L18
        L40:
            if (r1 == 0) goto L43
            return r1
        L43:
            java.lang.reflect.Field r6 = com.byazt.pb.hp.hp(r6, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.vw.hp.hp(java.lang.Class, java.lang.String):java.lang.reflect.Field");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Method hp(java.lang.Class<?> r6, java.lang.String r7, java.lang.Class<?>... r8) {
        /*
            java.lang.reflect.Method r0 = com.byazt.vw.hp.f26729l
            r1 = 0
            if (r0 == 0) goto L40
            java.lang.Object[] r2 = new java.lang.Object[]{r7, r8}     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r0 = r0.invoke(r6, r2)     // Catch: java.lang.Throwable -> L1a
            java.lang.reflect.Method r0 = (java.lang.reflect.Method) r0     // Catch: java.lang.Throwable -> L1a
            if (r0 == 0) goto L18
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> L16
            goto L18
        L16:
            r1 = move-exception
            goto L1e
        L18:
            r1 = r0
            goto L40
        L1a:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L1e:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "DoubleReflector"
            r2.<init>(r3)
            java.lang.String r3 = r6.getName()
            java.lang.Object[] r3 = new java.lang.Object[]{r3, r7}
            java.lang.String r4 = "getMethod %s#%s failed !!!"
            java.lang.String r3 = java.lang.String.format(r4, r3)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "Zeus_pangle"
            com.bytedance.pangle.log.ZeusLogger.w(r3, r2, r1)
            goto L18
        L40:
            if (r1 == 0) goto L43
            return r1
        L43:
            java.lang.reflect.Method r6 = com.byazt.pb.hp.hp(r6, r7, r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.vw.hp.hp(java.lang.Class, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }

    public static Constructor hp(Class<?> cls, Class<?>... clsArr) {
        Constructor constructor;
        Method method = jx;
        if (method != null) {
            try {
                constructor = (Constructor) method.invoke(cls, clsArr);
            } catch (Throwable th) {
                StringBuilder sb = new StringBuilder("DoubleReflector");
                sb.append(String.format("getConstructor %s<init>%s failed !!!", cls.getName(), Integer.valueOf(clsArr != null ? clsArr.length : 0)));
                ZeusLogger.w(ZeusLogger.TAG, sb.toString(), th);
            }
        } else {
            constructor = null;
        }
        return constructor != null ? constructor : com.byazt.pb.hp.hp(cls, clsArr);
    }
}
