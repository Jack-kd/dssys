package com.baidu.mobads.sdk.internal;

import android.content.Context;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.baidu.mobads.sdk.api.MobadsPermissionSettings;
import com.baidu.mobads.sdk.internal.cb;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class bp {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11210a = "ContainerFactoryBuilder";

    /* renamed from: e, reason: collision with root package name */
    private static IXAdContainerFactory f11211e;

    /* renamed from: c, reason: collision with root package name */
    private Context f11213c;

    /* renamed from: d, reason: collision with root package name */
    private Class<?> f11214d;

    /* renamed from: b, reason: collision with root package name */
    public double f11212b = 0.1d;

    /* renamed from: f, reason: collision with root package name */
    private bv f11215f = bv.a();

    public bp(Class<?> cls, Context context) {
        this.f11214d = null;
        this.f11214d = cls;
        this.f11213c = context;
    }

    public IXAdContainerFactory a() throws cb.a {
        if (f11211e == null) {
            try {
                f11211e = (IXAdContainerFactory) this.f11214d.getDeclaredConstructor(Context.class).newInstance(this.f11213c);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.umeng.analytics.pro.bv.bc, "9.450");
                f11211e.initConfig(jSONObject);
                this.f11212b = f11211e.getRemoteVersion();
                f11211e.onTaskDistribute(bd.f11147a, MobadsPermissionSettings.getPermissionInfo());
                f11211e.initCommonModuleObj(t.a());
            } catch (Throwable th) {
                this.f11215f.b(f11210a, th.getMessage());
                throw new cb.a("ContainerFactory() failed, possibly API incompatible: " + th.getMessage());
            }
        }
        return f11211e;
    }

    public void b() {
        f11211e = null;
    }
}
