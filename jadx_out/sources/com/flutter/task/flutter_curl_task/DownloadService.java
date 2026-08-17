package com.flutter.task.flutter_curl_task;

import H0.b;
import H0.d;
import H0.g;
import H0.h;
import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import androidx.browser.trusted.f;
import androidx.core.app.NotificationCompat;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes3.dex */
public class DownloadService extends Service {

    /* renamed from: b, reason: collision with root package name */
    public static final Map f30750b = new HashMap();

    public static boolean c(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return false;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                c(file2);
            }
        }
        return file.delete();
    }

    public final void a(Intent intent) {
        String stringExtra = intent.getStringExtra("task_id");
        Map map = f30750b;
        if (map.containsKey(stringExtra)) {
            ((h) map.get(stringExtra)).cancel();
            map.remove(stringExtra);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(stringExtra);
        arrayList.add(5);
        arrayList.add(0);
        arrayList.add(0);
        arrayList.add(0);
        d.d().i(arrayList);
    }

    public final Notification b(String str, String str2) {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(f.a("download_channel", "Download Service", 2));
        }
        return new NotificationCompat.Builder(this, "download_channel").setContentTitle(str).setContentText(str2).setSmallIcon(R.drawable.stat_sys_download).build();
    }

    public final void d(Intent intent) {
        String stringExtra = intent.getStringExtra("task_id");
        String stringExtra2 = intent.getStringExtra("saved_dir");
        String stringExtra3 = intent.getStringExtra("file_name");
        Map map = f30750b;
        if (map.containsKey(stringExtra)) {
            ((h) map.get(stringExtra)).cancel();
            map.remove(stringExtra);
        }
        if (!stringExtra.contains(".plus")) {
            File file = new File(stringExtra2, stringExtra3);
            if (file.exists()) {
                file.delete();
                return;
            }
            return;
        }
        String str = stringExtra2 + ServiceReference.DELIMITER + stringExtra3 + "-plus";
        String str2 = stringExtra2 + ServiceReference.DELIMITER + stringExtra3;
        File file2 = new File(str);
        File file3 = new File(str2);
        c(file2);
        if (file3.exists()) {
            file3.delete();
        }
    }

    public final void e(Intent intent) {
        String stringExtra = intent.getStringExtra("task_id");
        String stringExtra2 = intent.getStringExtra("url");
        boolean booleanExtra = intent.getBooleanExtra("plus_url", false);
        String stringExtra3 = intent.getStringExtra("saved_dir");
        String stringExtra4 = intent.getStringExtra("file_name");
        String stringExtra5 = intent.getStringExtra("headers");
        b bVar = new b();
        bVar.k(stringExtra);
        bVar.l(stringExtra2);
        bVar.f(stringExtra4);
        bVar.i(stringExtra3);
        bVar.g(stringExtra5);
        bVar.j(1);
        bVar.h(0);
        if (booleanExtra) {
            f30750b.put(stringExtra, H0.f.b(bVar));
        } else {
            f30750b.put(stringExtra, g.a(bVar));
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if ("start".equals(intent.getAction())) {
            startForeground(1, b("下载中", "任务正在后台下载"));
            e(intent);
        } else if ("cancel".equals(intent.getAction())) {
            startForeground(1, b("下载取消", "下载任务已取消"));
            a(intent);
        } else if ("remove".equals(intent.getAction())) {
            startForeground(1, b("下载删除", "下载文件删除中"));
            d(intent);
        }
        return 1;
    }
}
