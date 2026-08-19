package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.beizi.fusion.d7;
import com.beizi.fusion.model.RequestInfo;

/* loaded from: classes2.dex */
public abstract class jk {

    /* renamed from: a, reason: collision with root package name */
    static String f14672a = "OaidUtil";

    /* renamed from: b, reason: collision with root package name */
    private static String f14673b;

    /* renamed from: c, reason: collision with root package name */
    public static d7.b f14674c = new a();

    /* renamed from: d, reason: collision with root package name */
    private static boolean f14675d = true;

    public class a implements d7.b {
        @Override // com.beizi.fusion.d7.b
        public void a(String str) {
            Log.e(jk.f14672a, "code cn Oaid:" + str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String unused = jk.f14673b = str;
            Context contextN = q1.i().n();
            go.b(contextN, "__OAID__", jk.f14673b);
            go.b(contextN, "__CNOAID__", jk.f14673b);
            if (RequestInfo.getInstance(contextN).getDevInfo() != null) {
                if (dl.c() && BeiZis.isLimitPersonalAds()) {
                    return;
                }
                RequestInfo.getInstance(contextN).getDevInfo().setOaid(jk.f14673b);
                RequestInfo.getInstance(contextN).getDevInfo().setCnOaid(jk.f14673b);
            }
        }
    }
}
