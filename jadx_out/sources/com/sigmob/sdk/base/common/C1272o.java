package com.sigmob.sdk.base.common;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.Md5Util;
import com.sigmob.sdk.base.common.C1272o;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.l;
import com.sigmob.sdk.videoAd.C1377d;
import com.sigmob.windad.WindAds;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* renamed from: com.sigmob.sdk.base.common.o, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1272o {

    /* renamed from: a, reason: collision with root package name */
    private static final HashMap<String, com.sigmob.sdk.downloader.f> f35990a = new HashMap<>();

    /* renamed from: com.sigmob.sdk.base.common.o$2, reason: invalid class name */
    public class AnonymousClass2 extends com.sigmob.sdk.downloader.h {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f35993a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f35994b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f35995c;

        /* renamed from: e, reason: collision with root package name */
        private l.a f35996e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Context context, Context context2, String str, List list) {
            super(context);
            this.f35993a = context2;
            this.f35994b = str;
            this.f35995c = list;
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void a(final com.sigmob.sdk.downloader.f fVar) {
            this.f35996e = l.a.COMPLETED;
            super.a(fVar);
            WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.o.2.1
                @Override // java.lang.Runnable
                public void run() {
                    C1276q.a(AnonymousClass2.this.f35993a, fVar.n().getAbsolutePath(), (BaseAdUnit) null);
                }
            });
            final String str = this.f35994b;
            ad.a(PointCategory.APKDOWNLOAD, "end", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.common.x0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass2.c(str, obj);
                }
            });
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void b(com.sigmob.sdk.downloader.f fVar) {
            this.f35996e = l.a.RUNNING;
            super.b(fVar);
            final String str = this.f35994b;
            ad.a(PointCategory.APKDOWNLOAD, "start", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.common.y0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass2.b(str, obj);
                }
            });
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void c(com.sigmob.sdk.downloader.f fVar) {
            l.a aVar = this.f35996e;
            l.a aVar2 = l.a.CANCELED;
            if (aVar == aVar2) {
                return;
            }
            this.f35996e = aVar2;
            super.c(fVar);
            final String str = this.f35994b;
            ad.a(PointCategory.APKDOWNLOAD, C1244a.f35682j, (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.common.w0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass2.a(str, obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put("status", String.valueOf(1));
                options.put("url", str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put("status", String.valueOf(1));
                options.put("url", str);
            }
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC0773a
        public void a(com.sigmob.sdk.downloader.f fVar, int i2, long j2, long j3) {
            super.a(fVar, i2, j2, j3);
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC0773a
        public void a(com.sigmob.sdk.downloader.f fVar, long j2, long j3) {
            this.f35996e = l.a.RUNNING;
            super.a(fVar, j2, j3);
            List<C1377d> listA = C1377d.a(this.f35995c, C1244a.f35684l, j2, j3);
            if (com.sigmob.sdk.base.utils.f.a(listA)) {
                return;
            }
            for (final C1377d c1377d : listA) {
                c1377d.setTracked();
                final String str = this.f35994b;
                ad.a(PointCategory.APKDOWNLOAD, "progress", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.common.v0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1272o.AnonymousClass2.a(str, c1377d, obj);
                    }
                });
            }
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void a(com.sigmob.sdk.downloader.f fVar, final Exception exc) {
            this.f35996e = l.a.UNKNOWN;
            super.a(fVar, exc);
            if (fVar.C()) {
                return;
            }
            ak.a(this.f35993a, "下载失败，" + exc.getMessage(), 1).show();
            final String str = this.f35994b;
            ad.a(PointCategory.APKDOWNLOAD, "end", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.common.u0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass2.a(exc, str, obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Exception exc, String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put("status", String.valueOf(0));
                options.put("error", exc.getMessage());
                options.put("url", str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, C1377d c1377d, Object obj) {
            int i2;
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put("url", str);
                String event = c1377d.getEvent();
                event.getClass();
                switch (event) {
                    case "download_quarter":
                        i2 = 25;
                        break;
                    case "download_three_quarter":
                        i2 = 75;
                        break;
                    case "download_two_quarter":
                        i2 = 50;
                        break;
                    default:
                        return;
                }
                options.put("status", String.valueOf(i2));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(String str, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put("status", String.valueOf(1));
                options.put("url", str);
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.o$3, reason: invalid class name */
    public class AnonymousClass3 extends com.sigmob.sdk.downloader.h {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseAdUnit f35999a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f36000b;

        /* renamed from: c, reason: collision with root package name */
        private l.a f36001c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Context context, BaseAdUnit baseAdUnit, Context context2) {
            super(context);
            this.f35999a = baseAdUnit;
            this.f36000b = context2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Context context, com.sigmob.sdk.downloader.f fVar, BaseAdUnit baseAdUnit) {
            C1276q.a(context, fVar.n().getAbsolutePath(), baseAdUnit);
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void b(com.sigmob.sdk.downloader.f fVar) {
            this.f36001c = l.a.RUNNING;
            super.b(fVar);
            ad.a(PointCategory.APKDOWNLOAD, "start", this.f35999a, new ad.a() { // from class: com.sigmob.sdk.base.common.D0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass3.b(obj);
                }
            });
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void c(com.sigmob.sdk.downloader.f fVar) {
            l.a aVar = this.f36001c;
            l.a aVar2 = l.a.CANCELED;
            if (aVar == aVar2) {
                return;
            }
            this.f36001c = aVar2;
            super.c(fVar);
            ad.a(PointCategory.APKDOWNLOAD, C1244a.f35682j, this.f35999a, new ad.a() { // from class: com.sigmob.sdk.base.common.E0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass3.a(obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("status", String.valueOf(1));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("status", String.valueOf(1));
            }
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void a(final com.sigmob.sdk.downloader.f fVar) {
            this.f36001c = l.a.COMPLETED;
            super.a(fVar);
            this.f35999a.enableUseDownloadApk(true);
            if (this.f35999a.isRecord()) {
                ad.a(PointCategory.DOWNLOAD_END, "1", this.f35999a, (ad.a) null);
                com.sigmob.sdk.base.network.h.a(this.f35999a, C1244a.f35652D);
            }
            Handler handler = WindAds.sharedAds().getHandler();
            final Context context = this.f36000b;
            final BaseAdUnit baseAdUnit = this.f35999a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.base.common.B0
                @Override // java.lang.Runnable
                public final void run() {
                    C1272o.AnonymousClass3.a(context, fVar, baseAdUnit);
                }
            });
            ad.a(PointCategory.APKDOWNLOAD, "end", this.f35999a, new ad.a() { // from class: com.sigmob.sdk.base.common.C0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass3.c(obj);
                }
            });
            HashMap map = new HashMap();
            map.put("result", "1");
            map.put("downloadId", this.f35999a.getDownloadId());
            BaseBroadcastReceiver.a(this.f36000b, this.f35999a.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_END);
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC0773a
        public void a(com.sigmob.sdk.downloader.f fVar, int i2, long j2, long j3) {
            super.a(fVar, i2, j2, j3);
            HashMap map = new HashMap();
            map.put("result", "1");
            map.put("downloadId", this.f35999a.getDownloadId());
            BaseBroadcastReceiver.a(this.f36000b, this.f35999a.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC0773a
        public void a(com.sigmob.sdk.downloader.f fVar, long j2, long j3) {
            this.f36001c = l.a.RUNNING;
            super.a(fVar, j2, j3);
            List<C1377d> listA = C1377d.a(this.f35999a.getDownloadQuarterTrack(), C1244a.f35684l, j2, j3);
            if (com.sigmob.sdk.base.utils.f.a(listA)) {
                return;
            }
            for (final C1377d c1377d : listA) {
                c1377d.setTracked();
                ad.a(PointCategory.APKDOWNLOAD, "progress", this.f35999a, new ad.a() { // from class: com.sigmob.sdk.base.common.z0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        C1272o.AnonymousClass3.a(c1377d, obj);
                    }
                });
            }
        }

        @Override // com.sigmob.sdk.downloader.h, com.sigmob.sdk.downloader.core.listener.c
        public void a(com.sigmob.sdk.downloader.f fVar, final Exception exc) {
            this.f36001c = l.a.UNKNOWN;
            super.a(fVar, exc);
            if (fVar.C()) {
                return;
            }
            ak.a(this.f36000b, "下载失败，" + exc.getMessage(), 1).show();
            if (this.f35999a.isRecord()) {
                ad.a(PointCategory.DOWNLOAD_END, "0", this.f35999a, (ad.a) null);
            }
            ad.a(PointCategory.APKDOWNLOAD, "end", this.f35999a, new ad.a() { // from class: com.sigmob.sdk.base.common.A0
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    C1272o.AnonymousClass3.a(exc, obj);
                }
            });
            HashMap map = new HashMap();
            map.put("result", "0");
            map.put("downloadId", this.f35999a.getDownloadId());
            BaseBroadcastReceiver.a(this.f36000b, this.f35999a.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_END);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(C1377d c1377d, Object obj) {
            int i2;
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                String event = c1377d.getEvent();
                event.getClass();
                switch (event) {
                    case "download_quarter":
                        i2 = 25;
                        break;
                    case "download_three_quarter":
                        i2 = 75;
                        break;
                    case "download_two_quarter":
                        i2 = 50;
                        break;
                    default:
                        return;
                }
                options.put("status", String.valueOf(i2));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Exception exc, Object obj) {
            if (obj instanceof PointEntitySigmob) {
                Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
                options.put("status", String.valueOf(0));
                options.put("error", exc.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Object obj) {
            if (obj instanceof PointEntitySigmob) {
                ((PointEntitySigmob) obj).getOptions().put("status", String.valueOf(1));
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.o$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f36002a;

        static {
            int[] iArr = new int[l.a.values().length];
            f36002a = iArr;
            try {
                iArr[l.a.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36002a[l.a.COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36002a[l.a.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36002a[l.a.CANCELED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.o$a */
    public static class a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        static final String f36003a = "downloadButtonAction";

        /* renamed from: b, reason: collision with root package name */
        static final String f36004b = "downloadAction";

        /* renamed from: c, reason: collision with root package name */
        private final com.sigmob.sdk.downloader.f f36005c;

        /* renamed from: d, reason: collision with root package name */
        private final BaseAdUnit f36006d;

        /* renamed from: e, reason: collision with root package name */
        private final String f36007e;

        public a(com.sigmob.sdk.downloader.f fVar, String str, BaseAdUnit baseAdUnit) {
            this.f36005c = fVar;
            this.f36007e = str;
            this.f36006d = baseAdUnit;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (this.f36005c == null || com.sigmob.sdk.base.utils.s.a((CharSequence) this.f36007e)) {
                return;
            }
            if (!com.sigmob.sdk.base.utils.s.a((CharSequence) intent.getAction(), (CharSequence) this.f36007e)) {
                if (com.sigmob.sdk.downloader.l.c(this.f36005c)) {
                    WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.o.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            C1276q.a(com.sigmob.sdk.b.e(), a.this.f36005c.n().getAbsolutePath(), a.this.f36006d);
                        }
                    });
                }
            } else {
                if (!com.sigmob.sdk.downloader.l.a(this.f36005c)) {
                    this.f36005c.B();
                    return;
                }
                if (this.f36006d != null) {
                    HashMap map = new HashMap();
                    map.put("result", "1");
                    map.put("downloadId", this.f36006d.getDownloadId());
                    BaseBroadcastReceiver.a(context, this.f36006d.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_PAUSE);
                }
                Handler handler = WindAds.sharedAds().getHandler();
                com.sigmob.sdk.downloader.f fVar = this.f36005c;
                Objects.requireNonNull(fVar);
                handler.postDelayed(new s0(fVar), 200L);
            }
        }
    }

    public static int a(Context context, BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.downloader.f downloadTask = baseAdUnit.getDownloadTask();
        if (downloadTask == null || !com.sigmob.sdk.downloader.l.a(downloadTask)) {
            return -1;
        }
        HashMap map = new HashMap();
        map.put("result", "1");
        map.put("downloadId", baseAdUnit.getDownloadId());
        BaseBroadcastReceiver.a(context, baseAdUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_PAUSE);
        WindAds.sharedAds().getHandler().postDelayed(new s0(downloadTask), 200L);
        return 0;
    }

    public static int b(Context context, BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.downloader.f downloadTask = baseAdUnit.getDownloadTask();
        boolean zA = com.sigmob.sdk.downloader.l.a(downloadTask);
        if (downloadTask == null || zA) {
            return -1;
        }
        downloadTask.B();
        return 0;
    }

    private static String a(BaseAdUnit baseAdUnit, String str) {
        String apkMd5 = baseAdUnit.getApkMd5();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) apkMd5)) {
            apkMd5 = Md5Util.md5(str);
        }
        return apkMd5 + ".apk";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(String str, String str2, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setFinal_url(str);
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("apkfile", str2);
            options.put("apkurl", str);
            pointEntitySigmob.setOptions(options);
        }
    }

    public static int c(Context context, BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.downloader.f downloadTask = baseAdUnit.getDownloadTask();
        if (downloadTask == null) {
            return -1;
        }
        downloadTask.a((com.sigmob.sdk.downloader.c) null);
        downloadTask.E();
        com.sigmob.sdk.downloader.g.j().c().b(downloadTask.c());
        File fileM = downloadTask.m();
        if (fileM != null && fileM.exists()) {
            fileM.delete();
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(downloadTask.c());
        }
        File fileN = downloadTask.n();
        if (fileN != null && fileN.exists()) {
            fileN.delete();
        }
        HashMap map = new HashMap();
        map.put("result", "0");
        map.put("downloadId", baseAdUnit.getDownloadId());
        BaseBroadcastReceiver.a(context, baseAdUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_END);
        baseAdUnit.setDownloadId(null);
        baseAdUnit.setDownloadTask(null);
        if (baseAdUnit.isRecord()) {
            ad.a(PointCategory.DOWNLOAD_END, "0", baseAdUnit, (ad.a) null);
        }
        ad.a(PointCategory.APKDOWNLOAD, "end", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.t0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                C1272o.a(obj);
            }
        });
        return 0;
    }

    public static long[] d(Context context, BaseAdUnit baseAdUnit) {
        l.a aVarB;
        long[] jArr = {-1, -1, 0};
        com.sigmob.sdk.downloader.f downloadTask = baseAdUnit.getDownloadTask();
        if (downloadTask == null) {
            return jArr;
        }
        com.sigmob.sdk.downloader.core.breakpoint.c cVarY = downloadTask.y();
        if (cVarY == null) {
            aVarB = com.sigmob.sdk.downloader.l.a(baseAdUnit.getDownloadUrl(), com.sigmob.sdk.base.utils.n.a(context).getAbsolutePath(), baseAdUnit.getApkName());
        } else {
            jArr[0] = cVarY.i();
            jArr[1] = cVarY.j();
            aVarB = com.sigmob.sdk.downloader.l.b(downloadTask);
        }
        int i2 = AnonymousClass4.f36002a[aVarB.ordinal()];
        if (i2 == 1) {
            jArr[2] = 2;
            return jArr;
        }
        if (i2 == 2) {
            jArr[2] = 8;
            return jArr;
        }
        if (i2 == 3) {
            jArr[2] = 1;
            return jArr;
        }
        if (i2 != 4) {
            jArr[2] = 16;
            return jArr;
        }
        jArr[2] = 4;
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, com.sigmob.sdk.downloader.f fVar, BaseAdUnit baseAdUnit) {
        C1276q.a(context, fVar.n().getAbsolutePath(), baseAdUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
            options.put("status", String.valueOf(0));
            options.put("error", "cancel download");
        }
    }

    public static void a(final String str, final BaseAdUnit baseAdUnit, boolean z2) {
        String str2;
        Object obj;
        final String absolutePath;
        StringBuilder sb;
        PendingIntent broadcast;
        com.sigmob.sdk.downloader.core.breakpoint.g gVarC;
        final Context contextE = com.sigmob.sdk.b.e();
        try {
            final com.sigmob.sdk.downloader.f downloadTask = baseAdUnit.getDownloadTask();
            if (downloadTask != null) {
                absolutePath = downloadTask.n().getAbsolutePath();
                try {
                    if (com.sigmob.sdk.downloader.l.c(downloadTask)) {
                        if (baseAdUnit.isRecord()) {
                            com.sigmob.sdk.base.network.h.a(baseAdUnit, C1244a.f35652D);
                        }
                        WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.o0
                            @Override // java.lang.Runnable
                            public final void run() {
                                C1272o.a(contextE, downloadTask, baseAdUnit);
                            }
                        });
                        return;
                    } else {
                        if (com.sigmob.sdk.downloader.l.a(downloadTask)) {
                            ak.a(contextE, "正在下载", 1).show();
                            HashMap map = new HashMap();
                            map.put("result", "1");
                            map.put("downloadId", baseAdUnit.getDownloadId());
                            BaseBroadcastReceiver.a(contextE, baseAdUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
                            return;
                        }
                        str2 = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
                        obj = "downloadId";
                    }
                } catch (Throwable th) {
                    th = th;
                    str2 = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
                    obj = "downloadId";
                    HashMap map2 = new HashMap();
                    map2.put("result", "0");
                    map2.put(obj, baseAdUnit.getDownloadId());
                    BaseBroadcastReceiver.a(contextE, baseAdUnit.getUuid(), map2, str2);
                    ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.q0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1272o.a(str, absolutePath, obj2);
                        }
                    });
                    ad.a(PointCategory.APKDOWNLOAD, "start", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.r0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1272o.a(th, contextE, obj2);
                        }
                    });
                }
            } else {
                f.a aVarC = new f.a(str, com.sigmob.sdk.base.utils.n.a(contextE)).a(baseAdUnit.getApkName()).c(false);
                aVarC.a("User-Agent", Networking.getUserAgent());
                if (!z2) {
                    aVarC = aVarC.a(1);
                }
                downloadTask = aVarC.a();
                if (com.sigmob.sdk.downloader.l.a(downloadTask)) {
                    com.sigmob.sdk.downloader.g.j().a().a((com.sigmob.sdk.downloader.core.a) downloadTask);
                }
                File fileN = downloadTask.n();
                if (fileN != null && fileN.exists()) {
                    fileN.delete();
                }
                if (fileN.getParentFile().exists()) {
                    fileN.getParentFile().mkdirs();
                }
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(contextE, baseAdUnit, contextE);
                String str3 = "downloadButtonAction_" + baseAdUnit.getUuid() + "_" + downloadTask.c();
                Intent intent = new Intent(str3);
                intent.setPackage(contextE.getPackageName());
                a aVar = new a(downloadTask, str3, baseAdUnit);
                str2 = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
                try {
                    sb = new StringBuilder();
                    sb.append("downloadAction_");
                    obj = "downloadId";
                } catch (Throwable th2) {
                    th = th2;
                    obj = "downloadId";
                    absolutePath = null;
                    HashMap map22 = new HashMap();
                    map22.put("result", "0");
                    map22.put(obj, baseAdUnit.getDownloadId());
                    BaseBroadcastReceiver.a(contextE, baseAdUnit.getUuid(), map22, str2);
                    ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.q0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1272o.a(str, absolutePath, obj2);
                        }
                    });
                    ad.a(PointCategory.APKDOWNLOAD, "start", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.r0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1272o.a(th, contextE, obj2);
                        }
                    });
                }
                try {
                    sb.append(baseAdUnit.getUuid());
                    sb.append("_");
                    sb.append(downloadTask.c());
                    IntentFilter intentFilter = new IntentFilter(sb.toString());
                    intentFilter.addAction(str3);
                    com.sigmob.sdk.base.utils.h.a(contextE, aVar, intentFilter);
                    Intent intent2 = new Intent("downloadAction_" + baseAdUnit.getUuid() + "_" + downloadTask.c());
                    intent2.setPackage(contextE.getPackageName());
                    List<C1377d> arrayList = new ArrayList<>();
                    arrayList.add(new C1377d(C1244a.f35684l, 0.25f));
                    arrayList.add(new C1377d(C1244a.f35671W, 0.5f));
                    arrayList.add(new C1377d(C1244a.f35672X, 0.75f));
                    baseAdUnit.setDownloadQuarterTrack(arrayList);
                    anonymousClass3.a(baseAdUnit.getIconUrl(), baseAdUnit.getAppName(), baseAdUnit.getDesc());
                    if (Build.VERSION.SDK_INT >= 31) {
                        anonymousClass3.a(PendingIntent.getBroadcast(contextE, 0, intent, 201326592));
                        broadcast = PendingIntent.getBroadcast(contextE, 0, intent2, 201326592);
                    } else {
                        anonymousClass3.a(PendingIntent.getBroadcast(contextE, 0, intent, 134217728));
                        broadcast = PendingIntent.getBroadcast(contextE, 0, intent2, 134217728);
                    }
                    anonymousClass3.b(broadcast);
                    downloadTask.a((com.sigmob.sdk.downloader.c) anonymousClass3);
                    baseAdUnit.setDownloadTask(downloadTask);
                    if (!baseAdUnit.isResumableDownload() && (gVarC = com.sigmob.sdk.downloader.g.j().c()) != null) {
                        gVarC.b(downloadTask.c());
                    }
                    absolutePath = null;
                } catch (Throwable th3) {
                    th = th3;
                    absolutePath = null;
                    HashMap map222 = new HashMap();
                    map222.put("result", "0");
                    map222.put(obj, baseAdUnit.getDownloadId());
                    BaseBroadcastReceiver.a(contextE, baseAdUnit.getUuid(), map222, str2);
                    ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.q0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1272o.a(str, absolutePath, obj2);
                        }
                    });
                    ad.a(PointCategory.APKDOWNLOAD, "start", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.r0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1272o.a(th, contextE, obj2);
                        }
                    });
                }
            }
            try {
                baseAdUnit.setDownloadId(Long.valueOf(downloadTask.c()));
                downloadTask.B();
                ak.a(contextE, "已开始下载", 1).show();
                if (baseAdUnit.isRecord()) {
                    com.sigmob.sdk.base.network.h.a(baseAdUnit, "download_start");
                    ad.a("download_start", "1", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.p0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj2) {
                            C1272o.b(str, absolutePath, obj2);
                        }
                    });
                }
            } catch (Throwable th4) {
                th = th4;
                HashMap map2222 = new HashMap();
                map2222.put("result", "0");
                map2222.put(obj, baseAdUnit.getDownloadId());
                BaseBroadcastReceiver.a(contextE, baseAdUnit.getUuid(), map2222, str2);
                ad.a("download_start", "0", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.q0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj2) {
                        C1272o.a(str, absolutePath, obj2);
                    }
                });
                ad.a(PointCategory.APKDOWNLOAD, "start", baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.r0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj2) {
                        C1272o.a(th, contextE, obj2);
                    }
                });
            }
        } catch (Throwable th5) {
            th = th5;
            str2 = IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setFinal_url(str);
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("apkfile", str2);
            options.put("apkurl", str);
            pointEntitySigmob.setOptions(options);
        }
    }

    public static void a(String str, String str2, String str3, String str4, boolean z2) {
        final Context contextE = com.sigmob.sdk.b.e();
        HashMap<String, com.sigmob.sdk.downloader.f> map = f35990a;
        final com.sigmob.sdk.downloader.f fVar = map.get(str);
        if (fVar != null) {
            if (com.sigmob.sdk.downloader.l.c(fVar)) {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.common.o.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1276q.a(contextE, fVar.n().getAbsolutePath(), (BaseAdUnit) null);
                    }
                });
                return;
            } else if (com.sigmob.sdk.downloader.l.a(fVar)) {
                ak.a(contextE, "正在下载", 1).show();
                return;
            } else {
                ak.a(contextE, "继续下载", 1).show();
                fVar.B();
                return;
            }
        }
        f.a aVarC = new f.a(str2, com.sigmob.sdk.base.utils.n.a(contextE)).a(str).c(false);
        aVarC.a("User-Agent", Networking.getUserAgent());
        if (!z2) {
            aVarC = aVarC.a(1);
        }
        com.sigmob.sdk.downloader.f fVarA = aVarC.a();
        if (com.sigmob.sdk.downloader.l.a(fVarA)) {
            com.sigmob.sdk.downloader.g.j().a().a((com.sigmob.sdk.downloader.core.a) fVarA);
        }
        File fileN = fVarA.n();
        if (fileN != null && fileN.exists()) {
            fileN.delete();
        }
        if (fileN.getParentFile().exists()) {
            fileN.getParentFile().mkdirs();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C1377d(C1244a.f35684l, 0.25f));
        arrayList.add(new C1377d(C1244a.f35671W, 0.5f));
        arrayList.add(new C1377d(C1244a.f35672X, 0.75f));
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(contextE, contextE, str2, arrayList);
        String str5 = "downloadButtonAction_" + str + "_" + fVarA.c();
        Intent intent = new Intent(str5);
        intent.setPackage(contextE.getPackageName());
        a aVar = new a(fVarA, str5, null);
        IntentFilter intentFilter = new IntentFilter("downloadAction_" + str + "_" + fVarA.c());
        intentFilter.addAction(str5);
        com.sigmob.sdk.base.utils.h.a(contextE, aVar, intentFilter);
        Intent intent2 = new Intent("downloadAction_" + str + "_" + fVarA.c());
        intent2.setPackage(contextE.getPackageName());
        anonymousClass2.a(str3, str4, str);
        int i2 = Build.VERSION.SDK_INT >= 31 ? 201326592 : 134217728;
        anonymousClass2.a(PendingIntent.getBroadcast(contextE, 0, intent, i2));
        anonymousClass2.b(PendingIntent.getBroadcast(contextE, 0, intent2, i2));
        fVarA.a((com.sigmob.sdk.downloader.c) anonymousClass2);
        fVarA.B();
        ak.a(contextE, "已开始下载", 1).show();
        map.put(str, fVarA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th, Context context, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            Map<String, String> options = ((PointEntitySigmob) obj).getOptions();
            options.put("status", String.valueOf(0));
            options.put("error", th.getMessage());
            ak.a(context, "下载失败，" + th.getMessage(), 1).show();
        }
    }
}
