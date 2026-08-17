package com.kuaishou.weapon.p0;

/* loaded from: classes4.dex */
public class cp {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f31013a = false;

    /* renamed from: b, reason: collision with root package name */
    private static volatile boolean f31014b = true;

    static {
        try {
            f31013a = ((Boolean) Class.forName("dalvik.system.VMRuntime").getDeclaredMethod("is64Bit", null).invoke(Class.forName("dalvik.system.VMRuntime").getDeclaredMethod("getRuntime", null).invoke(null, null), null)).booleanValue();
        } catch (Exception unused) {
            f31013a = false;
        }
        f31014b = System.getProperty("java.vm.version").startsWith("2");
    }

    public static boolean a() {
        return f31013a;
    }

    public static boolean b() {
        return f31014b;
    }
}
