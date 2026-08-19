package com.ubix.ssp.ad.e.a0.y;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.C;
import com.ubix.ssp.ad.e.a0.h;
import com.ubix.ssp.ad.e.a0.n;
import com.ubix.ssp.ad.e.a0.y.d.d;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private String f46492a = "ZEdsMGJHVT0=";

    /* renamed from: b, reason: collision with root package name */
    private String f46493b = "WVdSa1JteGhaM009";

    /* renamed from: c, reason: collision with root package name */
    private String f46494c = "YzNSaGNuUkJZM1JwZG1sMGFXVno=";

    /* renamed from: d, reason: collision with root package name */
    private String f46495d = "WTNKbFlYUmxRMmh2YjNObGNnPT0=";

    /* renamed from: e, reason: collision with root package name */
    private String f46496e = "YzNSaGNuUkJZM1JwZG1sMGVRPT0=";

    /* renamed from: f, reason: collision with root package name */
    private String f46497f = "b09207f5c299c42708e1badb72c04025";

    /* renamed from: g, reason: collision with root package name */
    private String f46498g = "ff5e66b76340c5636aa40e7c6a46628f";

    /* renamed from: h, reason: collision with root package name */
    private String f46499h = "9b6bf0057c19bd94df69372d48ec7149";

    /* renamed from: i, reason: collision with root package name */
    private String f46500i = "c892ba238c98835d4d53a3faed43ee52";

    /* renamed from: j, reason: collision with root package name */
    private String f46501j = "b2f39f17253fa5e90a05d637249c53e1";

    /* renamed from: k, reason: collision with root package name */
    private String f46502k = "c1aafc7e23f24ba11aae492f5caa2d97";

    private int a() {
        try {
            String str = (String) Class.forName(a("WVc1a2NtOXBaQzV2Y3k1Q2RXbHNaQT09")).getField(a("UWxKQlRrUT0=")).get(null);
            if (TextUtils.isEmpty(str) || this.f46497f.equals(h.a(str.toLowerCase())) || this.f46500i.equals(h.a(str.toLowerCase())) || this.f46502k.equals(h.a(str.toLowerCase())) || this.f46501j.equals(h.a(str.toLowerCase()))) {
                return 0;
            }
            if (!this.f46498g.equals(h.a(str.toLowerCase()))) {
                if (!this.f46499h.equals(h.a(str.toLowerCase()))) {
                    return 0;
                }
            }
            return 1;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private int b() {
        return a();
    }

    private String a(String str) {
        return new String(n.a().a(n.a().a(str)));
    }

    private boolean a(Context context, Intent intent) throws IllegalAccessException, NoSuchMethodException, SecurityException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException, NegativeArraySizeException {
        Integer numValueOf = Integer.valueOf(C.ENCODING_PCM_MU_LAW);
        if (context != null && intent != null) {
            int iB = b();
            Class cls = Integer.TYPE;
            if (iB != 0) {
                if (iB != 1) {
                    return false;
                }
                try {
                    Method method = Intent.class.getMethod(a(this.f46493b), cls);
                    method.invoke(intent, 268468224);
                    if (context instanceof Application) {
                        method.invoke(intent, numValueOf);
                    }
                    Method method2 = Context.class.getMethod(a(this.f46494c), Intent[].class);
                    Object objNewInstance = Array.newInstance((Class<?>) Intent.class, 1);
                    Array.set(objNewInstance, 0, intent);
                    StackTraceElement[] stackTrace = new Throwable().getStackTrace();
                    d.e().a(true);
                    d.e().a(stackTrace[0].getClassName() + i.f2495E + stackTrace[0].getMethodName());
                    method2.invoke(context, objNewInstance);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
            try {
                Intent intent2 = (Intent) Intent.class.getMethod(a(this.f46495d), Intent.class, CharSequence.class).invoke(null, intent, a(this.f46492a));
                Method method3 = Intent.class.getMethod(a(this.f46493b), cls);
                method3.invoke(intent2, 268468224);
                if (context instanceof Application) {
                    method3.invoke(intent2, numValueOf);
                }
                Method method4 = Context.class.getMethod(a(this.f46496e), Intent.class);
                StackTraceElement[] stackTrace2 = new Throwable().getStackTrace();
                d.e().a(true);
                d.e().a(stackTrace2[0].getClassName() + i.f2495E + stackTrace2[0].getMethodName());
                method4.invoke(context, intent2);
                return true;
            } catch (Exception unused2) {
            }
        }
        return false;
    }

    public boolean a(Context context, String str, boolean z2) {
        if (!z2) {
            return false;
        }
        try {
            return a(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Throwable unused) {
            return false;
        }
    }
}
