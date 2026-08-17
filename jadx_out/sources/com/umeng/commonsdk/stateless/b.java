package com.umeng.commonsdk.stateless;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.IntentFilter;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.util.LinkedList;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int f50199a = 273;

    /* renamed from: b, reason: collision with root package name */
    private static Context f50200b = null;

    /* renamed from: c, reason: collision with root package name */
    private static HandlerThread f50201c = null;

    /* renamed from: d, reason: collision with root package name */
    private static Handler f50202d = null;

    /* renamed from: f, reason: collision with root package name */
    private static final int f50204f = 274;

    /* renamed from: g, reason: collision with root package name */
    private static final int f50205g = 275;

    /* renamed from: h, reason: collision with root package name */
    private static final int f50206h = 512;

    /* renamed from: i, reason: collision with root package name */
    private static a f50207i = null;

    /* renamed from: j, reason: collision with root package name */
    private static IntentFilter f50208j = null;

    /* renamed from: k, reason: collision with root package name */
    private static volatile boolean f50209k = false;

    /* renamed from: e, reason: collision with root package name */
    private static Object f50203e = new Object();

    /* renamed from: l, reason: collision with root package name */
    private static LinkedList<String> f50210l = new LinkedList<>();

    public static class a extends FileObserver {
        public a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i2, String str) {
            if ((i2 & 8) != 8) {
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
            b.a(274);
        }
    }

    public b(Context context) {
        synchronized (f50203e) {
            if (context != null) {
                try {
                    try {
                        Context applicationContext = context.getApplicationContext();
                        f50200b = applicationContext;
                        if (applicationContext != null && f50201c == null) {
                            HandlerThread handlerThread = new HandlerThread("SL-NetWorkSender");
                            f50201c = handlerThread;
                            handlerThread.start();
                            if (f50207i == null) {
                                String str = f50200b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f50194f;
                                File file = new File(str);
                                if (!file.exists()) {
                                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓目录不存在，创建之。");
                                    file.mkdir();
                                }
                                a aVar = new a(str);
                                f50207i = aVar;
                                aVar.startWatching();
                                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓File Monitor启动.");
                            }
                            if (f50202d == null) {
                                f50202d = new Handler(f50201c.getLooper()) { // from class: com.umeng.commonsdk.stateless.b.1
                                    @Override // android.os.Handler
                                    public void handleMessage(Message message) {
                                        int i2 = message.what;
                                        if (i2 != 512) {
                                            switch (i2) {
                                                case 273:
                                                    b.l();
                                                    return;
                                                case 274:
                                                    b.n();
                                                    return;
                                                case 275:
                                                    b.p();
                                                    break;
                                                default:
                                                    return;
                                            }
                                        }
                                        b.q();
                                    }
                                };
                            }
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    public static void a(boolean z2) {
        f50209k = z2;
        if (!z2) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络断连： 2号数据仓");
        } else {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>网络可用： 触发2号数据仓信封消费动作。");
            b(274);
        }
    }

    public static void b(int i2) {
        Handler handler;
        try {
            if (!f50209k || (handler = f50202d) == null || handler.hasMessages(i2)) {
                return;
            }
            Message messageObtainMessage = f50202d.obtainMessage();
            messageObtainMessage.what = i2;
            f50202d.sendMessage(messageObtainMessage);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f50200b, th);
        }
    }

    public static void c() {
        b(275);
    }

    public static void d() {
        b(512);
    }

    private static void i() {
        File[] fileArrC = d.c(f50200b);
        if (fileArrC != null) {
            if (f50210l.size() > 0) {
                f50210l.clear();
            }
            for (File file : fileArrC) {
                f50210l.add(file.getAbsolutePath());
            }
        }
    }

    private static String j() {
        try {
            String strPeek = f50210l.peek();
            if (strPeek == null) {
                return strPeek;
            }
            try {
                f50210l.removeFirst();
                return strPeek;
            } catch (Throwable unused) {
                return strPeek;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    @TargetApi(9)
    private static void k() {
        String strPollFirst;
        byte[] bArrA;
        if (f50210l.size() <= 0) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> todoList无内容，无需处理。");
            return;
        }
        do {
            strPollFirst = f50210l.pollFirst();
            if (!TextUtils.isEmpty(strPollFirst)) {
                File file = new File(strPollFirst);
                if (file.exists()) {
                    c cVar = new c(f50200b);
                    try {
                        bArrA = d.a(strPollFirst);
                    } catch (Exception unused) {
                        bArrA = null;
                    }
                    String name = file.getName();
                    String strSubstring = !TextUtils.isEmpty(name) ? name.substring(0, 1) : "u";
                    String strC = d.c(d.d(name));
                    if (SdkVersion.SDK_TYPE == 0) {
                        cVar.a();
                    } else {
                        com.umeng.commonsdk.stateless.a.f50195g = com.umeng.commonsdk.stateless.a.f50198j;
                        cVar.b();
                    }
                    if (cVar.a(bArrA, strC, com.umeng.commonsdk.vchannel.a.f50519c.equalsIgnoreCase(strC) ? com.umeng.commonsdk.vchannel.a.f50517a : com.umeng.commonsdk.stateless.a.f50196h, strSubstring) && !file.delete()) {
                        file.delete();
                    }
                } else {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 信封文件不存在，处理下一个文件。");
                }
            }
        } while (strPollFirst != null);
        f50210l.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        File fileA;
        byte[] bArrA;
        if (!f50209k || f50200b == null) {
            return;
        }
        do {
            try {
                fileA = d.a(f50200b);
                if (fileA != null && fileA.getParentFile() != null && !TextUtils.isEmpty(fileA.getParentFile().getName())) {
                    c cVar = new c(f50200b);
                    String str = new String(Base64.decode(fileA.getParentFile().getName(), 0));
                    if (com.umeng.commonsdk.internal.a.f50097a.equalsIgnoreCase(str) || com.umeng.commonsdk.internal.a.f50098b.equalsIgnoreCase(str) || com.umeng.commonsdk.internal.a.f50092L.equalsIgnoreCase(str)) {
                        new File(fileA.getAbsolutePath()).delete();
                    } else {
                        ULog.i("walle", "[stateless] handleProcessNext, pathUrl is " + str);
                        try {
                            bArrA = d.a(fileA.getAbsolutePath());
                        } catch (Exception unused) {
                            bArrA = null;
                        }
                        String str2 = UMServerURL.PATH_SHARE.equalsIgnoreCase(str) ? "s" : "u";
                        if (UMServerURL.PATH_PUSH_LAUNCH.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_REGIST.equalsIgnoreCase(str) || UMServerURL.PATH_PUSH_LOG.equalsIgnoreCase(str)) {
                            str2 = "p";
                        }
                        if (SdkVersion.SDK_TYPE == 0) {
                            cVar.a();
                        } else {
                            com.umeng.commonsdk.stateless.a.f50195g = com.umeng.commonsdk.stateless.a.f50198j;
                            cVar.b();
                        }
                        if (!cVar.a(bArrA, str, com.umeng.commonsdk.vchannel.a.f50519c.equalsIgnoreCase(str) ? com.umeng.commonsdk.vchannel.a.f50517a : com.umeng.commonsdk.stateless.a.f50196h, str2)) {
                            ULog.i("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        ULog.i("walle", "[stateless] Send envelope file success, delete it.");
                        File file = new File(fileA.getAbsolutePath());
                        if (!file.delete()) {
                            ULog.i("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                            file.delete();
                        }
                    }
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f50200b, th);
            }
        } while (fileA != null);
        m();
    }

    private static void m() {
        try {
            File file = new File(f50200b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f50193e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 2号数据仓：删除stateless目录。");
                d.a(file);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n() {
        if (!f50209k || f50200b == null) {
            return;
        }
        i();
        k();
        c();
    }

    private static void o() {
        try {
            File file = new File(f50200b.getFilesDir() + File.separator + com.umeng.commonsdk.stateless.a.f50193e);
            if (file.exists() && file.isDirectory()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>2号数据仓：检测到stateless目录。");
                b(273);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p() {
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q() {
    }

    public static boolean a() {
        synchronized (f50203e) {
            try {
                return f50207i != null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void b() {
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>信封构建成功： 触发2号数据仓信封消费动作。");
        b(274);
    }

    public static void a(int i2) {
        Handler handler;
        if (!f50209k || (handler = f50202d) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        f50202d.sendMessage(messageObtainMessage);
    }
}
