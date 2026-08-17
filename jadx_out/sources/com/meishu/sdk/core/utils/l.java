package com.meishu.sdk.core.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.oaid.honor.a;

/* loaded from: classes4.dex */
public class l implements com.meishu.sdk.core.oaid.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f31923a;

    public class a implements a.c {
        public a(l lVar) {
        }

        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (TextUtils.isEmpty(j.f31914a)) {
                j.f31914a = str;
            }
            AdSdk.getSharedPreferences().edit().putString("honor_oaid", str).apply();
            r.a().b("honor_oaid", str);
        }
    }

    public l(Context context) {
        this.f31923a = context;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        j.f31914a = str;
        try {
            String strC = g1.c(str);
            AdSdk.getSharedPreferences().edit().putString("oaid_e", strC).apply();
            r.a().b("oaid_e", strC);
        } catch (Exception e2) {
            e2.printStackTrace();
            AdSdk.getSharedPreferences().edit().putString("oaid", str).apply();
            r.a().b("oaid", str);
        }
    }

    public void a(Exception exc) {
        try {
            LogUtil.d("DeviceUtil", exc.getMessage());
            if (Build.MANUFACTURER.equalsIgnoreCase("honor")) {
                com.meishu.sdk.core.oaid.honor.a aVar = new com.meishu.sdk.core.oaid.honor.a();
                aVar.f31682a = new a(this);
                aVar.a(this.f31923a);
                return;
            }
            Context context = this.f31923a;
            if (Build.VERSION.SDK_INT < 28) {
                return;
            }
            try {
                new MiitHelper().prepare(context, new k());
            } catch (ClassNotFoundException unused) {
            } catch (Throwable th) {
                AdSdk.setOaid_errno(ErrorCodeUtil.OAID_INIT_ERROR);
                LogUtil.e("DeviceUtil", "oaid sdk init error");
                th.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
