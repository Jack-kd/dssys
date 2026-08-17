package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.modelbiz.WXOpenBusinessView;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

/* loaded from: classes2.dex */
public class jq {

    /* renamed from: e, reason: collision with root package name */
    private static volatile jq f14682e;

    /* renamed from: a, reason: collision with root package name */
    private final Context f14683a;

    /* renamed from: b, reason: collision with root package name */
    private String f14684b;

    /* renamed from: c, reason: collision with root package name */
    private Boolean f14685c;

    /* renamed from: d, reason: collision with root package name */
    private volatile IWXAPI f14686d;

    private jq(Context context) {
        this.f14683a = context.getApplicationContext();
    }

    public static jq a(Context context) {
        if (f14682e == null) {
            synchronized (jq.class) {
                try {
                    if (f14682e == null) {
                        f14682e = new jq(context);
                    }
                } finally {
                }
            }
        }
        return f14682e;
    }

    public boolean b(Context context) {
        if (d()) {
            String strA = a();
            if (!TextUtils.isEmpty(strA)) {
                return a(strA).isWXAppInstalled();
            }
        }
        return al.c(context, "com.tencent.mm");
    }

    public String c() {
        if (!d()) {
            return "";
        }
        String strA = a();
        return !TextUtils.isEmpty(strA) ? String.valueOf(a(strA).getWXAppSupportAPI()) : "";
    }

    public boolean d() {
        if (this.f14685c == null) {
            this.f14685c = Boolean.valueOf(sl.a("com.tencent.mm.opensdk.openapi.IWXAPI"));
        }
        return this.f14685c.booleanValue();
    }

    public String b() {
        if (d()) {
            try {
                return String.valueOf(638067200);
            } catch (Exception unused) {
                return "";
            }
        }
        return "";
    }

    public String a() {
        ConfigResponseModel configResponseModelA;
        if (d()) {
            if (TextUtils.isEmpty(this.f14684b) && (configResponseModelA = ((C1135g) C1136h.a().b(this.f14683a)).a(false)) != null && configResponseModelA.getExtraConfigModel() != null) {
                String wxOpenApiKey = configResponseModelA.getExtraConfigModel().getWxOpenApiKey();
                if (!TextUtils.isEmpty(wxOpenApiKey)) {
                    this.f14684b = wxOpenApiKey;
                }
            }
            return this.f14684b;
        }
        return "";
    }

    public boolean b(String str) {
        if (d() && !TextUtils.isEmpty(str)) {
            String strA = a();
            if (!TextUtils.isEmpty(strA)) {
                IWXAPI iwxapiA = a(strA);
                WXOpenBusinessView.Req req = new WXOpenBusinessView.Req();
                req.businessType = "nativeOpenAdCanvas";
                req.extInfo = str;
                return iwxapiA.sendReq(req);
            }
        }
        return false;
    }

    private IWXAPI a(String str) {
        if (this.f14686d == null) {
            synchronized (jq.class) {
                try {
                    if (this.f14686d == null) {
                        this.f14686d = WXAPIFactory.createWXAPI(this.f14683a, str);
                    }
                } finally {
                }
            }
        }
        return this.f14686d;
    }

    public boolean a(String str, String str2, String str3) {
        if (d() && !TextUtils.isEmpty(str)) {
            String strA = a();
            if (!TextUtils.isEmpty(strA)) {
                IWXAPI iwxapiA = a(strA);
                WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
                req.userName = str;
                if (TextUtils.isEmpty(str2)) {
                    str2 = "";
                }
                req.path = str2;
                if (TextUtils.isEmpty(str3)) {
                    str3 = "";
                }
                req.extData = str3;
                return iwxapiA.sendReq(req);
            }
        }
        return false;
    }
}
