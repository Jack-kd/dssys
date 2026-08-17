package com.byazt.xq;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.view.PointerIconCompat;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadInterceptor;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.a;
import com.byazt.fn.b;
import com.byazt.fn.cx;
import com.byazt.fn.di;
import com.byazt.fn.e;
import com.byazt.fn.eb;
import com.byazt.fn.ec;
import com.byazt.fn.jl;
import com.byazt.fn.k;
import com.byazt.fn.ky;
import com.byazt.fn.lv;
import com.byazt.fn.n;
import com.byazt.fn.ns;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fn.pu;
import com.byazt.fn.q;
import com.byazt.fn.s;
import com.byazt.fn.sz;
import com.byazt.fn.u;
import com.byazt.fn.ud;
import com.byazt.fn.v;
import com.byazt.fn.vv;
import com.byazt.fn.w;
import com.byazt.fn.xs;
import com.byazt.fn.zy;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.fu.hp;
import com.byazt.io.BaseException;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 94})
/* loaded from: classes3.dex */
public class eb {
    public static Handler hp = new Handler(Looper.getMainLooper());

    public static com.byazt.fu.hp hp(final DownloadTask downloadTask) {
        if (downloadTask == null) {
            return null;
        }
        return new hp.AbstractBinderC0244hp() { // from class: com.byazt.xq.eb.1
            @Override // com.byazt.fu.hp
            public com.byazt.fn.a a() throws RemoteException {
                return eb.hp(downloadTask.getDepend());
            }

            @Override // com.byazt.fu.hp
            public com.byazt.fn.e e() throws RemoteException {
                return eb.hp(downloadTask.getMonitorDepend());
            }

            @Override // com.byazt.fu.hp
            public n eb() throws RemoteException {
                return eb.hp(downloadTask.getForbiddenHandler());
            }

            @Override // com.byazt.fu.hp
            public com.byazt.fn.eb gu() throws RemoteException {
                return eb.hp(downloadTask.getFileUriProvider());
            }

            @Override // com.byazt.fu.hp
            public DownloadInfo hp() throws RemoteException {
                return downloadTask.getDownloadInfo();
            }

            @Override // com.byazt.fu.hp
            public ud j() throws RemoteException {
                return eb.hp(downloadTask.getNotificationClickCallback());
            }

            @Override // com.byazt.fu.hp
            public int jl() throws RemoteException {
                return downloadTask.getDownloadCompleteHandlers().size();
            }

            @Override // com.byazt.fu.hp
            public di jx() throws RemoteException {
                return eb.hp(downloadTask.getNotificationEventListener());
            }

            @Override // com.byazt.fu.hp
            public com.byazt.fn.w l() throws RemoteException {
                return eb.hp(downloadTask.getChunkStrategy());
            }

            @Override // com.byazt.fu.hp
            public u q() throws RemoteException {
                return eb.hp(downloadTask.getDiskSpaceHandler());
            }

            @Override // com.byazt.fu.hp
            public lv s() throws RemoteException {
                return eb.hp(downloadTask.getRetryDelayTimeCalculator());
            }

            @Override // com.byazt.fu.hp
            public com.byazt.fn.s w() throws RemoteException {
                return eb.hp(downloadTask.getInterceptor());
            }

            @Override // com.byazt.fu.hp
            public int hp(int i2) throws RemoteException {
                return downloadTask.getDownloadListenerSize(a.w(i2));
            }

            @Override // com.byazt.fu.hp
            public jl jx(int i2) throws RemoteException {
                return eb.hp(downloadTask.getDownloadCompleteHandlerByIndex(i2));
            }

            @Override // com.byazt.fu.hp
            public com.byazt.fn.q l(int i2) throws RemoteException {
                return eb.hp(downloadTask.getSingleDownloadListener(a.w(i2)), i2 != com.byazt.oy.a.SUB.ordinal());
            }

            @Override // com.byazt.fu.hp
            public com.byazt.fn.q hp(int i2, int i3) throws RemoteException {
                return eb.hp(downloadTask.getDownloadListenerByIndex(a.w(i2), i3), i2 != com.byazt.oy.a.SUB.ordinal());
            }
        };
    }

    public static com.byazt.fn.q hp(final IDownloadListener iDownloadListener, final boolean z2) {
        if (iDownloadListener == null) {
            return null;
        }
        return new q.hp() { // from class: com.byazt.xq.eb.12
            @Override // com.byazt.fn.q
            public void a(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.10
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onCanceled(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onCanceled(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public void eb(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.11
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onFirstStart(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onFirstStart(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public int hp() throws RemoteException {
                return iDownloadListener.hashCode();
            }

            @Override // com.byazt.fn.q
            public void j(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.7
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onPause(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onPause(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public void jx(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.6
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onProgress(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onProgress(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public void l(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.5
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onStart(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onStart(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public void q(final DownloadInfo downloadInfo) throws RemoteException {
                IDownloadListener iDownloadListener2 = iDownloadListener;
                if (iDownloadListener2 instanceof ec) {
                    if (z2) {
                        eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.4
                            @Override // java.lang.Runnable
                            public void run() {
                                ((ec) iDownloadListener).hp(downloadInfo);
                            }
                        });
                    } else {
                        ((ec) iDownloadListener2).hp(downloadInfo);
                    }
                }
            }

            @Override // com.byazt.fn.q
            public void s(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.12
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onFirstSuccess(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onFirstSuccess(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public void w(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.8
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onSuccessed(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onSuccessed(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public void hp(final DownloadInfo downloadInfo) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onPrepare(downloadInfo);
                        }
                    });
                } else {
                    iDownloadListener.onPrepare(downloadInfo);
                }
            }

            @Override // com.byazt.fn.q
            public void jx(final DownloadInfo downloadInfo, final BaseException baseException) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.3
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onRetryDelay(downloadInfo, baseException);
                        }
                    });
                } else {
                    iDownloadListener.onRetryDelay(downloadInfo, baseException);
                }
            }

            @Override // com.byazt.fn.q
            public void l(final DownloadInfo downloadInfo, final BaseException baseException) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.2
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onRetry(downloadInfo, baseException);
                        }
                    });
                } else {
                    iDownloadListener.onRetry(downloadInfo, baseException);
                }
            }

            @Override // com.byazt.fn.q
            public void hp(final DownloadInfo downloadInfo, final BaseException baseException) throws RemoteException {
                if (z2) {
                    eb.hp.post(new Runnable() { // from class: com.byazt.xq.eb.12.9
                        @Override // java.lang.Runnable
                        public void run() {
                            iDownloadListener.onFailed(downloadInfo, baseException);
                        }
                    });
                } else {
                    iDownloadListener.onFailed(downloadInfo, baseException);
                }
            }
        };
    }

    public static di hp(final o oVar) {
        if (oVar == null) {
            return null;
        }
        return new di.hp() { // from class: com.byazt.xq.eb.23
            @Override // com.byazt.fn.di
            public void hp(int i2, DownloadInfo downloadInfo, String str, String str2) throws RemoteException {
                oVar.hp(i2, downloadInfo, str, str2);
            }

            @Override // com.byazt.fn.di
            public boolean hp(boolean z2) throws RemoteException {
                return oVar.hp(z2);
            }

            @Override // com.byazt.fn.di
            public String hp() throws RemoteException {
                return oVar.hp();
            }
        };
    }

    public static ud hp(final nu nuVar) {
        if (nuVar == null) {
            return null;
        }
        return new ud.hp() { // from class: com.byazt.xq.eb.26
            @Override // com.byazt.fn.ud
            public boolean hp(DownloadInfo downloadInfo) throws RemoteException {
                return nuVar.hp(downloadInfo);
            }

            @Override // com.byazt.fn.ud
            public boolean jx(DownloadInfo downloadInfo) throws RemoteException {
                return nuVar.jx(downloadInfo);
            }

            @Override // com.byazt.fn.ud
            public boolean l(DownloadInfo downloadInfo) throws RemoteException {
                return nuVar.l(downloadInfo);
            }
        };
    }

    public static lv hp(final com.byazt.yk.ec ecVar) {
        if (ecVar == null) {
            return null;
        }
        return new lv.hp() { // from class: com.byazt.xq.eb.27
            @Override // com.byazt.fn.lv
            public long hp(int i2, int i3) throws RemoteException {
                return ecVar.hp(i2, i3);
            }
        };
    }

    public static n hp(final cx cxVar) {
        if (cxVar == null) {
            return null;
        }
        return new n.hp() { // from class: com.byazt.xq.eb.28
            @Override // com.byazt.fn.n
            public boolean hp(sz szVar) throws RemoteException {
                return cxVar.hp(eb.hp(szVar));
            }
        };
    }

    public static com.byazt.fn.eb hp(final IDownloadFileUriProvider iDownloadFileUriProvider) {
        if (iDownloadFileUriProvider == null) {
            return null;
        }
        return new eb.hp() { // from class: com.byazt.xq.eb.29
            @Override // com.byazt.fn.eb
            public Uri hp(String str, String str2) throws RemoteException {
                return iDownloadFileUriProvider.getUriForFile(str, str2);
            }
        };
    }

    public static ns hp(final sz szVar) {
        if (szVar == null) {
            return null;
        }
        return new ns() { // from class: com.byazt.xq.eb.30
            @Override // com.byazt.fn.ns
            public void hp(List<String> list) {
                try {
                    szVar.hp(list);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.ns
            public boolean hp() {
                try {
                    return szVar.hp();
                } catch (RemoteException unused) {
                    return false;
                }
            }
        };
    }

    public static u hp(final vv vvVar) {
        if (vvVar == null) {
            return null;
        }
        return new u.hp() { // from class: com.byazt.xq.eb.31
            @Override // com.byazt.fn.u
            public boolean hp(long j2, long j3, v vVar) throws RemoteException {
                return vvVar.hp(j2, j3, eb.hp(vVar));
            }
        };
    }

    public static xs hp(final v vVar) {
        if (vVar == null) {
            return null;
        }
        return new xs() { // from class: com.byazt.xq.eb.2
            @Override // com.byazt.fn.xs
            public void hp() {
                try {
                    vVar.hp();
                } catch (RemoteException unused) {
                }
            }
        };
    }

    public static com.byazt.fn.a hp(final k kVar) {
        if (kVar == null) {
            return null;
        }
        return new a.hp() { // from class: com.byazt.xq.eb.3
            @Override // com.byazt.fn.a
            public void hp(DownloadInfo downloadInfo, BaseException baseException, int i2) throws RemoteException {
                kVar.hp(downloadInfo, baseException, i2);
            }
        };
    }

    public static com.byazt.fn.e hp(final b bVar) {
        if (bVar == null) {
            return null;
        }
        return new e.hp() { // from class: com.byazt.xq.eb.4
            @Override // com.byazt.fn.e
            public void hp(String str) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    bVar.hp(new JSONObject(str));
                } catch (JSONException unused) {
                }
            }

            @Override // com.byazt.fn.e
            public int[] l() throws RemoteException {
                b bVar2 = bVar;
                if (bVar2 instanceof com.byazt.fn.jx) {
                    return ((com.byazt.fn.jx) bVar2).hp();
                }
                return null;
            }

            @Override // com.byazt.fn.e
            public String hp() throws RemoteException {
                return bVar.l();
            }
        };
    }

    public static com.byazt.fn.w hp(final com.byazt.yk.s sVar) {
        if (sVar == null) {
            return null;
        }
        return new w.hp() { // from class: com.byazt.xq.eb.5
            @Override // com.byazt.fn.w
            public int hp(long j2) throws RemoteException {
                return sVar.hp(j2);
            }
        };
    }

    public static com.byazt.fn.s hp(final IDownloadInterceptor iDownloadInterceptor) {
        if (iDownloadInterceptor == null) {
            return null;
        }
        return new s.hp() { // from class: com.byazt.xq.eb.6
            @Override // com.byazt.fn.s
            public boolean hp() throws RemoteException {
                return iDownloadInterceptor.intercepte();
            }
        };
    }

    public static DownloadTask hp(com.byazt.fu.hp hpVar) {
        if (hpVar == null) {
            return null;
        }
        try {
            DownloadTask downloadTask = new DownloadTask(hpVar.hp());
            downloadTask.chunkStategy(hp(hpVar.l())).notificationEventListener(hp(hpVar.jx())).interceptor(hp(hpVar.w())).depend(hp(hpVar.a())).monitorDepend(hp(hpVar.e())).forbiddenHandler(hp(hpVar.eb())).diskSpaceHandler(hp(hpVar.q())).fileUriProvider(hp(hpVar.gu())).notificationClickCallback(hp(hpVar.j())).retryDelayTimeCalculator(hp(hpVar.s()));
            com.byazt.oy.a aVar = com.byazt.oy.a.MAIN;
            com.byazt.fn.q qVarL = hpVar.l(aVar.ordinal());
            if (qVarL != null) {
                downloadTask.mainThreadListenerWithHashCode(qVarL.hashCode(), hp(qVarL));
            }
            com.byazt.oy.a aVar2 = com.byazt.oy.a.SUB;
            com.byazt.fn.q qVarL2 = hpVar.l(aVar2.ordinal());
            if (qVarL2 != null) {
                downloadTask.subThreadListenerWithHashCode(qVarL2.hashCode(), hp(qVarL2));
            }
            com.byazt.oy.a aVar3 = com.byazt.oy.a.NOTIFICATION;
            com.byazt.fn.q qVarL3 = hpVar.l(aVar3.ordinal());
            if (qVarL3 != null) {
                downloadTask.notificationListenerWithHashCode(qVarL3.hashCode(), hp(qVarL3));
            }
            hp(downloadTask, hpVar, aVar);
            hp(downloadTask, hpVar, aVar2);
            hp(downloadTask, hpVar, aVar3);
            hp(downloadTask, hpVar);
            return downloadTask;
        } catch (RemoteException unused) {
            return null;
        }
    }

    private static void hp(DownloadTask downloadTask, com.byazt.fu.hp hpVar, com.byazt.oy.a aVar) throws RemoteException {
        SparseArray<IDownloadListener> sparseArray = new SparseArray<>();
        for (int i2 = 0; i2 < hpVar.hp(aVar.ordinal()); i2++) {
            com.byazt.fn.q qVarHp = hpVar.hp(aVar.ordinal(), i2);
            if (qVarHp != null) {
                sparseArray.put(qVarHp.hp(), hp(qVarHp));
            }
        }
        downloadTask.setDownloadListeners(sparseArray, aVar);
    }

    private static void hp(DownloadTask downloadTask, com.byazt.fu.hp hpVar) throws RemoteException {
        for (int i2 = 0; i2 < hpVar.jl(); i2++) {
            jl jlVarJx = hpVar.jx(i2);
            if (jlVarJx != null) {
                downloadTask.addDownloadCompleteHandler(hp(jlVarJx));
            }
        }
    }

    public static o hp(final di diVar) {
        if (diVar == null) {
            return null;
        }
        return new o() { // from class: com.byazt.xq.eb.7
            @Override // com.byazt.fn.o
            public void hp(int i2, DownloadInfo downloadInfo, String str, String str2) {
                try {
                    diVar.hp(i2, downloadInfo, str, str2);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.o
            public boolean hp(boolean z2) {
                try {
                    return diVar.hp(z2);
                } catch (RemoteException unused) {
                    return false;
                }
            }

            @Override // com.byazt.fn.o
            public String hp() {
                try {
                    return diVar.hp();
                } catch (RemoteException unused) {
                    return null;
                }
            }
        };
    }

    public static zy hp(final jl jlVar) {
        if (jlVar == null) {
            return null;
        }
        return new zy() { // from class: com.byazt.xq.eb.8
            @Override // com.byazt.fn.zy
            public void hp(DownloadInfo downloadInfo) throws BaseException {
                try {
                    jlVar.hp(downloadInfo);
                } catch (RemoteException e2) {
                    throw new BaseException(PointerIconCompat.TYPE_TEXT, e2);
                }
            }

            @Override // com.byazt.fn.zy
            public boolean l(DownloadInfo downloadInfo) {
                try {
                    return jlVar.l(downloadInfo);
                } catch (RemoteException unused) {
                    return false;
                }
            }
        };
    }

    public static jl hp(final zy zyVar) {
        if (zyVar == null) {
            return null;
        }
        return new jl.hp() { // from class: com.byazt.xq.eb.9
            @Override // com.byazt.fn.jl
            public void hp(DownloadInfo downloadInfo) throws RemoteException {
                try {
                    zyVar.hp(downloadInfo);
                } catch (BaseException e2) {
                    throw new IllegalArgumentException(e2);
                }
            }

            @Override // com.byazt.fn.jl
            public boolean l(DownloadInfo downloadInfo) throws RemoteException {
                return zyVar.l(downloadInfo);
            }
        };
    }

    public static nu hp(final ud udVar) {
        if (udVar == null) {
            return null;
        }
        return new nu() { // from class: com.byazt.xq.eb.10
            @Override // com.byazt.fn.nu
            public boolean hp(DownloadInfo downloadInfo) {
                try {
                    return udVar.hp(downloadInfo);
                } catch (RemoteException unused) {
                    return false;
                }
            }

            @Override // com.byazt.fn.nu
            public boolean jx(DownloadInfo downloadInfo) {
                try {
                    return udVar.jx(downloadInfo);
                } catch (RemoteException unused) {
                    return false;
                }
            }

            @Override // com.byazt.fn.nu
            public boolean l(DownloadInfo downloadInfo) {
                try {
                    return udVar.l(downloadInfo);
                } catch (RemoteException unused) {
                    return false;
                }
            }
        };
    }

    public static com.byazt.yk.s hp(final com.byazt.fn.w wVar) {
        if (wVar == null) {
            return null;
        }
        return new com.byazt.yk.s() { // from class: com.byazt.xq.eb.11
            @Override // com.byazt.yk.s
            public int hp(long j2) {
                try {
                    return wVar.hp(j2);
                } catch (RemoteException unused) {
                    return 0;
                }
            }
        };
    }

    public static k hp(final com.byazt.fn.a aVar) {
        if (aVar == null) {
            return null;
        }
        return new k() { // from class: com.byazt.xq.eb.13
            @Override // com.byazt.fn.k
            public void hp(DownloadInfo downloadInfo, BaseException baseException, int i2) {
                if (downloadInfo == null) {
                    return;
                }
                try {
                    aVar.hp(downloadInfo, baseException, i2);
                } catch (RemoteException unused) {
                }
            }
        };
    }

    public static b hp(final com.byazt.fn.e eVar) {
        if (eVar == null) {
            return null;
        }
        return new com.byazt.fn.jx() { // from class: com.byazt.xq.eb.14
            @Override // com.byazt.fn.b
            public void hp(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                try {
                    eVar.hp(jSONObject.toString());
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.b
            public String l() {
                try {
                    return eVar.hp();
                } catch (RemoteException unused) {
                    return "";
                }
            }

            @Override // com.byazt.fn.jx
            public int[] hp() {
                try {
                    return eVar.l();
                } catch (RemoteException unused) {
                    return null;
                }
            }
        };
    }

    public static cx hp(final n nVar) {
        if (nVar == null) {
            return null;
        }
        return new cx() { // from class: com.byazt.xq.eb.15
            @Override // com.byazt.fn.cx
            public boolean hp(ns nsVar) {
                try {
                    return nVar.hp(eb.hp(nsVar));
                } catch (RemoteException unused) {
                    return false;
                }
            }
        };
    }

    public static sz hp(final ns nsVar) {
        if (nsVar == null) {
            return null;
        }
        return new sz.hp() { // from class: com.byazt.xq.eb.16
            @Override // com.byazt.fn.sz
            public void hp(List<String> list) {
                nsVar.hp(list);
            }

            @Override // com.byazt.fn.sz
            public boolean hp() {
                return nsVar.hp();
            }
        };
    }

    public static pu hp(final ky kyVar) {
        if (kyVar == null) {
            return null;
        }
        return new pu.hp() { // from class: com.byazt.xq.eb.17
            @Override // com.byazt.fn.pu
            public void hp(int i2, int i3) {
                kyVar.hp(i2, i3);
            }
        };
    }

    public static ky hp(final pu puVar) {
        if (puVar == null) {
            return null;
        }
        return new ky() { // from class: com.byazt.xq.eb.18
            @Override // com.byazt.fn.ky
            public void hp(int i2, int i3) {
                try {
                    puVar.hp(i2, i3);
                } catch (RemoteException unused) {
                }
            }
        };
    }

    public static vv hp(final u uVar) {
        if (uVar == null) {
            return null;
        }
        return new vv() { // from class: com.byazt.xq.eb.19
            @Override // com.byazt.fn.vv
            public boolean hp(long j2, long j3, xs xsVar) {
                try {
                    return uVar.hp(j2, j3, eb.hp(xsVar));
                } catch (RemoteException unused) {
                    return false;
                }
            }
        };
    }

    public static v hp(final xs xsVar) {
        if (xsVar == null) {
            return null;
        }
        return new v.hp() { // from class: com.byazt.xq.eb.20
            @Override // com.byazt.fn.v
            public void hp() throws RemoteException {
                xsVar.hp();
            }
        };
    }

    public static com.byazt.yk.ec hp(final lv lvVar) {
        if (lvVar == null) {
            return null;
        }
        return new com.byazt.yk.ec() { // from class: com.byazt.xq.eb.21
            @Override // com.byazt.yk.ec
            public long hp(int i2, int i3) {
                try {
                    return lvVar.hp(i2, i3);
                } catch (RemoteException unused) {
                    return 0L;
                }
            }
        };
    }

    public static IDownloadInterceptor hp(final com.byazt.fn.s sVar) {
        if (sVar == null) {
            return null;
        }
        return new IDownloadInterceptor() { // from class: com.byazt.xq.eb.22
            @Override // com.byazt.fn.IDownloadInterceptor
            public boolean intercepte() {
                try {
                    return sVar.hp();
                } catch (RemoteException unused) {
                    return false;
                }
            }
        };
    }

    public static IDownloadFileUriProvider hp(final com.byazt.fn.eb ebVar) {
        if (ebVar == null) {
            return null;
        }
        return new IDownloadFileUriProvider() { // from class: com.byazt.xq.eb.24
            @Override // com.byazt.fn.IDownloadFileUriProvider
            public Uri getUriForFile(String str, String str2) {
                try {
                    return ebVar.hp(str, str2);
                } catch (RemoteException unused) {
                    return null;
                }
            }
        };
    }

    public static IDownloadListener hp(final com.byazt.fn.q qVar) {
        if (qVar == null) {
            return null;
        }
        return new ec() { // from class: com.byazt.xq.eb.25
            @Override // com.byazt.fn.ec
            public void hp(DownloadInfo downloadInfo) {
                try {
                    qVar.q(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onCanceled(DownloadInfo downloadInfo) {
                try {
                    qVar.a(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
                try {
                    qVar.hp(downloadInfo, baseException);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onFirstStart(DownloadInfo downloadInfo) {
                try {
                    qVar.eb(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onFirstSuccess(DownloadInfo downloadInfo) {
                try {
                    qVar.s(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onPause(DownloadInfo downloadInfo) {
                try {
                    qVar.j(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onPrepare(DownloadInfo downloadInfo) {
                try {
                    qVar.hp(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onProgress(DownloadInfo downloadInfo) {
                try {
                    qVar.jx(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onRetry(DownloadInfo downloadInfo, BaseException baseException) {
                try {
                    qVar.l(downloadInfo, baseException);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onRetryDelay(DownloadInfo downloadInfo, BaseException baseException) {
                try {
                    qVar.jx(downloadInfo, baseException);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onStart(DownloadInfo downloadInfo) {
                try {
                    qVar.l(downloadInfo);
                } catch (RemoteException unused) {
                }
            }

            @Override // com.byazt.fn.IDownloadListener
            public void onSuccessed(DownloadInfo downloadInfo) {
                try {
                    qVar.w(downloadInfo);
                } catch (RemoteException unused) {
                }
            }
        };
    }
}
