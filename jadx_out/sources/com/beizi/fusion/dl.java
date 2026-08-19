package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.model.Manager;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;

/* loaded from: classes2.dex */
public abstract class dl {
    public static void a(boolean z2) {
        try {
            if (z2) {
                try {
                    t3.a(false);
                } catch (Throwable unused) {
                }
                BeiZis.setLimitPersonalAds(false);
                return;
            }
            try {
                t3.a(true);
            } catch (Throwable unused2) {
            }
            BeiZis.setLimitPersonalAds(true);
            if (q1.i().n() == null || !c()) {
                return;
            }
            if (RequestInfo.getInstance(q1.i().n()).getDevInfo() != null && !TextUtils.isEmpty(RequestInfo.getInstance(q1.i().n()).getDevInfo().getOaid())) {
                RequestInfo.getInstance(q1.i().n()).getDevInfo().setOaid("");
            }
            if (RequestInfo.getInstance(q1.i().n()).getDevInfo() == null || TextUtils.isEmpty(RequestInfo.getInstance(q1.i().n()).getDevInfo().getHonorOaid())) {
                return;
            }
            RequestInfo.getInstance(q1.i().n()).getDevInfo().setHonorOaid("");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean b() {
        int iA = a();
        boolean zIsLimitPersonalAds = BeiZis.isLimitPersonalAds();
        if (iA == 0 || iA == 2) {
            return zIsLimitPersonalAds;
        }
        return false;
    }

    public static boolean c() {
        int iA = a();
        return iA == 0 || iA == 2;
    }

    private static int a() {
        Context contextN = q1.i().n();
        if (contextN == null) {
            return 0;
        }
        if (!ResponseInfo.getInstance(contextN).isInit()) {
            ResponseInfo.getInstance(contextN).init();
        }
        Manager manager = ResponseInfo.getInstance(contextN).getManager();
        if (manager != null) {
            return manager.getPersonalRecommend();
        }
        return 0;
    }
}
