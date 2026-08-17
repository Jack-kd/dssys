package com.baidu.mobads.sdk.internal;

import dalvik.system.DexClassLoader;

/* loaded from: classes2.dex */
public class bq extends DexClassLoader {
    public bq(String str, String str2, String str3, ClassLoader classLoader) {
        super(str, str2, str3, classLoader);
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str, boolean z2) throws ClassNotFoundException {
        Class<?> clsFindLoadedClass = findLoadedClass(str);
        if (clsFindLoadedClass != null) {
            return clsFindLoadedClass;
        }
        try {
            Class<?> clsFindClass = findClass(str);
            if (clsFindClass != null) {
                return clsFindClass;
            }
        } catch (ClassNotFoundException e2) {
            az.e("XAdDexClassLoader", "loadClass failed: " + e2.getMessage());
        }
        return super.loadClass(str, z2);
    }
}
