package com.meishu.sdk.core;

import com.meishu.sdk.platform.PlatformFactory;
import java.util.Map;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static Map<String, e> f31483a = PlatformFactory.createAll();

    public static e a(String str) {
        return f31483a.get(str);
    }
}
