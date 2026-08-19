package com.umeng.commonsdk.framework;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.kuaishou.weapon.p0.g;
import com.umeng.analytics.pro.ca;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.b;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.c;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes5.dex */
public class a implements UMImprintChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    private static HandlerThread f50055a = null;

    /* renamed from: b, reason: collision with root package name */
    private static Handler f50056b = null;

    /* renamed from: c, reason: collision with root package name */
    private static Handler f50057c = null;

    /* renamed from: d, reason: collision with root package name */
    private static final int f50058d = 200;

    /* renamed from: e, reason: collision with root package name */
    private static final int f50059e = 273;

    /* renamed from: f, reason: collision with root package name */
    private static final int f50060f = 274;

    /* renamed from: g, reason: collision with root package name */
    private static final int f50061g = 512;

    /* renamed from: h, reason: collision with root package name */
    private static final int f50062h = 769;

    /* renamed from: i, reason: collision with root package name */
    private static FileObserverC0861a f50063i = null;

    /* renamed from: j, reason: collision with root package name */
    private static ConnectivityManager f50064j = null;

    /* renamed from: k, reason: collision with root package name */
    private static IntentFilter f50065k = null;

    /* renamed from: l, reason: collision with root package name */
    private static volatile boolean f50066l = false;

    /* renamed from: m, reason: collision with root package name */
    private static ArrayList<UMSenderStateNotify> f50067m = null;

    /* renamed from: p, reason: collision with root package name */
    private static final String f50070p = "report_policy";

    /* renamed from: q, reason: collision with root package name */
    private static final String f50071q = "report_interval";

    /* renamed from: s, reason: collision with root package name */
    private static final int f50073s = 15;

    /* renamed from: t, reason: collision with root package name */
    private static final int f50074t = 3;

    /* renamed from: u, reason: collision with root package name */
    private static final int f50075u = 90;

    /* renamed from: x, reason: collision with root package name */
    private static BroadcastReceiver f50078x;

    /* renamed from: n, reason: collision with root package name */
    private static Object f50068n = new Object();

    /* renamed from: o, reason: collision with root package name */
    private static ReentrantLock f50069o = new ReentrantLock();

    /* renamed from: r, reason: collision with root package name */
    private static boolean f50072r = false;

    /* renamed from: v, reason: collision with root package name */
    private static int f50076v = 15;

    /* renamed from: w, reason: collision with root package name */
    private static Object f50077w = new Object();

    /* renamed from: com.umeng.commonsdk.framework.a$a, reason: collision with other inner class name */
    public static class FileObserverC0861a extends FileObserver {
        public FileObserverC0861a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i2, String str) {
            if ((i2 & 8) != 8) {
                return;
            }
            ULog.d("--->>> envelope file created >>> " + str);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
            a.c(273);
        }
    }

    static {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            f50064j = (ConnectivityManager) appContext.getSystemService("connectivity");
        }
        f50078x = new BroadcastReceiver() { // from class: com.umeng.commonsdk.framework.a.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f50085E, b.a(context).a(), null);
                }
            }
        };
    }

    public a(Context context, Handler handler) {
        if (f50064j == null) {
            Context appContext = UMGlobalContext.getAppContext();
            if (f50064j != null) {
                f50064j = (ConnectivityManager) appContext.getSystemService("connectivity");
            }
        }
        f50057c = handler;
        try {
            if (f50055a == null) {
                HandlerThread handlerThread = new HandlerThread("NetWorkSender");
                f50055a = handlerThread;
                handlerThread.start();
                if (f50063i == null) {
                    FileObserverC0861a fileObserverC0861a = new FileObserverC0861a(UMFrUtils.getEnvelopeDirPath(context));
                    f50063i = fileObserverC0861a;
                    fileObserverC0861a.startWatching();
                    ULog.d("--->>> FileMonitor has already started!");
                }
                j();
                if (f50056b == null) {
                    f50056b = new Handler(f50055a.getLooper()) { // from class: com.umeng.commonsdk.framework.a.3
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            int i2 = message.what;
                            if (i2 == 273) {
                                ULog.d("--->>> handleMessage: recv MSG_PROCESS_NEXT msg.");
                                try {
                                    a.f50069o.tryLock(1L, TimeUnit.SECONDS);
                                    try {
                                        a.n();
                                    } catch (Throwable unused) {
                                    }
                                    a.f50069o.unlock();
                                    return;
                                } catch (Throwable unused2) {
                                    return;
                                }
                            }
                            if (i2 == 274) {
                                a.l();
                            } else {
                                if (i2 != 512) {
                                    return;
                                }
                                a.m();
                            }
                        }
                    };
                }
                ImprintHandler.getImprintService(context).registImprintCallback(f50070p, this);
                ImprintHandler.getImprintService(context).registImprintCallback(f50071q, this);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    public static int b() {
        int i2;
        synchronized (f50077w) {
            i2 = f50076v;
        }
        return i2;
    }

    public static void c() {
    }

    public static void d() {
        if (f50069o.tryLock()) {
            try {
                b(273);
            } finally {
                f50069o.unlock();
            }
        }
    }

    public static void e() {
        a(274, 3000);
    }

    private void j() {
        synchronized (f50077w) {
            try {
                if ("11".equals(UMEnvelopeBuild.imprintProperty(UMModuleRegister.getAppContext(), f50070p, ""))) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                    f50072r = true;
                    f50076v = 15;
                    int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(UMModuleRegister.getAppContext(), f50071q, "15")).intValue();
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + iIntValue);
                    if (iIntValue < 3 || iIntValue > 90) {
                        f50076v = 15;
                    } else {
                        f50076v = iIntValue * 1000;
                    }
                } else {
                    f50072r = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void k() {
        if (f50055a != null) {
            f50055a = null;
        }
        if (f50056b != null) {
            f50056b = null;
        }
        if (f50057c != null) {
            f50057c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        int size;
        synchronized (f50068n) {
            try {
                ArrayList<UMSenderStateNotify> arrayList = f50067m;
                if (arrayList != null && (size = arrayList.size()) > 0) {
                    for (int i2 = 0; i2 < size; i2++) {
                        f50067m.get(i2).onSenderIdle();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n() {
        ULog.d("--->>> handleProcessNext: Enter...");
        if (f50066l) {
            Context appContext = UMModuleRegister.getAppContext();
            try {
                if (UMFrUtils.envelopeFileNumber(appContext) > 0) {
                    ULog.d("--->>> The envelope file exists.");
                    if (UMFrUtils.envelopeFileNumber(appContext) > 200) {
                        ULog.d("--->>> Number of envelope files is greater than 200, remove old files first.");
                        UMFrUtils.removeRedundantEnvelopeFiles(appContext, 200);
                    }
                    File envelopeFile = UMFrUtils.getEnvelopeFile(appContext);
                    if (envelopeFile != null) {
                        String path = envelopeFile.getPath();
                        ULog.d("--->>> Ready to send envelope file [" + path + "].");
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send envelope file [ " + path + "].");
                        if (!new c(appContext).a(envelopeFile)) {
                            ULog.d("--->>> Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        ULog.d("--->>> Send envelope file success, delete it.");
                        if (!UMFrUtils.removeEnvelopeFile(envelopeFile)) {
                            ULog.d("--->>> Failed to delete already processed file. We try again after delete failed.");
                            UMFrUtils.removeEnvelopeFile(envelopeFile);
                        }
                        c(273);
                        return;
                    }
                }
                e();
            } catch (Throwable th) {
                UMCrashManager.reportCrash(appContext, th);
            }
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
    public void onImprintValueChanged(String str, String str2) {
        synchronized (f50077w) {
            try {
                if (f50070p.equals(str)) {
                    if ("11".equals(str2)) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                        f50072r = true;
                    } else {
                        f50072r = false;
                    }
                }
                if (f50071q.equals(str)) {
                    int iIntValue = Integer.valueOf(str2).intValue();
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + iIntValue);
                    if (iIntValue < 3 || iIntValue > 90) {
                        f50076v = ca.f49002b;
                    } else {
                        f50076v = iIntValue * 1000;
                    }
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> really set report_interval value to: " + f50076v);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(Context context) {
        if (f50064j != null || context == null) {
            return;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        f50064j = connectivityManager;
        if (connectivityManager != null) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> createCMIfNeeded:注册网络状态监听器。");
            b(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(int i2) {
        Handler handler;
        if (!f50066l || (handler = f50056b) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        f50056b.sendMessage(messageObtainMessage);
    }

    @SuppressLint({"NewApi", "MissingPermission"})
    public static void b(Context context) {
        if (context == null) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> registerNetReceiver: context is null, registerNetReceiver failed.");
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            if (DeviceConfig.checkPermission(context, g.f31160b)) {
                NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addTransportType(0).addTransportType(1).build();
                if (f50064j != null) {
                    final Context applicationContext = context.getApplicationContext();
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 注册网络状态监听器:registerNetworkCallback");
                    f50064j.registerNetworkCallback(networkRequestBuild, new ConnectivityManager.NetworkCallback() { // from class: com.umeng.commonsdk.framework.a.1
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onAvailable(Network network) {
                            Context context2 = applicationContext;
                            UMWorkDispatch.sendEvent(context2, com.umeng.commonsdk.internal.a.f50085E, b.a(context2).a(), null);
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                            super.onCapabilitiesChanged(network, networkCapabilities);
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onLost(Network network) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onLost");
                            Context context2 = applicationContext;
                            UMWorkDispatch.sendEvent(context2, com.umeng.commonsdk.internal.a.f50085E, b.a(context2).a(), null, 2000L);
                        }
                    });
                    return;
                }
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> ACCESS_NETWORK_STATE permission access denied.");
            return;
        }
        if (DeviceConfig.checkPermission(context, g.f31160b)) {
            if (f50064j == null || f50065k != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            f50065k = intentFilter;
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            if (f50078x != null) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 注册网络状态监听器:registerReceiver");
                context.registerReceiver(f50078x, f50065k);
                return;
            }
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> ACCESS_NETWORK_STATE permission access denied.");
    }

    public static void a(UMSenderStateNotify uMSenderStateNotify) {
        synchronized (f50068n) {
            try {
                if (f50067m == null) {
                    f50067m = new ArrayList<>();
                }
                if (uMSenderStateNotify != null) {
                    for (int i2 = 0; i2 < f50067m.size(); i2++) {
                        if (uMSenderStateNotify == f50067m.get(i2)) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> addConnStateObserver: input item has exist.");
                            return;
                        }
                    }
                    f50067m.add(uMSenderStateNotify);
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(UMModuleRegister.getAppContext(), th);
            }
        }
    }

    public static boolean a() {
        boolean z2;
        synchronized (f50077w) {
            z2 = f50072r;
        }
        return z2;
    }

    public static void a(boolean z2) {
        int size;
        f50066l = z2;
        if (z2) {
            synchronized (f50068n) {
                try {
                    ArrayList<UMSenderStateNotify> arrayList = f50067m;
                    if (arrayList != null && (size = arrayList.size()) > 0) {
                        for (int i2 = 0; i2 < size; i2++) {
                            f50067m.get(i2).onConnectionAvailable();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "网络状态通知：尝试发送 MSG_PROCESS_NEXT");
            d();
            return;
        }
        ULog.i("--->>> network disconnected.");
        f50066l = false;
    }

    private static void b(int i2) {
        Handler handler;
        if (!f50066l || (handler = f50056b) == null || handler.hasMessages(i2)) {
            return;
        }
        Message messageObtainMessage = f50056b.obtainMessage();
        messageObtainMessage.what = i2;
        f50056b.sendMessage(messageObtainMessage);
    }

    private static void a(int i2, long j2) {
        Handler handler;
        if (!f50066l || (handler = f50056b) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> sendMsgDelayed: " + j2);
        f50056b.sendMessageDelayed(messageObtainMessage, j2);
    }

    private static void a(int i2, int i3) {
        Handler handler;
        if (!f50066l || (handler = f50056b) == null) {
            return;
        }
        handler.removeMessages(i2);
        Message messageObtainMessage = f50056b.obtainMessage();
        messageObtainMessage.what = i2;
        f50056b.sendMessageDelayed(messageObtainMessage, i3);
    }
}
