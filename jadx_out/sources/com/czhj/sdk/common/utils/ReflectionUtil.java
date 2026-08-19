package com.czhj.sdk.common.utils;

import com.czhj.sdk.common.utils.Preconditions;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ReflectionUtil {

    public static class MethodBuilder {

        /* renamed from: a, reason: collision with root package name */
        private final Object f29505a;

        /* renamed from: b, reason: collision with root package name */
        private final String f29506b;

        /* renamed from: c, reason: collision with root package name */
        private final Class<?> f29507c;

        /* renamed from: d, reason: collision with root package name */
        private final List<Class<?>> f29508d;

        /* renamed from: e, reason: collision with root package name */
        private final List<Object> f29509e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f29510f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f29511g;

        public MethodBuilder(Class<?> cls, String str) {
            Preconditions.NoThrow.checkNotNull(str);
            this.f29511g = true;
            this.f29505a = null;
            this.f29506b = str;
            this.f29508d = new ArrayList();
            this.f29509e = new ArrayList();
            this.f29507c = cls;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t2) {
            Preconditions.NoThrow.checkNotNull(cls);
            this.f29508d.add(cls);
            this.f29509e.add(t2);
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = ReflectionUtil.getDeclaredMethodWithTraversal(this.f29507c, this.f29506b, (Class[]) this.f29508d.toArray(new Class[this.f29508d.size()]));
            if (this.f29510f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            return declaredMethodWithTraversal.invoke(this.f29511g ? null : this.f29505a, this.f29509e.toArray());
        }

        public MethodBuilder(Object obj, String str) {
            Preconditions.NoThrow.checkNotNull(str);
            this.f29505a = obj;
            this.f29506b = str;
            this.f29508d = new ArrayList();
            this.f29509e = new ArrayList();
            this.f29507c = obj == null ? null : obj.getClass();
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
        Preconditions.NoThrow.checkNotNull(str);
        Preconditions.NoThrow.checkNotNull(clsArr);
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (Throwable unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static List<Method> getMethodWithTraversal(Class<?> cls) {
        Preconditions.NoThrow.checkNotNull(cls);
        try {
            return Arrays.asList(cls.getMethods());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Map<String, String> getPrivateFields(Class<?> cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        HashMap map = new HashMap(declaredFields.length);
        for (Field field : declaredFields) {
            map.put(field.getName(), field.getType().getName());
        }
        return map;
    }
}
