package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class cm {

    /* renamed from: b, reason: collision with root package name */
    public static final String f11333b = "404";

    /* renamed from: c, reason: collision with root package name */
    public static final int f11334c = 843;

    /* renamed from: d, reason: collision with root package name */
    protected final bv f11342d = bv.a();

    /* renamed from: h, reason: collision with root package name */
    private Context f11343h;

    /* renamed from: a, reason: collision with root package name */
    public static final String f11332a = z.f11738b;

    /* renamed from: g, reason: collision with root package name */
    private static cm f11337g = new cm();

    /* renamed from: e, reason: collision with root package name */
    public static volatile String f11335e = "";

    /* renamed from: f, reason: collision with root package name */
    public static volatile String f11336f = "";

    /* renamed from: i, reason: collision with root package name */
    private static AtomicBoolean f11338i = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    private static String f11339j = "";

    /* renamed from: k, reason: collision with root package name */
    private static AtomicBoolean f11340k = new AtomicBoolean(false);

    /* renamed from: l, reason: collision with root package name */
    private static String f11341l = "";

    private cm() {
    }

    public static cm a() {
        return f11337g;
    }

    private String d() {
        String str = cn.f11348e;
        if ("0.0".equals(str)) {
            try {
                double dB = cb.b(cb.a(this.f11343h));
                if (dB > 0.0d) {
                    return String.valueOf(dB);
                }
            } catch (Throwable th) {
                this.f11342d.a(th);
            }
        }
        return str;
    }

    public String b() {
        try {
            if (f11338i.compareAndSet(false, true)) {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                String str = (String) cls.getMethod("getOsBrand", null).invoke(cls, null);
                if (!TextUtils.isEmpty(str)) {
                    f11339j = str;
                }
            }
            return f11339j;
        } catch (Throwable th) {
            this.f11342d.a(th);
            return f11339j;
        }
    }

    public String c() {
        try {
            if (f11340k.get()) {
                return f11341l;
            }
            if (!f11338i.get()) {
                b();
            }
            if (f11339j.equalsIgnoreCase("")) {
                f11340k.set(true);
                return "";
            }
            if (f11340k.compareAndSet(false, true)) {
                String strA = a("hw_sc.build.platform.version", "");
                if (!TextUtils.isEmpty(strA)) {
                    f11341l = strA;
                }
            }
            return f11341l;
        } catch (Throwable th) {
            this.f11342d.a(th);
            return f11341l;
        }
    }

    public void a(Context context) {
        if (this.f11343h == null) {
            this.f11343h = context;
        }
    }

    public void a(String str, String str2, String str3) {
        try {
            HashMap<String, String> map = new HashMap<>();
            map.put("ad", str3);
            map.put("stacktrace", str2);
            a(str, f11333b, map);
        } catch (Exception e2) {
            this.f11342d.a(e2);
        }
    }

    private void a(String str, String str2, HashMap<String, String> map) {
        Uri.Builder builder = new Uri.Builder();
        try {
            Uri.Builder builderAppendQueryParameter = builder.appendQueryParameter("type", str2).appendQueryParameter("subtype", String.valueOf(f11334c)).appendQueryParameter(com.umeng.analytics.pro.bv.bc, "9.450").appendQueryParameter("appsid", a("appsid", new Object[0])).appendQueryParameter("v", "android_" + d() + "_" + cn.f11349f);
            Context context = this.f11343h;
            builderAppendQueryParameter.appendQueryParameter("pack", context != null ? context.getPackageName() : "").appendQueryParameter("sn", a("encodedSn", this.f11343h)).appendQueryParameter("cuid", a("encodedCUID", this.f11343h)).appendQueryParameter(com.umeng.analytics.pro.bv.f48923x, "android").appendQueryParameter("osv", bn.a(this.f11343h).c()).appendQueryParameter("romn", b()).appendQueryParameter("romv", c()).appendQueryParameter("bdr", "" + bn.a(this.f11343h).a()).appendQueryParameter("brd", "" + a(bn.a(this.f11343h).e()));
            if (str != null && str.length() > 128) {
                int iIndexOf = str.indexOf(10);
                if (iIndexOf <= 0) {
                    iIndexOf = 127;
                }
                str = str.substring(0, iIndexOf);
            }
            builder.appendQueryParameter(MediationConstant.KEY_REASON, str);
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    builder.appendQueryParameter(entry.getKey(), entry.getValue());
                }
            }
        } catch (Throwable th) {
            this.f11342d.a(th);
        }
        an anVar = new an(f11332a, "POST");
        anVar.a(builder);
        anVar.b();
    }

    private String a(String str, Object... objArr) {
        IXAdContainerFactory iXAdContainerFactoryC;
        aa aaVarA = aa.a();
        if (aaVarA != null && (iXAdContainerFactoryC = aaVarA.c()) != null) {
            Object remoteParam = iXAdContainerFactoryC.getRemoteParam(str, objArr);
            if (remoteParam instanceof String) {
                return (String) remoteParam;
            }
            return "";
        }
        return "";
    }

    private String a(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    private String a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str3 = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
            return TextUtils.isEmpty(str3) ? str2 : str3;
        } catch (Throwable th) {
            this.f11342d.a(th);
            return str2;
        }
    }
}
