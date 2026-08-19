package com.byazt.qv;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import com.byazt.fu.DownloadInfo;
import com.byazt.ip.e;
import com.byazt.xq.a;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1530, 34})
/* loaded from: classes3.dex */
public class l {
    public static long hp;

    /* renamed from: j, reason: collision with root package name */
    public static final Handler f25053j;
    public static final HandlerThread jx;

    /* renamed from: l, reason: collision with root package name */
    public static long f25054l;

    static {
        HandlerThread handlerThread = new HandlerThread("Downloader-preconnecter");
        jx = handlerThread;
        l();
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        f25053j = handler;
        handler.post(new Runnable() { // from class: com.byazt.qv.l.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Process.setThreadPriority(10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private static void l() {
        hp = com.byazt.jb.hp.jx().hp("preconnect_connection_outdate_time", PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
        f25054l = com.byazt.jb.hp.jx().hp("preconnect_head_info_outdate_time", PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
        hp.hp().hp(com.byazt.jb.hp.jx().hp("preconnect_max_cache_size", 3));
    }

    public static Looper hp() {
        return jx.getLooper();
    }

    public static void hp(final String str, final e eVar) {
        f25053j.post(new Runnable() { // from class: com.byazt.qv.l.2
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                if (TextUtils.isEmpty(str)) {
                    e eVar2 = eVar;
                    if (eVar2 != null) {
                        eVar2.hp(null);
                        return;
                    }
                    return;
                }
                try {
                    List<com.byazt.fu.jx> listL = l.l(0L, null, null);
                    jxVarHp = hp.hp().hp(str) ? hp.hp().hp(str, listL) : null;
                    if (jxVarHp == null) {
                        jx jxVar = new jx(str, listL, 0L);
                        try {
                            jxVar.hp();
                            if (jxVar.w()) {
                                hp.hp().hp(str, jxVar);
                            }
                            jxVarHp = jxVar;
                        } catch (Exception unused) {
                            jxVarHp = jxVar;
                            try {
                                jxVarHp.jx();
                                return;
                            } catch (Throwable unused2) {
                                return;
                            }
                        } catch (Throwable th) {
                            th = th;
                            jxVarHp = jxVar;
                            try {
                                jxVarHp.jx();
                            } catch (Throwable unused3) {
                            }
                            throw th;
                        }
                    }
                    Map<String, String> mapQ = jxVarHp.q();
                    e eVar3 = eVar;
                    if (eVar3 != null) {
                        eVar3.hp(mapQ);
                    }
                    try {
                        jxVarHp.jx();
                    } catch (Throwable unused4) {
                    }
                } catch (Exception unused5) {
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<com.byazt.fu.jx> l(long j2, DownloadInfo downloadInfo, List<com.byazt.fu.jx> list) {
        return a.hp(list, downloadInfo == null ? null : downloadInfo.geteTag(), j2, 0L);
    }
}
