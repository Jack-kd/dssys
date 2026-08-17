package com.ubix.ssp.ad.e.s;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.sigmob.sdk.downloader.n;
import com.sigmob.sdk.downloader.o;

/* loaded from: classes5.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static NotificationManager f47090a;

    public static com.ubix.ssp.ad.e.s.j.a a(Context context, com.ubix.ssp.ad.e.s.g.a aVar) {
        Notification.Builder builder;
        com.ubix.ssp.ad.e.s.j.a aVar2 = new com.ubix.ssp.ad.e.s.j.a();
        try {
            int iD = aVar.d();
            String packageName = context.getPackageName();
            String strB = com.ubix.ssp.ad.e.a0.c.b();
            if (f47090a == null) {
                f47090a = (NotificationManager) context.getSystemService("notification");
            }
            if (Build.VERSION.SDK_INT >= 26) {
                T.d.a();
                NotificationChannel notificationChannelA = androidx.browser.trusted.f.a(packageName, "download", 3);
                notificationChannelA.setSound(null, null);
                f47090a.createNotificationChannel(notificationChannelA);
                o.a();
                builder = n.a(context, packageName);
            } else {
                builder = new Notification.Builder(context);
            }
            Intent intent = new Intent();
            intent.putExtra("service_intent_notify_id", iD);
            intent.setAction("ACTION_USER_OPERATION");
            intent.setComponent(new ComponentName(context.getPackageName(), "com.ubix.ssp.open.comm.DownloadService"));
            PendingIntent service = PendingIntent.getService(context, iD, intent, 134217728);
            String strD = (aVar.b() == null || aVar.b().d() == null) ? "" : aVar.b().d();
            builder.setOnlyAlertOnce(true);
            builder.setOngoing(false);
            builder.setSound(null).setContentTitle(strB).setSubText(strD).setContentIntent(service).setLargeIcon(BitmapFactory.decodeResource(context.getResources(), com.ubix.ssp.ad.e.a0.c.d(context))).setSmallIcon(com.ubix.ssp.ad.e.a0.c.d(context)).setTicker(strB).setProgress(0, 0, true);
            aVar2.f47118b = builder;
            aVar2.f47117a = iD;
            f47090a.notify(iD, builder.build());
        } catch (Throwable unused) {
        }
        return aVar2;
    }

    public static void b(Notification.Builder builder, int i2) {
        builder.setContentTitle("下载暂停");
        NotificationManager notificationManager = f47090a;
        if (notificationManager != null) {
            notificationManager.notify(i2, builder.build());
        }
    }

    public static void a(int i2) {
        NotificationManager notificationManager = f47090a;
        if (notificationManager != null) {
            notificationManager.cancel(i2);
        }
    }

    public static void a(Notification.Builder builder, int i2) {
        builder.setContentTitle("下载失败");
        if (f47090a != null) {
            builder.setContentIntent(null);
            builder.setAutoCancel(true);
            f47090a.notify(i2, builder.build());
            a(i2);
        }
    }

    public static void a(Notification.Builder builder, int i2, int i3) {
        builder.setProgress(100, i3, false);
        builder.setContentTitle("正在下载 " + i3 + "%");
        if (i3 == 100) {
            builder.setContentTitle("下载完成");
        }
        NotificationManager notificationManager = f47090a;
        if (notificationManager != null) {
            notificationManager.notify(i2, builder.build());
        }
    }

    public static void a(Notification.Builder builder, String str, int i2) {
        builder.setSubText(str);
        NotificationManager notificationManager = f47090a;
        if (notificationManager != null) {
            notificationManager.notify(i2, builder.build());
        }
    }

    public static void a(Context context, int i2, com.ubix.ssp.ad.e.s.g.a aVar) {
        try {
            com.ubix.ssp.ad.e.s.g.b bVarB = aVar.b();
            String strA = com.ubix.ssp.ad.e.a0.c.a(context, aVar.b().e());
            if (!TextUtils.isEmpty(strA)) {
                b.f47066b.put(strA, b.d().get(Integer.valueOf(i2)));
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(context.getPackageName(), "com.ubix.ssp.open.comm.AdActivity"));
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                intent.putExtra("pkg", strA);
                intent.putExtra("path", bVarB.e());
                aVar.c().f47118b.setContentIntent(PendingIntent.getActivity(context, i2, intent, 0));
                aVar.c().f47118b.setAutoCancel(true);
                f47090a.notify(i2, aVar.c().f47118b.build());
                return;
            }
            if (aVar.c() == null || aVar.c().f47118b == null) {
                return;
            }
            aVar.c().f47118b.setContentIntent(null);
            aVar.c().f47118b.setAutoCancel(true);
            f47090a.notify(i2, aVar.c().f47118b.build());
            f47090a.cancel(i2);
            aVar.b().a(0L);
            aVar.b().b(47);
            if (aVar.a().exists()) {
                aVar.a().delete();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (aVar == null || aVar.c() == null || aVar.c().f47118b == null) {
                return;
            }
            aVar.c().f47118b.setContentIntent(null);
            aVar.c().f47118b.setAutoCancel(true);
            f47090a.notify(i2, aVar.c().f47118b.build());
            f47090a.cancel(i2);
        }
    }

    public static void a(com.ubix.ssp.ad.e.s.g.a aVar) {
        if (aVar == null || aVar.c() == null || aVar.c().f47118b == null) {
            return;
        }
        int iD = aVar.d();
        aVar.c().f47118b.setContentIntent(null);
        aVar.c().f47118b.setAutoCancel(true);
        f47090a.notify(iD, aVar.c().f47118b.build());
        f47090a.cancel(iD);
    }

    public static boolean a(Context context, String str) {
        NotificationChannel notificationChannel;
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            int i2 = Build.VERSION.SDK_INT;
            if (!notificationManager.areNotificationsEnabled()) {
                return false;
            }
            if (i2 < 26 || (notificationChannel = notificationManager.getNotificationChannel(str)) == null) {
                return true;
            }
            return notificationChannel.getImportance() > 0;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return true;
    }
}
