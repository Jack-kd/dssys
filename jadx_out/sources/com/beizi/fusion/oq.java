package com.beizi.fusion;

import android.content.Context;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class oq {

    /* renamed from: a, reason: collision with root package name */
    private Context f15478a;

    /* renamed from: b, reason: collision with root package name */
    private Class f15479b;

    /* renamed from: c, reason: collision with root package name */
    private Object f15480c;

    /* renamed from: d, reason: collision with root package name */
    private Method f15481d;

    public oq(Context context) throws ClassNotFoundException {
        this.f15478a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f15479b = cls;
            this.f15480c = cls.newInstance();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            this.f15481d = this.f15479b.getMethod("getOAID", Context.class);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private String a(Context context, Method method) {
        Object obj = this.f15480c;
        if (obj != null && method != null) {
            try {
                return (String) method.invoke(obj, context);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public String a() {
        return a(this.f15478a, this.f15481d);
    }
}
