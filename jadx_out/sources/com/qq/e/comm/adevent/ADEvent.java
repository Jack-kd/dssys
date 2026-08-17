package com.qq.e.comm.adevent;

import com.qq.e.comm.util.GDTLogger;

/* loaded from: classes4.dex */
public class ADEvent {

    /* renamed from: a, reason: collision with root package name */
    private final int f35304a;

    /* renamed from: b, reason: collision with root package name */
    private final Object[] f35305b;

    public ADEvent(int i2, Object... objArr) {
        this.f35304a = i2;
        this.f35305b = objArr;
        if (i2 < 100) {
            a("EventId 错误" + i2);
        }
    }

    private void a(String str) {
        GDTLogger.e(str);
    }

    public <T> T getParam(int i2, Class<T> cls) {
        Object[] objArr;
        if (cls == null || (objArr = this.f35305b) == null || objArr.length <= i2) {
            return null;
        }
        T t2 = (T) objArr[i2];
        if (t2 != null) {
            if (cls.isInstance(t2)) {
                return t2;
            }
            return null;
        }
        GDTLogger.e("ADEvent 参数为空,type:" + this.f35304a);
        return null;
    }

    public int getType() {
        return this.f35304a;
    }

    public <T> T getParam(Class<T> cls) {
        return (T) getParam(0, cls);
    }
}
