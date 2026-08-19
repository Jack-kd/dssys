package com.sigmob.sdk.downloader;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;

/* loaded from: classes4.dex */
public class h extends com.sigmob.sdk.downloader.core.listener.c {

    /* renamed from: a, reason: collision with root package name */
    private Notification.Builder f37720a;

    /* renamed from: b, reason: collision with root package name */
    private NotificationManager f37721b;

    /* renamed from: c, reason: collision with root package name */
    private RemoteViews f37722c;

    /* renamed from: e, reason: collision with root package name */
    private Context f37723e;

    public h(Context context) {
        this.f37723e = context.getApplicationContext();
        this.f37722c = new RemoteViews(context.getPackageName(), ResourceUtil.getLayoutId(context, "sig_download_notification_layout"));
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    public void c(f fVar) {
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_status"), "下载暂停");
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), "继续");
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), 0);
        this.f37721b.notify(fVar.c(), this.f37720a.build());
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    public void d(f fVar) {
    }

    public void a(PendingIntent pendingIntent) {
        this.f37722c.setOnClickPendingIntent(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), pendingIntent);
    }

    public void b(PendingIntent pendingIntent) {
        this.f37720a.setContentIntent(pendingIntent);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    public void a(f fVar) {
        if (!fVar.m().renameTo(fVar.n())) {
            SigmobLog.e("download temp file renameTo failed");
        }
        SigmobLog.d("FileDownloaderNotificationListener completed ");
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_speed"), "下载完成,立即安装");
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), 4);
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_status"), 8);
        this.f37720a.setOngoing(false);
        this.f37720a.setAutoCancel(true);
        this.f37721b.notify(fVar.c(), this.f37720a.build());
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    public void b(f fVar) {
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_status"), "准备下载");
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), "暂停");
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), 0);
        this.f37721b.notify(fVar.c(), this.f37720a.build());
    }

    public void a(f fVar, int i2, long j2, long j3) {
        RemoteViews remoteViews;
        int id;
        StringBuilder sb;
        String str;
        if (j2 > 1048576) {
            remoteViews = this.f37722c;
            id = ResourceUtil.getId(this.f37723e, "sig_download_notification_speed");
            sb = new StringBuilder();
            sb.append((j2 / 1024) / 1024);
            str = "M/";
        } else {
            remoteViews = this.f37722c;
            id = ResourceUtil.getId(this.f37723e, "sig_download_notification_speed");
            sb = new StringBuilder();
            sb.append(j2 / 1024);
            str = "KB/";
        }
        sb.append(str);
        sb.append((j3 / 1024) / 1024);
        sb.append("M");
        remoteViews.setTextViewText(id, sb.toString());
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_status"), "正在下载");
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), 0);
        this.f37721b.notify(fVar.c(), this.f37720a.build());
    }

    public void a(f fVar, long j2, long j3) {
        RemoteViews remoteViews;
        int id;
        StringBuilder sb;
        String str;
        if (j2 > 1048576) {
            remoteViews = this.f37722c;
            id = ResourceUtil.getId(this.f37723e, "sig_download_notification_speed");
            sb = new StringBuilder();
            sb.append((j2 / 1024) / 1024);
            str = "M/";
        } else {
            remoteViews = this.f37722c;
            id = ResourceUtil.getId(this.f37723e, "sig_download_notification_speed");
            sb = new StringBuilder();
            sb.append(j2 / 1024);
            str = "KB/";
        }
        sb.append(str);
        sb.append((j3 / 1024) / 1024);
        sb.append("M");
        remoteViews.setTextViewText(id, sb.toString());
        if (j3 > 0) {
            this.f37722c.setProgressBar(ResourceUtil.getId(this.f37723e, "sig_download_notification_progressBar"), 100, (int) ((j2 * 100) / j3), false);
        }
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), 0);
        this.f37721b.notify(fVar.c(), this.f37720a.build());
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC0773a
    public void a(f fVar, com.sigmob.sdk.downloader.core.cause.b bVar) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    public void a(f fVar, Exception exc) {
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_status"), "下载失败");
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), "重试");
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), 0);
        this.f37721b.notify(fVar.c(), this.f37720a.build());
    }

    public void a(String str, String str2, String str3) {
        Notification.Builder builder;
        this.f37721b = (NotificationManager) this.f37723e.getSystemService("notification");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f37721b.createNotificationChannel(androidx.browser.trusted.f.a("sig_filedownloader_notification", "sig_filedownloader", 1));
        }
        if (i2 >= 26) {
            o.a();
            builder = n.a(this.f37723e, "sig_filedownloader_notification");
        } else {
            builder = new Notification.Builder(this.f37723e);
        }
        this.f37720a = builder;
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_title"), str2);
        if (!TextUtils.isEmpty(str)) {
            try {
                C1258h.a().getBitmap(str, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.downloader.h.1
                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoadFailed() {
                    }

                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoaded(Bitmap bitmap) {
                        h.this.f37722c.setImageViewBitmap(ResourceUtil.getId(h.this.f37723e, "sig_download_notification_icon"), bitmap);
                    }
                });
            } catch (Throwable unused) {
            }
        }
        this.f37722c.setProgressBar(ResourceUtil.getId(this.f37723e, "sig_download_notification_progress"), 100, 0, false);
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_speed"), "0M/0M");
        this.f37722c.setTextViewText(ResourceUtil.getId(this.f37723e, "sig_download_notification_status"), "等待开始");
        this.f37722c.setViewVisibility(ResourceUtil.getId(this.f37723e, "sig_download_notification_button"), 0);
        this.f37720a.setDefaults(4).setOngoing(true).setSmallIcon(this.f37723e.getApplicationInfo().icon).setPriority(0);
        this.f37720a.setCustomContentView(this.f37722c);
    }
}
