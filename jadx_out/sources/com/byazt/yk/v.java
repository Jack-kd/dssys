package com.byazt.yk;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import com.byazt.fu.DownloadTask;
import com.byazt.yk.CSJDownloadService;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public interface v<T extends CSJDownloadService> {
    IBinder hp(Intent intent);

    void hp(int i2);

    void hp(int i2, Notification notification);

    void hp(Intent intent, int i2, int i3);

    void hp(k kVar);

    void hp(WeakReference<T> weakReference);

    void hp(boolean z2);

    boolean hp();

    void j();

    void jx();

    void jx(DownloadTask downloadTask);

    void l(DownloadTask downloadTask);

    boolean l();

    void startService();
}
