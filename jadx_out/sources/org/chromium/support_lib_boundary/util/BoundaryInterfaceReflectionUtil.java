package org.chromium.support_lib_boundary.util;

import android.os.Build;
import android.util.LruCache;
import android.util.Pair;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Consumer;
import org.jspecify.annotations.NullMarked;

@NullMarked
/* loaded from: classes5.dex */
public class BoundaryInterfaceReflectionUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static Consumer<Boolean> sCacheGetResultLogger;
    private static LruCache<Pair<Method, ClassLoader>, Method> sMethodCache;

    public static class InvocationHandlerWithDelegateGetter implements InvocationHandler {
        private final Object mDelegate;

        public InvocationHandlerWithDelegateGetter(Object obj) {
            this.mDelegate = obj;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            return obj instanceof InvocationHandlerWithDelegateGetter ? this.mDelegate.equals(((InvocationHandlerWithDelegateGetter) obj).mDelegate) : this.mDelegate.equals(obj);
        }

        public Object getDelegate() {
            return this.mDelegate;
        }

        public int hashCode() {
            return this.mDelegate.hashCode();
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                return BoundaryInterfaceReflectionUtil.dupeMethod(method, this.mDelegate.getClass().getClassLoader()).invoke(this.mDelegate, objArr);
            } catch (InvocationTargetException e2) {
                throw e2.getTargetException();
            } catch (ReflectiveOperationException e3) {
                throw new RuntimeException("Reflection failed for method " + method, e3);
            }
        }
    }

    @Contract("_, !null -> !null")
    public static <T> T castToSuppLibClass(Class<T> cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(BoundaryInterfaceReflectionUtil.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static boolean containsFeature(Collection<String> collection, String str) {
        if (collection.contains(str)) {
            return true;
        }
        if (!isDebuggable()) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(Features.DEV_SUFFIX);
        return collection.contains(sb.toString());
    }

    @Contract("!null -> !null")
    public static InvocationHandler createInvocationHandlerFor(Object obj) {
        if (obj == null) {
            return null;
        }
        return new InvocationHandlerWithDelegateGetter(obj);
    }

    @Contract("!null -> !null")
    public static InvocationHandler[] createInvocationHandlersForArray(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        InvocationHandler[] invocationHandlerArr = new InvocationHandler[length];
        for (int i2 = 0; i2 < length; i2++) {
            invocationHandlerArr[i2] = createInvocationHandlerFor(objArr[i2]);
        }
        return invocationHandlerArr;
    }

    public static Method dupeMethod(Method method, ClassLoader classLoader) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        LruCache<Pair<Method, ClassLoader>, Method> lruCache = sMethodCache;
        if (lruCache != null) {
            Method method2 = lruCache.get(new Pair<>(method, classLoader));
            Consumer<Boolean> consumer = sCacheGetResultLogger;
            if (consumer != null) {
                consumer.accept(Boolean.valueOf(method2 != null));
            }
            if (method2 != null) {
                return method2;
            }
        }
        Method declaredMethod = Class.forName(method.getDeclaringClass().getName(), true, classLoader).getDeclaredMethod(method.getName(), method.getParameterTypes());
        LruCache<Pair<Method, ClassLoader>, Method> lruCache2 = sMethodCache;
        if (lruCache2 != null) {
            lruCache2.put(new Pair<>(method, classLoader), declaredMethod);
        }
        return declaredMethod;
    }

    @Contract("!null -> !null")
    public static Object getDelegateFromInvocationHandler(InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return ((InvocationHandlerWithDelegateGetter) invocationHandler).getDelegate();
    }

    public static boolean instanceOfInOwnClassLoader(Object obj, String str) {
        try {
            return Class.forName(str, false, obj.getClass().getClassLoader()).isInstance(obj);
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private static boolean isDebuggable() {
        String str = Build.TYPE;
        return "eng".equals(str) || "userdebug".equals(str);
    }

    public static void setMethodCache(LruCache<Pair<Method, ClassLoader>, Method> lruCache, Consumer<Boolean> consumer) {
        sMethodCache = lruCache;
        sCacheGetResultLogger = consumer;
    }

    public static boolean containsFeature(String[] strArr, String str) {
        return containsFeature(Arrays.asList(strArr), str);
    }
}
