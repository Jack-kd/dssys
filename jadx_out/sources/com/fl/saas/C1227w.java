package com.fl.saas;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import com.fl.saas.adx.base.download.DownloadActionReceiver;

/* renamed from: com.fl.saas.w, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1227w extends ContextWrapper {

    /* renamed from: f, reason: collision with root package name */
    private static String f30683f = "fl_download_notification";

    /* renamed from: g, reason: collision with root package name */
    public static String f30684g = "com.fl.saas.s2s.sdk.helper.download.action.start";

    /* renamed from: h, reason: collision with root package name */
    public static String f30685h = "com.fl.saas.s2s.sdk.helper.download.action.pause";

    /* renamed from: i, reason: collision with root package name */
    public static String f30686i = "com.fl.saas.s2s.sdk.helper.download.action.cancel";

    /* renamed from: a, reason: collision with root package name */
    private NotificationManager f30687a;

    /* renamed from: b, reason: collision with root package name */
    private RemoteViews f30688b;

    /* renamed from: c, reason: collision with root package name */
    private NotificationCompat.Builder f30689c;

    /* renamed from: d, reason: collision with root package name */
    private String f30690d;

    /* renamed from: e, reason: collision with root package name */
    private String f30691e;

    public C1227w(Context context, String str, String str2) {
        super(context);
        this.f30690d = str;
        this.f30691e = str2;
        str2 = TextUtils.isEmpty(str2) ? "正在下载应用" : str2;
        RemoteViews remoteViews = new RemoteViews(context.getApplicationContext().getPackageName(), R.layout.fl_adx_download_notification);
        this.f30688b = remoteViews;
        remoteViews.setImageViewBitmap(R.id.iv_logo, b());
        this.f30688b.setTextViewText(R.id.tv_name, str2);
        Intent intent = new Intent(this, (Class<?>) DownloadActionReceiver.class);
        intent.setAction(f30685h);
        intent.putExtra("downLoadUrl", str);
        int i2 = Build.VERSION.SDK_INT;
        this.f30688b.setOnClickPendingIntent(R.id.tv_action, PendingIntent.getBroadcast(this, 0, intent, i2 >= 31 ? 33554432 : 134217728));
        Intent intent2 = new Intent(this, (Class<?>) DownloadActionReceiver.class);
        intent2.setAction(f30686i);
        intent2.putExtra("downLoadUrl", str);
        this.f30688b.setOnClickPendingIntent(R.id.tv_cancel, PendingIntent.getBroadcast(this, 0, intent2, i2 >= 31 ? 33554432 : 134217728));
        if (i2 >= 26) {
            T.d.a();
            NotificationChannel notificationChannelA = androidx.browser.trusted.f.a(f30683f, "应用下载", 2);
            notificationChannelA.setSound(null, null);
            notificationChannelA.enableLights(true);
            notificationChannelA.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannelA.setShowBadge(true);
            c().createNotificationChannel(notificationChannelA);
        }
        this.f30689c = d();
        c().notify(0, this.f30689c.build());
    }

    private Bitmap b() {
        int identifier = getResources().getIdentifier("fl_ic_download", "drawable", getPackageName());
        if (identifier != 0) {
            return BitmapFactory.decodeResource(getResources(), identifier);
        }
        return null;
    }

    private NotificationManager c() {
        if (this.f30687a == null) {
            this.f30687a = (NotificationManager) getSystemService("notification");
        }
        return this.f30687a;
    }

    private NotificationCompat.Builder d() {
        return new NotificationCompat.Builder(this, f30683f).setSmallIcon(e()).setLargeIcon(b()).setCustomContentView(this.f30688b).setCustomHeadsUpContentView(this.f30688b).setCustomBigContentView(this.f30688b).setContent(this.f30688b).setAutoCancel(true).setPriority(-1).setDefaults(-1);
    }

    private int e() {
        int identifier = getResources().getIdentifier("fl_ic_download", "drawable", getPackageName());
        return identifier == 0 ? getApplicationInfo().icon : identifier;
    }

    public void a() {
        c().cancel(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0045 A[PHI: r6
      0x0045: PHI (r6v3 android.content.Intent) = (r6v2 android.content.Intent), (r6v9 android.content.Intent) binds: [B:12:0x0043, B:9:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[PHI: r6
      0x0048: PHI (r6v7 android.content.Intent) = (r6v2 android.content.Intent), (r6v9 android.content.Intent) binds: [B:12:0x0043, B:9:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r6) {
        /*
            r5 = this;
            androidx.core.app.NotificationCompat$Builder r0 = r5.f30689c
            if (r0 == 0) goto L7b
            android.widget.RemoteViews r0 = r5.f30688b
            if (r0 == 0) goto L7b
            r1 = 31
            java.lang.String r2 = "downLoadUrl"
            java.lang.Class<com.fl.saas.adx.base.download.DownloadActionReceiver> r3 = com.fl.saas.adx.base.download.DownloadActionReceiver.class
            if (r6 == 0) goto L2b
            int r6 = com.fl.saas.R.id.tv_action
            java.lang.String r4 = "暂停"
            r0.setTextViewText(r6, r4)
            android.content.Intent r6 = new android.content.Intent
            r6.<init>(r5, r3)
            java.lang.String r0 = com.fl.saas.C1227w.f30685h
            r6.setAction(r0)
            java.lang.String r0 = r5.f30690d
            r6.putExtra(r2, r0)
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r1) goto L48
            goto L45
        L2b:
            int r6 = com.fl.saas.R.id.tv_action
            java.lang.String r4 = "继续"
            r0.setTextViewText(r6, r4)
            android.content.Intent r6 = new android.content.Intent
            r6.<init>(r5, r3)
            java.lang.String r0 = com.fl.saas.C1227w.f30684g
            r6.setAction(r0)
            java.lang.String r0 = r5.f30690d
            r6.putExtra(r2, r0)
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r1) goto L48
        L45:
            r0 = 33554432(0x2000000, float:9.403955E-38)
            goto L4a
        L48:
            r0 = 134217728(0x8000000, float:3.85186E-34)
        L4a:
            r1 = 0
            android.app.PendingIntent r6 = android.app.PendingIntent.getBroadcast(r5, r1, r6, r0)
            android.widget.RemoteViews r0 = r5.f30688b
            int r2 = com.fl.saas.R.id.tv_action
            r0.setOnClickPendingIntent(r2, r6)
            android.app.NotificationManager r6 = r5.c()
            androidx.core.app.NotificationCompat$Builder r0 = r5.f30689c
            android.widget.RemoteViews r2 = r5.f30688b
            androidx.core.app.NotificationCompat$Builder r0 = r0.setCustomContentView(r2)
            android.widget.RemoteViews r2 = r5.f30688b
            androidx.core.app.NotificationCompat$Builder r0 = r0.setCustomHeadsUpContentView(r2)
            android.widget.RemoteViews r2 = r5.f30688b
            androidx.core.app.NotificationCompat$Builder r0 = r0.setCustomBigContentView(r2)
            android.widget.RemoteViews r2 = r5.f30688b
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContent(r2)
            android.app.Notification r0 = r0.build()
            r6.notify(r1, r0)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.C1227w.a(boolean):void");
    }

    public void a(int i2, String str) {
        RemoteViews remoteViews;
        String str2 = i2 + "%";
        if (this.f30689c == null || (remoteViews = this.f30688b) == null) {
            return;
        }
        remoteViews.setTextViewText(R.id.tv_down_tips, str);
        this.f30688b.setTextViewText(R.id.tv_progress, str2);
        this.f30688b.setProgressBar(R.id.pb_progress, 100, i2, false);
        c().notify(0, this.f30689c.setCustomContentView(this.f30688b).setCustomHeadsUpContentView(this.f30688b).setCustomBigContentView(this.f30688b).setContent(this.f30688b).build());
    }
}
