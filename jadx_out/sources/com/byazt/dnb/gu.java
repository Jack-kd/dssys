package com.byazt.dnb;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 1239, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu {

    /* renamed from: a, reason: collision with root package name */
    public static int f19180a = 1;
    public static String hp;

    /* renamed from: j, reason: collision with root package name */
    public static String f19181j;
    public static volatile com.byazt.um.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile com.byazt.um.hp f19182l;

    /* renamed from: w, reason: collision with root package name */
    public static String f19183w;

    public static String a() {
        if (f19183w == null) {
            f19183w = hp("image");
        }
        return f19183w;
    }

    private static com.byazt.um.hp eb() {
        if (f19182l == null) {
            synchronized (gu.class) {
                try {
                    if (f19182l == null) {
                        com.byazt.mk.hp hpVar = new com.byazt.mk.hp();
                        f19182l = hpVar;
                        hpVar.setRootDir(q());
                        f19182l.clearCache();
                    }
                } finally {
                }
            }
        }
        return f19182l;
    }

    public static com.byazt.um.hp hp(int i2) {
        return i2 == 1 ? s() : eb();
    }

    public static int j() {
        return f19180a;
    }

    public static long[] jx() {
        return new long[]{10485760, 20971520, 31457280, 20971520, 10485760, 20971520, 31457280, 20971520};
    }

    private static String l(int i2) {
        Context context = sz.getContext();
        File fileL = i2 == 1 ? com.byazt.ymw.s.l(context, com.byazt.ton.l.hp(), "tt_ad") : com.byazt.ymw.s.hp(context, com.byazt.ton.l.hp(), "tt_ad");
        if (fileL.isFile()) {
            fileL.delete();
        }
        if (!fileL.exists()) {
            fileL.mkdirs();
        }
        return fileL.getAbsolutePath();
    }

    private static String q() {
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        int iCd = sz.l().cd();
        f19180a = iCd;
        String strL = l(iCd);
        hp = strL;
        return strL;
    }

    private static com.byazt.um.hp s() {
        if (jx == null) {
            synchronized (gu.class) {
                try {
                    if (jx == null) {
                        com.byazt.um.hp hpVarCreateVideoCacheDir = com.byazt.cwe.l.hp().createVideoCacheDir();
                        jx = hpVarCreateVideoCacheDir;
                        hpVarCreateVideoCacheDir.setRootDir(q());
                        jx.clearCache();
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    public static String w() {
        if (f19181j == null) {
            f19181j = hp("splash_image");
        }
        return f19181j;
    }

    public static String hp() {
        return q() + File.separator + "video_brand";
    }

    public static String hp(String str) {
        return q() + File.separator + str;
    }

    public static String[] l() {
        String strL = l(1);
        com.byazt.um.hp hpVarCreateVideoCacheDir = com.byazt.cwe.l.hp().createVideoCacheDir();
        hpVarCreateVideoCacheDir.setRootDir(strL);
        String strL2 = l(0);
        com.byazt.um.hp hpVarCreateVideoCacheDir2 = com.byazt.cwe.l.hp().createVideoCacheDir();
        hpVarCreateVideoCacheDir2.setRootDir(strL2);
        return new String[]{hpVarCreateVideoCacheDir.getBrandCacheDir(), hpVarCreateVideoCacheDir.getSplashCacheDir(), hpVarCreateVideoCacheDir.getRewardFullCacheDir(), hpVarCreateVideoCacheDir.getOtherCacheDir(), hpVarCreateVideoCacheDir2.getBrandCacheDir(), hpVarCreateVideoCacheDir2.getSplashCacheDir(), hpVarCreateVideoCacheDir2.getRewardFullCacheDir(), hpVarCreateVideoCacheDir2.getOtherCacheDir()};
    }
}
