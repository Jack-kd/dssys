package com.beizi.fusion;

import android.content.Context;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class pq {

    /* renamed from: a, reason: collision with root package name */
    private Context f15664a;

    /* renamed from: b, reason: collision with root package name */
    private Class f15665b;

    /* renamed from: c, reason: collision with root package name */
    private Object f15666c;

    /* renamed from: d, reason: collision with root package name */
    private Method f15667d;

    public pq(Context context) throws ClassNotFoundException {
        this.f15664a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f15665b = cls;
            this.f15666c = cls.newInstance();
        } catch (Exception e2) {
            rm.a(e2);
        }
        try {
            this.f15667d = this.f15665b.getMethod("getOAID", Context.class);
        } catch (Exception e3) {
            rm.a(e3);
        }
    }

    private String a(Context context, Method method) {
        Object obj = this.f15666c;
        if (obj != null && method != null) {
            try {
                return (String) method.invoke(obj, context);
            } catch (Exception e2) {
                rm.a(e2);
            }
        }
        return null;
    }

    public String a() {
        return a(this.f15664a, this.f15667d);
    }
}
