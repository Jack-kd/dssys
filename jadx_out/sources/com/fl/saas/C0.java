package com.fl.saas;

import java.lang.annotation.Annotation;

/* loaded from: classes3.dex */
public abstract class C0 {
    public static Annotation a(Class cls, Class cls2) {
        Annotation annotation = cls2.getAnnotation(cls);
        if (annotation != null) {
            return annotation;
        }
        Class superclass = cls2.getSuperclass();
        if (a(superclass)) {
            return null;
        }
        return a(cls, superclass);
    }

    private static boolean a(Class cls) {
        if (cls == null) {
            return true;
        }
        String name = cls.getName();
        return (name.startsWith("com.fl.") || name.startsWith("com.ms.") || name.startsWith("com.hm.") || name.startsWith("com.sm.") || name.startsWith("com.jinbeig.wkad.")) ? false : true;
    }
}
