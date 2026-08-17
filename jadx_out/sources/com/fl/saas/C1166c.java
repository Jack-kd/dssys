package com.fl.saas;

import com.fl.saas.adx.util.CommConstant;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.fl.saas.c, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1166c extends Y {

    /* renamed from: c, reason: collision with root package name */
    private static volatile C1166c f30342c;

    public static C1166c c() {
        if (f30342c == null) {
            synchronized (C1166c.class) {
                try {
                    if (f30342c == null) {
                        f30342c = new C1166c();
                    }
                } finally {
                }
            }
        }
        return f30342c;
    }

    @Override // com.fl.saas.Y
    public Map b() {
        HashMap map = new HashMap();
        map.put("apiVersion", CommConstant.API.ApiVersion);
        map.put("sdkVersion", CommConstant.SdkVersion.SDK_VERSION_CODE);
        return map;
    }
}
