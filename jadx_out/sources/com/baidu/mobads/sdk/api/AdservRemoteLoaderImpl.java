package com.baidu.mobads.sdk.api;

import com.baidu.mobads.sdk.internal.an;
import com.baidu.mobads.sdk.internal.c;
import com.baidu.mobads.sdk.internal.f;
import com.baidu.mobads.sdk.internal.u;
import dalvik.system.DexClassLoader;

@Route(path = c.a.f11276a)
/* loaded from: classes2.dex */
public class AdservRemoteLoaderImpl implements u {
    @Override // com.baidu.mobads.sdk.internal.u
    public void startLoadRemotePhp(double d2, an.b bVar) {
        f.a().a(d2, bVar);
    }

    @Override // com.baidu.mobads.sdk.internal.u
    public DexClassLoader getClassLoaderFromJar(String str, String str2, String str3, ClassLoader classLoader) {
        return f.a().a(str, str2, str3, classLoader);
    }
}
