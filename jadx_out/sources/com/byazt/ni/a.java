package com.byazt.ni;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 54})
/* loaded from: classes3.dex */
public final class a {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public int f23576a;
        public boolean eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f23577j;
        public Drawable jx;

        /* renamed from: l, reason: collision with root package name */
        public String f23578l;

        /* renamed from: w, reason: collision with root package name */
        public String f23579w;

        public hp(String str, String str2, Drawable drawable, String str3, String str4, int i2, boolean z2) {
            l(str2);
            hp(drawable);
            hp(str);
            jx(str3);
            j(str4);
            hp(i2);
            hp(z2);
        }

        public int a() {
            return this.f23576a;
        }

        public String eb() {
            return this.f23579w;
        }

        public Drawable hp() {
            return this.jx;
        }

        public String j() {
            return this.f23578l;
        }

        public String jx() {
            return this.hp;
        }

        public boolean l() {
            return this.eb;
        }

        public String toString() {
            return "{\n  pkg name: " + jx() + "\n  app icon: " + hp() + "\n  app name: " + j() + "\n  app path: " + w() + "\n  app v name: " + eb() + "\n  app v code: " + a() + "\n  is system: " + l() + "}";
        }

        public String w() {
            return this.f23577j;
        }

        public void hp(Drawable drawable) {
            this.jx = drawable;
        }

        public void j(String str) {
            this.f23579w = str;
        }

        public void jx(String str) {
            this.f23577j = str;
        }

        public void l(String str) {
            this.f23578l = str;
        }

        public void hp(boolean z2) {
            this.eb = z2;
        }

        public void hp(String str) {
            this.hp = str;
        }

        public void hp(int i2) {
            this.f23576a = i2;
        }
    }

    public static int hp(String str) throws PackageManager.NameNotFoundException {
        if (jx(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = com.byazt.yk.jx.mp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            com.byazt.nu.hp.w("AppUtils", "getAppVersionCode:" + e2.getMessage());
            return -1;
        }
    }

    private static boolean jx(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static hp l(String str) {
        try {
            PackageManager packageManager = com.byazt.yk.jx.mp().getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return hp(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e2) {
            com.byazt.nu.hp.w("AppUtils", "getAppInfo:" + e2.getMessage());
            return null;
        }
    }

    private static hp hp(PackageManager packageManager, PackageInfo packageInfo) {
        String string;
        Drawable drawableLoadIcon = null;
        if (packageInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String str = packageInfo.packageName;
        if (applicationInfo != null && applicationInfo.loadLabel(packageManager) != null) {
            string = applicationInfo.loadLabel(packageManager).toString();
        } else {
            string = "";
        }
        String str2 = string;
        try {
            drawableLoadIcon = applicationInfo.loadIcon(packageManager);
        } catch (Exception unused) {
        }
        return new hp(str, str2, drawableLoadIcon, applicationInfo.sourceDir, packageInfo.versionName, packageInfo.versionCode, (applicationInfo.flags & 1) != 0);
    }
}
