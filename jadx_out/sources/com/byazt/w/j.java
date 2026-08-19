package com.byazt.w;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.anythink.core.common.g.c;
import com.byazt.t.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.LinkedList;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 38})
/* loaded from: classes3.dex */
public class j {
    public static volatile j hp;

    /* renamed from: l, reason: collision with root package name */
    public final LinkedList<hp> f26854l = new LinkedList<>();
    public static final String[] jx = {"com", "android", "ss"};

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f26853j = {3101, 3102, 3103, 3201, 3202, 3203};

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final String f26855j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f26856l;

        /* renamed from: w, reason: collision with root package name */
        public final long f26857w;

        private hp(String str, int i2, String str2, String str3, long j2) {
            this.hp = str;
            this.f26856l = i2;
            this.jx = str2 != null ? str2.toLowerCase() : null;
            this.f26855j = str3 != null ? str3.toLowerCase() : null;
            this.f26857w = j2;
        }
    }

    private j() {
    }

    public static j hp() {
        if (hp == null) {
            synchronized (j.class) {
                try {
                    if (hp == null) {
                        hp = new j();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private hp jx(String str) {
        try {
            PackageManager packageManager = jl.getContext().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return new hp(str, packageInfo.versionCode, packageInfo.versionName, (String) packageManager.getApplicationLabel(packageInfo.applicationInfo), System.currentTimeMillis());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void l(String str) {
        l();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f26854l) {
            try {
                Iterator<hp> it = this.f26854l.iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().hp)) {
                        it.remove();
                        return;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void hp(String str) {
        hp hpVarJx;
        l();
        if (TextUtils.isEmpty(str) || (hpVarJx = jx(str)) == null) {
            return;
        }
        synchronized (this.f26854l) {
            this.f26854l.add(hpVarJx);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
    
        r7[1] = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<com.byazt.w.j.hp, java.lang.Integer> l(com.byazt.zv.l r18) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.w.j.l(com.byazt.zv.l):android.util.Pair");
    }

    public hp hp(com.byazt.zv.l lVar) {
        if (lVar == null) {
            return null;
        }
        l();
        synchronized (this.f26854l) {
            try {
                Iterator<hp> it = this.f26854l.iterator();
                while (it.hasNext()) {
                    hp next = it.next();
                    if (next.f26857w > lVar.hq()) {
                        return next;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean hp(String str, String str2) {
        boolean z2;
        try {
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            if (strArrSplit.length != 0 && strArrSplit2.length != 0) {
                int i2 = 0;
                int i3 = 0;
                for (String str3 : strArrSplit) {
                    String[] strArr = jx;
                    int length = strArr.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            z2 = false;
                            break;
                        }
                        String str4 = strArr[i4];
                        if (str4.equals(str3)) {
                            if (i2 < strArrSplit2.length && str4.equals(strArrSplit2[i2])) {
                                i2++;
                            }
                            z2 = true;
                        } else {
                            i4++;
                        }
                    }
                    if (!z2) {
                        int i5 = i3;
                        int i6 = i2;
                        while (i2 < strArrSplit2.length) {
                            if (str3.equals(strArrSplit2[i2])) {
                                if (i2 == i6) {
                                    i6++;
                                }
                                i5++;
                                if (i5 >= 2) {
                                    return true;
                                }
                            }
                            i2++;
                        }
                        i2 = i6;
                        i3 = i5;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private void l() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.f26854l) {
            try {
                Iterator<hp> it = this.f26854l.iterator();
                while (it.hasNext() && jCurrentTimeMillis - it.next().f26857w > c.f3507a) {
                    it.remove();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
