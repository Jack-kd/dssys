package com.byazt.hk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public final class s {

    @com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static class hp implements Runnable {
        public final Runnable hp;
        public final String jx = Log.getStackTraceString(new RuntimeException("origin stacktrace"));

        /* renamed from: l, reason: collision with root package name */
        public final String f20723l;

        public hp(Runnable runnable, String str) {
            this.hp = runnable;
            this.f20723l = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.hp.run();
            } catch (Exception e2) {
                com.byazt.gt.e.jx("Thread:" + this.f20723l + " exception\n" + this.jx, e2);
            }
        }
    }

    public static boolean hp(Context context, String str) {
        return context.getPackageManager().getPackageInfo(str, 128) != null;
    }

    public static boolean hp(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.getPackageInfo("com.huawei.hwid", 0) == null && packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null) {
            return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
        }
        return true;
    }

    public static void hp(@Nullable String str, Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = "TrackerDr";
        }
        new com.byazt.shx.jx(new hp(runnable, str), str).start();
    }
}
