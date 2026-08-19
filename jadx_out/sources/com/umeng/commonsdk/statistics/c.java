package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.dh;
import com.umeng.analytics.pro.dw;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.idtracking.f;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.internal.d;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.proto.Response;
import java.io.File;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static final int f50231b = 1;

    /* renamed from: c, reason: collision with root package name */
    private static final int f50232c = 2;

    /* renamed from: d, reason: collision with root package name */
    private static final int f50233d = 3;

    /* renamed from: o, reason: collision with root package name */
    private static final String f50234o = "thtstart";

    /* renamed from: p, reason: collision with root package name */
    private static final String f50235p = "gkvc";

    /* renamed from: q, reason: collision with root package name */
    private static final String f50236q = "ekvc";

    /* renamed from: a, reason: collision with root package name */
    String f50237a;

    /* renamed from: f, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.internal.c f50239f;

    /* renamed from: g, reason: collision with root package name */
    private ImprintHandler f50240g;

    /* renamed from: h, reason: collision with root package name */
    private f f50241h;

    /* renamed from: i, reason: collision with root package name */
    private ImprintHandler.a f50242i;

    /* renamed from: k, reason: collision with root package name */
    private Defcon f50244k;

    /* renamed from: l, reason: collision with root package name */
    private long f50245l;

    /* renamed from: m, reason: collision with root package name */
    private int f50246m;

    /* renamed from: n, reason: collision with root package name */
    private int f50247n;

    /* renamed from: r, reason: collision with root package name */
    private Context f50248r;

    /* renamed from: e, reason: collision with root package name */
    private final int f50238e = 1;

    /* renamed from: j, reason: collision with root package name */
    private ABTest f50243j = null;

    public c(Context context) {
        this.f50241h = null;
        this.f50242i = null;
        this.f50244k = null;
        this.f50245l = 0L;
        this.f50246m = 0;
        this.f50247n = 0;
        this.f50237a = null;
        this.f50248r = context;
        this.f50242i = ImprintHandler.getImprintService(context).c();
        this.f50244k = Defcon.getService(this.f50248r);
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f50248r);
        this.f50245l = sharedPreferences.getLong(f50234o, 0L);
        this.f50246m = sharedPreferences.getInt(f50235p, 0);
        this.f50247n = sharedPreferences.getInt(f50236q, 0);
        this.f50237a = UMEnvelopeBuild.imprintProperty(this.f50248r, "track_list", null);
        ImprintHandler imprintService = ImprintHandler.getImprintService(this.f50248r);
        this.f50240g = imprintService;
        imprintService.a(new d() { // from class: com.umeng.commonsdk.statistics.c.1
            @Override // com.umeng.commonsdk.statistics.internal.d
            public void onImprintChanged(ImprintHandler.a aVar) {
                c.this.f50244k.onImprintChanged(aVar);
                c cVar = c.this;
                cVar.f50237a = UMEnvelopeBuild.imprintProperty(cVar.f50248r, "track_list", null);
            }
        });
        if (!UMConfigure.needSendZcfgEnv(this.f50248r)) {
            this.f50241h = f.a(this.f50248r);
        }
        com.umeng.commonsdk.statistics.internal.c cVar = new com.umeng.commonsdk.statistics.internal.c(this.f50248r);
        this.f50239f = cVar;
        cVar.a(StatTracer.getInstance(this.f50248r));
    }

    public boolean a(File file) {
        if (file == null) {
            return false;
        }
        try {
            byte[] byteArray = UMFrUtils.toByteArray(file.getPath());
            if (byteArray == null) {
                return false;
            }
            String name = file.getName();
            if (TextUtils.isEmpty(name)) {
                return false;
            }
            com.umeng.commonsdk.statistics.internal.a aVarA = com.umeng.commonsdk.statistics.internal.a.a(this.f50248r);
            aVarA.e(name);
            boolean zA = aVarA.a(name);
            boolean zB = aVarA.b(name);
            boolean zC = aVarA.c(name);
            boolean zD = aVarA.d(name);
            String strD = com.umeng.commonsdk.stateless.d.d(name);
            byte[] bArrA = this.f50239f.a(byteArray, zA, zC, !TextUtils.isEmpty(strD) ? com.umeng.commonsdk.stateless.d.c(strD) : zD ? UMServerURL.SILENT_HEART_BEAT : zC ? UMServerURL.ZCFG_PATH : UMServerURL.PATH_ANALYTICS);
            int iA = bArrA == null ? 1 : a(bArrA);
            if (UMConfigure.isDebugLog()) {
                if (zD && iA == 2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "heart beat req: succeed.");
                } else if (zC && iA == 2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Zero req: succeed.");
                } else if (zB && iA == 2) {
                    MLog.d("本次启动数据: 发送成功!");
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Send instant data: succeed.");
                } else if (zA && iA == 2) {
                    MLog.d("普通统计数据: 发送成功!");
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Send analytics data: succeed.");
                } else if (iA == 2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Inner req: succeed.");
                }
            }
            if (iA == 2) {
                f fVar = this.f50241h;
                if (fVar != null) {
                    fVar.e();
                }
                StatTracer.getInstance(this.f50248r).saveSate();
                if (zD) {
                    String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.f50248r, "iss", "");
                    if (!TextUtils.isEmpty(strImprintProperty)) {
                        if ("1".equalsIgnoreCase(strImprintProperty)) {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 更新静默心跳最后一次成功请求时间.");
                            com.umeng.commonsdk.utils.c.a(this.f50248r, System.currentTimeMillis());
                        } else if ("0".equalsIgnoreCase(strImprintProperty)) {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 静默模式 -> 正常模式。重置 last req time");
                            com.umeng.commonsdk.utils.c.a(this.f50248r, 0L);
                            com.umeng.commonsdk.utils.c.d(this.f50248r);
                        }
                    }
                }
            } else if (iA == 3) {
                StatTracer.getInstance(this.f50248r).saveSate();
                if (zC) {
                    FieldManager.a().a(this.f50248r);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 零号报文应答内容报错!!! ，特殊处理!，继续正常流程。");
                    Context context = this.f50248r;
                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f50115s, com.umeng.commonsdk.internal.b.a(context).a(), null);
                    return true;
                }
            }
            return iA == 2;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f50248r, th);
            return false;
        }
    }

    private int a(byte[] bArr) {
        Response response = new Response();
        try {
            new dh(new dw.a()).a(response, bArr);
            if (response.resp_code == 1) {
                this.f50240g.b(response.getImprint());
                this.f50240g.d();
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f50248r, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }
}
