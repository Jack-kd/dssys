package com.smartdigimkt.m;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.smartdigimkt.dlopt.common.NotificationBroadcastReceiver;
import com.smartdigimkt.k.r;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class j {

    /* renamed from: e, reason: collision with root package name */
    public static volatile j f41683e;

    /* renamed from: a, reason: collision with root package name */
    public NotificationManager f41684a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f41685b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f41686c;

    /* renamed from: d, reason: collision with root package name */
    public int f41687d;

    public j(Context context) {
        a aVar = new a();
        this.f41686c = context;
        this.f41684a = context == null ? null : (NotificationManager) context.getSystemService("notification");
        this.f41685b = new HashMap();
        try {
            IntentFilter intentFilter = new IntentFilter("sdm_action_notification_cannel");
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(aVar, intentFilter, 4);
            } else {
                context.registerReceiver(aVar, intentFilter);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static k a(j jVar, r rVar) {
        jVar.getClass();
        String str = rVar.f41192o;
        k kVar = (k) jVar.f41685b.get(str);
        if (kVar != null) {
            return kVar;
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(jVar.f41686c, str);
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannelA = androidx.browser.trusted.f.a(str, str, 3);
            notificationChannelA.setSound(null, null);
            jVar.f41684a.createNotificationChannel(notificationChannelA);
        }
        jVar.f41687d++;
        builder.setOngoing(true).setSound(null).setPriority(0).setOnlyAlertOnce(true).setAutoCancel(false);
        try {
            builder.setSmallIcon(jVar.f41686c.getPackageManager().getApplicationInfo(jVar.f41686c.getPackageName(), 128).icon);
        } catch (Throwable th) {
            th.printStackTrace();
            builder.setSmallIcon(com.smartdigimkt.c5.k.a(jVar.f41686c, "core_icon_close", "drawable"));
        }
        builder.setContentTitle(rVar.f41180c);
        Bitmap bitmap = rVar.f41181d;
        if (bitmap != null) {
            builder.setLargeIcon(bitmap);
        }
        k kVar2 = new k();
        kVar2.f41688a = jVar.f41687d;
        kVar2.f41689b = builder;
        kVar2.f41690c = -1;
        jVar.f41685b.put(str, kVar2);
        return kVar2;
    }

    public static void a(j jVar, r rVar, NotificationCompat.Builder builder, k kVar) {
        jVar.getClass();
        com.smartdigimkt.k.c cVar = kVar.f41691d;
        if (cVar == null || cVar != rVar.f41196s) {
            kVar.f41691d = rVar.f41196s;
            Intent intent = new Intent("sdm_action_notification_click");
            intent.putExtra("sdm_broadcast_receiver_extra_unique_id", rVar.f41192o);
            intent.putExtra("sdm_broadcast_receiver_extra_url", rVar.f41179b);
            intent.putExtra("sdm_broadcast_receiver_extra_request_status", rVar.f41196s.toString());
            intent.putExtra("sdm_broadcast_receiver_extra_notification_id", kVar.f41688a);
            intent.setClass(jVar.f41686c, NotificationBroadcastReceiver.class);
            int i2 = Build.VERSION.SDK_INT;
            PendingIntent broadcast = PendingIntent.getBroadcast(jVar.f41686c, kVar.f41688a, intent, i2 >= 31 ? 201326592 : 134217728);
            Intent intent2 = new Intent("sdm_action_notification_cannel");
            intent2.setPackage(jVar.f41686c.getPackageName());
            intent2.putExtra("sdm_broadcast_receiver_extra_unique_id", rVar.f41192o);
            intent2.putExtra("sdm_broadcast_receiver_extra_url", rVar.f41179b);
            intent2.putExtra("sdm_broadcast_receiver_extra_request_status", rVar.f41196s.toString());
            intent2.putExtra("sdm_broadcast_receiver_extra_notification_id", kVar.f41688a);
            builder.setContentIntent(broadcast).setDeleteIntent(PendingIntent.getBroadcast(jVar.f41686c, kVar.f41688a, intent2, i2 < 31 ? 134217728 : 201326592));
        }
    }

    public static j a(Context context) {
        if (f41683e == null) {
            synchronized (j.class) {
                try {
                    if (f41683e == null) {
                        f41683e = new j(context);
                    }
                } finally {
                }
            }
        }
        return f41683e;
    }

    public final synchronized void a(r rVar, long j2, long j3, boolean z2) throws Throwable {
        try {
            if (rVar != null) {
                try {
                    if (!TextUtils.isEmpty(rVar.f41179b)) {
                        com.smartdigimkt.b4.e.a().a(new b(j2, j3, rVar, this, z2));
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a(r rVar) {
        if (rVar == null || TextUtils.isEmpty(rVar.f41179b) || this.f41684a == null) {
            return;
        }
        com.smartdigimkt.b4.e.a().a(new g(this, rVar));
    }
}
