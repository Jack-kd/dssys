package com.smartdigimkt.dlpd;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c5.j;
import com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity;
import com.smartdigimkt.j.i;
import com.smartdigimkt.j.n;
import com.smartdigimkt.j.u;
import com.smartdigimkt.j.x;
import com.smartdigimkt.k.g;
import com.smartdigimkt.k.h;
import com.smartdigimkt.k.o;
import com.smartdigimkt.k.p;
import com.smartdigimkt.k.r;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.n.b;
import com.smartdigimkt.sdk.api.IDlHandler;
import com.smartdigimkt.sdk.api.IExHandlerBaseAd;
import com.smartdigimkt.sdk.api.SDMEventInterface;
import com.smartdigimkt.sdk.core.SDKContext;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.File;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class DlHandler implements IDlHandler {
    private ExHandlerBaseAd exHandlerBaseAd;

    private u getApkDownloadManager() {
        return u.a(SDKContext.getInstance().d());
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public int checkDataFetchType(c cVar, a aVar) {
        u apkDownloadManager = getApkDownloadManager();
        apkDownloadManager.getClass();
        String strA = j.a(cVar);
        synchronized (apkDownloadManager.f40821b) {
            for (int i2 = 0; i2 < apkDownloadManager.f40821b.size(); i2++) {
                try {
                    r rVar = (r) apkDownloadManager.f40821b.get(i2);
                    if (rVar != null && rVar.f41192o.equals(strA)) {
                        return 0;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ConcurrentHashMap concurrentHashMap = apkDownloadManager.f40822c;
            if (concurrentHashMap != null && concurrentHashMap.containsKey(strA)) {
                return 0;
            }
            ConcurrentHashMap concurrentHashMap2 = apkDownloadManager.f40823d;
            if (concurrentHashMap2 != null && concurrentHashMap2.containsKey(strA)) {
                return 6;
            }
            ConcurrentHashMap concurrentHashMap3 = apkDownloadManager.f40825f;
            if ((concurrentHashMap3 == null || !concurrentHashMap3.containsKey(strA)) && !apkDownloadManager.a(strA)) {
                return b.b(apkDownloadManager.f40820a, cVar.f41822m) ? 5 : 1;
            }
            return 4;
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void cleanExpiredInfo() {
        u apkDownloadManager = getApkDownloadManager();
        o oVar = apkDownloadManager.f40834o;
        if (oVar != null) {
            oVar.f41163c.b(new g(oVar, null));
            o oVar2 = apkDownloadManager.f40834o;
            oVar2.getClass();
            oVar2.f41163c.a(new h(oVar2), (new Random().nextInt(UMErrorCode.E_UM_BE_EMPTY_URL_PATH) + 60) * 1000, 13);
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public SDMEventInterface createDataFetchListener(SDMEventInterface sDMEventInterface) {
        return new x(sDMEventInterface);
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void fillDataFetchStatus(Context context, c cVar, a aVar) {
        if (TextUtils.equals(String.valueOf(aVar.f41628b), "0") && !aVar.f41647u) {
            if (!(cVar instanceof com.smartdigimkt.m3.b) || TextUtils.isEmpty(((com.smartdigimkt.m3.b) cVar).f41777v0)) {
                String strA = j.a(cVar);
                String str = cVar.f41822m;
                if (!TextUtils.isEmpty(str) && b.b(context, str)) {
                    cVar.f41787H = 2;
                } else if (new File(com.smartdigimkt.n.c.a(strA)).exists()) {
                    cVar.f41787H = 5;
                } else {
                    e.a().b(new com.smartdigimkt.n.a(context, strA, cVar));
                }
            }
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void fillRequestDataForDl(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("apk_plugin", 1);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public IExHandlerBaseAd getBaseAdHandler() {
        if (this.exHandlerBaseAd == null) {
            this.exHandlerBaseAd = new ExHandlerBaseAd(getApkDownloadManager());
        }
        return this.exHandlerBaseAd;
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void handleOfferClick(Context context, a aVar, c cVar, String str, String str2, Runnable runnable, com.smartdigimkt.s3.b bVar) {
        u uVarA = u.a(context);
        uVarA.getClass();
        if (b.b(context, cVar.f41822m)) {
            b.c(context, cVar.f41822m);
            return;
        }
        o oVar = uVarA.f40834o;
        if (oVar != null) {
            oVar.f41163c.b(new g(oVar, new n(uVarA, context, aVar, cVar, str, str2, runnable, bVar)));
        }
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void onAppForegroundStatusChanged(boolean z2) {
        Handler handler;
        u apkDownloadManager = getApkDownloadManager();
        ConcurrentHashMap concurrentHashMap = apkDownloadManager.f40827h;
        if (apkDownloadManager.f40834o == null || concurrentHashMap == null || concurrentHashMap.size() <= 0) {
            return;
        }
        if (z2) {
            e.a().c(new i(apkDownloadManager));
            return;
        }
        p pVar = apkDownloadManager.f40836q;
        if (pVar == null || (handler = pVar.f41167c) == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void onApplicationBoot() {
        getApkDownloadManager().getClass();
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void openDataConfirmDialog(Context context, c cVar, a aVar, com.smartdigimkt.s3.a aVar2) {
        c cVar2 = ApkConfirmDialogActivity.f39914c;
        e.a().c(new com.smartdigimkt.i.b(aVar2, cVar, context));
    }

    @Override // com.smartdigimkt.sdk.api.IDlHandler
    public void registerMarketReceiver(c cVar) {
        u uVarA = u.a(SDKContext.getInstance().d());
        uVarA.getClass();
        if (cVar == null || TextUtils.isEmpty(cVar.f41822m)) {
            return;
        }
        e.a().a(new com.smartdigimkt.j.j(uVarA, cVar));
    }
}
