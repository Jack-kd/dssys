package com.meishu.sdk.core.utils;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import com.byazt.kc.AbsServerManager;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.recycler.DownloadStatusListener;
import com.meishu.sdk.core.download.a;
import com.meishu.sdk.core.safe.SafeBroadcastReceiver;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class DownloadUtils {

    /* renamed from: h, reason: collision with root package name */
    public static Map<Integer, l0> f31749h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    public static final ConcurrentHashMap<String, g0> f31750i = new ConcurrentHashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public static final ConcurrentHashMap<String, DownloadStatusListener> f31751j = new ConcurrentHashMap<>();

    /* renamed from: k, reason: collision with root package name */
    public static final ConcurrentHashMap<String, DownloadStatusListener> f31752k = new ConcurrentHashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public static int f31753l = 0;

    /* renamed from: a, reason: collision with root package name */
    public NotificationManager f31754a;

    /* renamed from: b, reason: collision with root package name */
    public RemoteViews f31755b;

    /* renamed from: c, reason: collision with root package name */
    public Notification f31756c;

    /* renamed from: d, reason: collision with root package name */
    public Handler f31757d = new Handler(Looper.getMainLooper());

    /* renamed from: e, reason: collision with root package name */
    public long f31758e;

    /* renamed from: f, reason: collision with root package name */
    public long f31759f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f31760g;

    public static class InstallSuccessReceiver extends SafeBroadcastReceiver {

        public class a extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ DownloadStatusListener f31761a;

            public a(InstallSuccessReceiver installSuccessReceiver, DownloadStatusListener downloadStatusListener) {
                this.f31761a = downloadStatusListener;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                this.f31761a.onInstallSuccess();
            }
        }

        @Override // com.meishu.sdk.core.safe.SafeBroadcastReceiver
        public void a(Context context, Intent intent) {
            String[] strArr;
            if (intent != null) {
                try {
                    String action = intent.getAction();
                    intent.getPackage();
                    LogUtil.i("DownloadUtils", "InstallSuccessReceiver." + action);
                    if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                        Map<Integer, l0> map = DownloadUtils.f31749h;
                        g0 g0Var = TextUtils.isEmpty(schemeSpecificPart) ? null : DownloadUtils.f31750i.get(schemeSpecificPart);
                        if (g0Var != null && (strArr = g0Var.f31900a) != null) {
                            LogUtil.d("DownloadUtils", "Report send dn_inst_succ");
                            for (String str : strArr) {
                                if (!TextUtils.isEmpty(str)) {
                                    a0.a(context, str, new i());
                                }
                            }
                        }
                        DownloadStatusListener downloadStatusListenerRemove = DownloadUtils.f31752k.remove(schemeSpecificPart);
                        if (downloadStatusListenerRemove != null) {
                            new Handler(Looper.getMainLooper()).post(new a(this, downloadStatusListenerRemove));
                        }
                        if (TextUtils.isEmpty(schemeSpecificPart)) {
                            return;
                        }
                        DownloadUtils.f31750i.remove(schemeSpecificPart);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public class NotificationClickReceiver extends SafeBroadcastReceiver {
        public NotificationClickReceiver() {
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
        @Override // com.meishu.sdk.core.safe.SafeBroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(android.content.Context r8, android.content.Intent r9) {
            /*
                Method dump skipped, instructions count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.DownloadUtils.NotificationClickReceiver.a(android.content.Context, android.content.Intent):void");
        }
    }

    public class b extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DownloadStatusListener f31778a;

        public b(DownloadStatusListener downloadStatusListener) {
            this.f31778a = downloadStatusListener;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            this.f31778a.onInstallStart();
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public static final DownloadUtils f31779a = new DownloadUtils();
    }

    public static void a(DownloadUtils downloadUtils, String str, Context context, String str2, String str3) {
        NotificationCompat.Builder builder;
        l0 l0Var;
        downloadUtils.getClass();
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("ACTION_DOWNLOAD_PAUSE");
            intentFilter.addAction("ACTION_DOWNLOAD_CACEL");
            intentFilter.addAction("ACTION_DOWNLOAD_INSTALL");
            context.registerReceiver(downloadUtils.new NotificationClickReceiver(), intentFilter);
            a(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        downloadUtils.f31754a = (NotificationManager) context.getSystemService("notification");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            T.d.a();
            NotificationChannel notificationChannelA = androidx.browser.trusted.f.a("ms_download", "正在下载应用" + str2 + "...", 4);
            notificationChannelA.setSound(null, null);
            downloadUtils.f31754a.createNotificationChannel(notificationChannelA);
        }
        if (i2 >= 26) {
            builder = new NotificationCompat.Builder(context.getApplicationContext(), "ms_download");
        } else {
            builder = new NotificationCompat.Builder(context);
            builder.setSound(null);
            builder.setPriority(4);
        }
        builder.setContentTitle("正在下载应用" + str2 + "...");
        try {
            builder.setSmallIcon(R.drawable.stat_sys_download);
        } catch (Throwable unused) {
        }
        builder.setAutoCancel(true);
        downloadUtils.f31756c = builder.build();
        int identifier = context.getResources().getIdentifier("ms_notification_item", "layout", context.getPackageName());
        if (identifier == 0) {
            downloadUtils.f31755b = new RemoteViews(context.getPackageName(), com.meishu.sdk.R.layout.ms_notification_item);
        } else {
            downloadUtils.f31755b = new RemoteViews(context.getPackageName(), identifier);
        }
        int identifier2 = context.getResources().getIdentifier("ms_notification_title", "id", context.getPackageName());
        int identifier3 = context.getResources().getIdentifier("ms_notification_cancel", "id", context.getPackageName());
        int identifier4 = context.getResources().getIdentifier("ms_notification_pause", "id", context.getPackageName());
        int identifier5 = context.getResources().getIdentifier("ms_notification_progressText", "id", context.getPackageName());
        int identifier6 = context.getResources().getIdentifier("ms_notification_pregressBar", "id", context.getPackageName());
        int identifier7 = context.getResources().getIdentifier("ms_notification_rootView", "id", context.getPackageName());
        if (identifier2 != 0) {
            downloadUtils.f31755b.setTextViewText(identifier2, "正在下载:" + str2 + "...");
        } else {
            downloadUtils.f31755b.setTextViewText(com.meishu.sdk.R.id.ms_notification_title, "正在下载:" + str2 + "...");
        }
        if (identifier3 != 0) {
            downloadUtils.f31755b.setViewVisibility(identifier3, 0);
        } else {
            downloadUtils.f31755b.setViewVisibility(com.meishu.sdk.R.id.ms_notification_cancel, 0);
        }
        if (identifier4 != 0) {
            downloadUtils.f31755b.setViewVisibility(identifier4, 0);
        } else {
            downloadUtils.f31755b.setViewVisibility(com.meishu.sdk.R.id.ms_notification_pause, 0);
        }
        if (identifier5 != 0) {
            downloadUtils.f31755b.setTextViewText(identifier5, "0%");
        } else {
            downloadUtils.f31755b.setTextViewText(com.meishu.sdk.R.id.ms_notification_progressText, "0%");
        }
        if (identifier6 != 0) {
            downloadUtils.f31755b.setProgressBar(identifier6, 100, 0, false);
        } else {
            downloadUtils.f31755b.setProgressBar(com.meishu.sdk.R.id.ms_notification_pregressBar, 100, 0, false);
        }
        int iA = a(str);
        f31753l = iA;
        Intent intent = new Intent();
        intent.setAction("ACTION_DOWNLOAD_PAUSE");
        intent.putExtra("notify_id", iA);
        intent.putExtra("notify_url", str);
        int i3 = Build.VERSION.SDK_INT;
        PendingIntent broadcast = i3 >= 31 ? PendingIntent.getBroadcast(context, f31753l, intent, 201326592) : PendingIntent.getBroadcast(context, f31753l, intent, 134217728);
        if (identifier4 == 0) {
            identifier4 = com.meishu.sdk.R.id.ms_notification_pause;
        }
        downloadUtils.f31755b.setOnClickPendingIntent(identifier4, broadcast);
        Intent intent2 = new Intent();
        intent2.setAction("ACTION_DOWNLOAD_CACEL");
        intent2.putExtra("notify_id", iA);
        intent2.putExtra("notify_url", str);
        PendingIntent broadcast2 = i3 >= 31 ? PendingIntent.getBroadcast(context, f31753l, intent2, 335544320) : PendingIntent.getBroadcast(context, f31753l, intent2, C.ENCODING_PCM_MU_LAW);
        if (identifier3 == 0) {
            identifier3 = com.meishu.sdk.R.id.ms_notification_cancel;
        }
        downloadUtils.f31755b.setOnClickPendingIntent(identifier3, broadcast2);
        Intent intent3 = new Intent();
        intent3.setAction("ACTION_DOWNLOAD_INSTALL");
        intent3.putExtra("notify_id", iA);
        intent3.putExtra("notify_url", str);
        PendingIntent broadcast3 = i3 >= 31 ? PendingIntent.getBroadcast(context, f31753l, intent3, 201326592) : PendingIntent.getBroadcast(context, f31753l, intent3, 134217728);
        if (identifier7 == 0) {
            identifier7 = com.meishu.sdk.R.id.ms_notification_rootView;
        }
        downloadUtils.f31755b.setOnClickPendingIntent(identifier7, broadcast3);
        if (f31749h.containsKey(Integer.valueOf(iA)) && (l0Var = f31749h.get(Integer.valueOf(iA))) != null) {
            l0Var.f31924a = downloadUtils.f31756c;
            f31749h.put(Integer.valueOf(iA), l0Var);
        }
        Notification notification = downloadUtils.f31756c;
        notification.contentView = downloadUtils.f31755b;
        downloadUtils.f31754a.notify(iA, notification);
    }

    public class a implements com.meishu.sdk.core.download.h {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f31763a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String[] f31764b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Context f31765c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f31766d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f31767e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String[] f31768f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String[] f31769g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String[] f31770h;

        /* renamed from: com.meishu.sdk.core.utils.DownloadUtils$a$a, reason: collision with other inner class name */
        public class C0673a extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ DownloadStatusListener f31772a;

            public C0673a(a aVar, DownloadStatusListener downloadStatusListener) {
                this.f31772a = downloadStatusListener;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                this.f31772a.onDownloadStart();
            }
        }

        public class b extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ com.meishu.sdk.core.download.b f31773a;

            public b(com.meishu.sdk.core.download.b bVar) {
                this.f31773a = bVar;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                try {
                    com.meishu.sdk.core.download.b bVar = this.f31773a;
                    int i2 = (int) (((bVar.f31547f * 1.0f) / bVar.f31546e) * 100.0f);
                    if (i2 > 100) {
                        i2 = 100;
                    }
                    DownloadStatusListener downloadStatusListener = DownloadUtils.f31751j.get(a.this.f31763a);
                    if (downloadStatusListener != null) {
                        downloadStatusListener.onDownloadProgress(i2);
                    }
                    a aVar = a.this;
                    DownloadUtils downloadUtils = DownloadUtils.this;
                    if (downloadUtils.f31754a == null || downloadUtils.f31755b == null) {
                        return;
                    }
                    int iA = a1.a(aVar.f31765c, "ms_notification_progressText");
                    int iA2 = a1.a(a.this.f31765c, "ms_notification_pregressBar");
                    if (iA == 0) {
                        iA = com.meishu.sdk.R.id.ms_notification_progressText;
                    }
                    if (iA2 == 0) {
                        iA2 = com.meishu.sdk.R.id.ms_notification_pregressBar;
                    }
                    DownloadUtils.this.f31755b.setTextViewText(iA, i2 + "%");
                    DownloadUtils.this.f31755b.setProgressBar(iA2, 100, i2, false);
                    int iA3 = DownloadUtils.a(this.f31773a.f31542a);
                    if (DownloadUtils.f31749h.containsKey(Integer.valueOf(iA3))) {
                        DownloadUtils.this.f31754a.notify(iA3, DownloadUtils.f31749h.get(Integer.valueOf(iA3)).f31924a);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public class c extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ DownloadStatusListener f31775a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ String f31776b;

            public c(a aVar, DownloadStatusListener downloadStatusListener, String str) {
                this.f31775a = downloadStatusListener;
                this.f31776b = str;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                this.f31775a.onDownloadError(this.f31776b);
            }
        }

        public class d extends com.meishu.sdk.core.safe.l {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ DownloadStatusListener f31777a;

            public d(a aVar, DownloadStatusListener downloadStatusListener) {
                this.f31777a = downloadStatusListener;
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                this.f31777a.onDownloadFinish();
            }
        }

        public a(String str, String[] strArr, Context context, String str2, String str3, String[] strArr2, String[] strArr3, String[] strArr4) {
            this.f31763a = str;
            this.f31764b = strArr;
            this.f31765c = context;
            this.f31766d = str2;
            this.f31767e = str3;
            this.f31768f = strArr2;
            this.f31769g = strArr3;
            this.f31770h = strArr4;
        }

        @Override // com.meishu.sdk.core.download.h
        public void a(File file, com.meishu.sdk.core.download.b bVar) {
            try {
                DownloadStatusListener downloadStatusListenerRemove = DownloadUtils.f31751j.remove(this.f31763a);
                if (downloadStatusListenerRemove != null) {
                    DownloadUtils.this.f31757d.post(new d(this, downloadStatusListenerRemove));
                }
                DownloadUtils downloadUtils = DownloadUtils.this;
                Context context = this.f31765c;
                downloadUtils.f31757d.post(new n(downloadUtils, bVar.f31542a, context));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.download.h
        public void b(com.meishu.sdk.core.download.b bVar) {
            try {
                DownloadStatusListener downloadStatusListener = DownloadUtils.f31751j.get(this.f31763a);
                if (downloadStatusListener != null) {
                    DownloadUtils.this.f31757d.post(new C0673a(this, downloadStatusListener));
                }
                if (DownloadUtils.f31749h == null) {
                    DownloadUtils.f31749h = new HashMap();
                }
                if (DownloadUtils.f31749h.containsKey(Integer.valueOf(DownloadUtils.a(this.f31763a)))) {
                    return;
                }
                try {
                    if (this.f31764b != null) {
                        LogUtil.d("DownloadUtils", "Report send dn_start");
                        for (String str : this.f31764b) {
                            if (!TextUtils.isEmpty(str)) {
                                a0.a(this.f31765c, str, new i());
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                l0 l0Var = new l0();
                l0Var.f31925b = this.f31766d;
                l0Var.f31926c = this.f31767e;
                l0Var.f31927d = this.f31764b;
                l0Var.f31928e = this.f31768f;
                l0Var.f31929f = this.f31769g;
                l0Var.f31930g = this.f31770h;
                DownloadUtils.f31749h.put(Integer.valueOf(DownloadUtils.a(this.f31763a)), l0Var);
                DownloadUtils.a(DownloadUtils.this, this.f31763a, this.f31765c, this.f31766d, this.f31767e);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.download.h
        public void a(com.meishu.sdk.core.download.b bVar) {
            DownloadUtils.this.f31757d.post(new b(bVar));
        }

        @Override // com.meishu.sdk.core.download.h
        public void a(com.meishu.sdk.core.download.b bVar, String str) {
            try {
                LogUtil.e("DownloadUtils", "err=" + str);
                DownloadStatusListener downloadStatusListenerRemove = DownloadUtils.f31751j.remove(this.f31763a);
                if (downloadStatusListenerRemove != null) {
                    DownloadUtils.this.f31757d.post(new c(this, downloadStatusListenerRemove, str));
                }
                a.C0651a.f31541a.a(this.f31763a);
                NotificationManager notificationManager = DownloadUtils.this.f31754a;
                if (notificationManager != null) {
                    notificationManager.cancel(DownloadUtils.a(this.f31763a));
                }
                DownloadUtils.f31749h.remove(Integer.valueOf(DownloadUtils.a(this.f31763a)));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(l0 l0Var) {
        String str = l0Var.f31926c;
        g0 g0Var = new g0(l0Var.f31925b, str, l0Var.f31927d, l0Var.f31928e, l0Var.f31929f, l0Var.f31930g);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f31750i.put(str, g0Var);
    }

    public void a(Context context, String str, String str2, String str3, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.meishu.sdk.core.download.a aVar = a.C0651a.f31541a;
        com.meishu.sdk.core.download.d dVar = aVar.f31538a.get(str);
        if (dVar == null) {
            dVar = new com.meishu.sdk.core.download.d(str, str2, "", str);
            aVar.f31538a.put(str, dVar);
        }
        com.meishu.sdk.core.download.d dVar2 = dVar;
        dVar2.f31557e.put(dVar2.f31554b, new a(str, strArr, context, str2, str3, strArr2, strArr3, strArr4));
        dVar2.a();
    }

    public static void a(Context context) {
        if (AdSdk.adConfig() == null || !AdSdk.adConfig().enableInstallBroadcast()) {
            return;
        }
        DownloadUtils downloadUtils = c.f31779a;
        if (downloadUtils.f31760g) {
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
            context.registerReceiver(new InstallSuccessReceiver(), intentFilter);
            downloadUtils.f31760g = true;
        } catch (Exception e2) {
            LogUtil.w("DownloadUtils", "Failed registerReceiver InstallSuccessReceiver");
            e2.printStackTrace();
        }
    }

    public static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return Math.abs(str.hashCode() + 199);
    }

    public static void a(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String strReplace = str.substring(str.lastIndexOf(ServiceReference.DELIMITER)).replace(ServiceReference.DELIMITER, "");
            String str2 = a.C0651a.f31541a.f31540c;
            try {
                strReplace = m1.a(MessageDigest.getInstance("MD5").digest(str.getBytes())).toLowerCase() + ".apk";
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            a(context, new File(str2, strReplace), f31749h.get(Integer.valueOf(a(str))));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, File file, l0 l0Var) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (l0Var != null) {
                        try {
                            String[] strArr = l0Var.f31929f;
                            if (strArr != null) {
                                LogUtil.d("DownloadUtils", "Report send dn_inst_start");
                                for (String str : strArr) {
                                    if (!TextUtils.isEmpty(str)) {
                                        a0.a(context, str, new i());
                                    }
                                }
                            }
                            a(l0Var);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    DownloadStatusListener downloadStatusListener = f31752k.get(l0Var != null ? l0Var.f31926c : null);
                    if (downloadStatusListener != null) {
                        new Handler(Looper.getMainLooper()).post(new b(downloadStatusListener));
                    }
                    try {
                        Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
                        intent.addFlags(C.ENCODING_PCM_MU_LAW);
                        intent.addFlags(1);
                        if (TextUtils.isEmpty(s.f31995a)) {
                            s.a(context, AdSdk.adConfig() != null ? AdSdk.adConfig().getAuthority() : null);
                        }
                        intent.setDataAndType(FileProvider.getUriForFile(context, s.f31995a, file), AdBaseConstants.MIME_APK);
                        context.startActivity(intent);
                        return;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
                return;
            }
        }
        LogUtil.e("DownloadUtils", "file not exists");
    }
}
