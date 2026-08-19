package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.RouteInfo;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class as extends RouteInfo {

    /* renamed from: a, reason: collision with root package name */
    private y f11047a;

    public as(String str) {
        setPath(str);
        b();
    }

    private void b() {
        RouteInfo routeInfo;
        try {
            Method declaredMethod = Class.forName(z.at + getPath()).getDeclaredMethod("getRoutesMap", null);
            declaredMethod.setAccessible(true);
            HashMap map = (HashMap) declaredMethod.invoke(null, null);
            if (map == null || map.size() <= 0 || (routeInfo = (RouteInfo) map.get(getPath())) == null) {
                return;
            }
            this.f11047a = (y) routeInfo.getDestination().getConstructor(null).newInstance(null);
        } catch (Throwable unused) {
        }
    }

    public Object a() {
        return this.f11047a;
    }
}
