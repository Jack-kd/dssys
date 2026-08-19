package com.byazt.ksw;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@com.byazt.kj.hp(hp = {0, 1, 1035, 38})
/* loaded from: classes.dex */
public class j<T> {
    public final Class<?> hp;
    public final Class[] jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f22112l;

    public j(Class<?> cls, String str, Class... clsArr) {
        this.hp = cls;
        this.f22112l = str;
        this.jx = clsArr;
    }

    public boolean hp(T t2) {
        return hp(t2.getClass()) != null;
    }

    public Object j(T t2, Object... objArr) {
        try {
            return jx(t2, objArr);
        } catch (InvocationTargetException e2) {
            Throwable targetException = e2.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object jx(T t2, Object... objArr) throws NoSuchMethodException, SecurityException, InvocationTargetException {
        Method methodHp = hp(t2.getClass());
        if (methodHp != null) {
            try {
                return methodHp.invoke(t2, objArr);
            } catch (IllegalAccessException e2) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: ".concat(String.valueOf(methodHp)));
                assertionError.initCause(e2);
                throw assertionError;
            }
        }
        throw new AssertionError("Method " + this.f22112l + " not supported for object " + t2);
    }

    public Object l(T t2, Object... objArr) {
        try {
            return hp(t2, objArr);
        } catch (InvocationTargetException e2) {
            Throwable targetException = e2.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object hp(T t2, Object... objArr) throws NoSuchMethodException, SecurityException, InvocationTargetException {
        Method methodHp = hp(t2.getClass());
        if (methodHp == null) {
            return null;
        }
        try {
            return methodHp.invoke(t2, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    private Method hp(Class<?> cls) throws NoSuchMethodException, SecurityException {
        Class<?> cls2;
        String str = this.f22112l;
        if (str == null) {
            return null;
        }
        Method methodHp = hp(cls, str, this.jx);
        if (methodHp == null || (cls2 = this.hp) == null || cls2.isAssignableFrom(methodHp.getReturnType())) {
            return methodHp;
        }
        return null;
    }

    private static Method hp(Class<?> cls, String str, Class[] clsArr) throws NoSuchMethodException, SecurityException {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
                return method;
            } catch (NoSuchMethodException unused) {
                return method;
            }
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }
}
