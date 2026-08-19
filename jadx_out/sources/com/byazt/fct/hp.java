package com.byazt.fct;

import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.byazt.ami.w;
import com.byazt.bki.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, 28})
/* loaded from: classes2.dex */
public class hp {
    public static void hp() {
        try {
            if (com.byazt.aw.l.l() && e.hp()) {
                l();
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean j(String str, String str2) {
        if (str == null || str2 == null || str.length() == 0 || str2.length() == 0 || str.length() > str2.length()) {
            return false;
        }
        if (str.startsWith("v") || str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str = str.substring(1);
        }
        if (str2.startsWith("v") || str2.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str2 = str2.substring(1);
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            if (strArrSplit[i2].length() == strArrSplit[i2].length() && strArrSplit[i2].compareTo(strArrSplit2[i2]) != 0) {
                return false;
            }
        }
        return true;
    }

    private static int jx(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            return 1;
        }
        if (str.startsWith("v") || str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str = str.substring(1);
        }
        if (str2.startsWith("v") || str2.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
            str2 = str2.substring(1);
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
        for (int i2 = 0; i2 < iMin; i2++) {
            if (strArrSplit[i2].length() != strArrSplit2[i2].length()) {
                return strArrSplit[i2].length() > strArrSplit2[i2].length() ? 1 : -1;
            }
            int iCompareTo = strArrSplit[i2].compareTo(strArrSplit2[i2]);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (strArrSplit.length == strArrSplit2.length) {
            return 0;
        }
        return strArrSplit.length > strArrSplit2.length ? 1 : -1;
    }

    private static synchronized void l() {
        if (com.byazt.di.l.getContext() == null) {
            return;
        }
        com.byazt.dl.jx.hp().w();
    }

    public static boolean hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (!str.equals("baidu") && !str.equals(MediationConstant.ADN_PANGLE)) {
            switch (str) {
                case "sigmob":
                    if (jx(str2, "4.25.14") != 0) {
                        com.byazt.aw.l.j("TTMediationSDK_InitChecker", "sigmob版本不符合, 要求版本等于4.25.14，当前是" + str2);
                        return false;
                    }
                    com.byazt.aw.l.hp("TTMediationSDK_InitChecker", "sigmob版本正常, 要求版本等于4.25.14，当前是" + str2);
                    break;
                case "xiaomi":
                    if (jx(str2, "5.3.3.8") != 0) {
                        com.byazt.aw.l.j("TTMediationSDK_InitChecker", "xiaomi版本不符合, 要求版本等于5.3.3.8，当前是" + str2);
                        return false;
                    }
                    com.byazt.aw.l.hp("TTMediationSDK_InitChecker", "xiaomi版本正常, 要求版本等于5.3.3.8，当前是" + str2);
                    return true;
                case "ks":
                    if (jx(str2, "5.3.20.1") != 0) {
                        com.byazt.aw.l.j("TTMediationSDK_InitChecker", "快手版本不符合, 要求版本等于5.3.20.1，当前是" + str2);
                        return false;
                    }
                    com.byazt.aw.l.hp("TTMediationSDK_InitChecker", "快手版本正常, 要求版本等于5.3.20.1，当前是" + str2);
                    return true;
                case "gdt":
                    if (jx(str2, "4.680.1550") != 0) {
                        com.byazt.aw.l.j("TTMediationSDK_InitChecker", "gdt版本不符合，要求等于4.680.1550，当前是" + str2);
                        return false;
                    }
                    com.byazt.aw.l.hp("TTMediationSDK_InitChecker", "gdt版本正常，要求等于4.680.1550，当前是" + str2);
                    return true;
                default:
                    return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean l(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.equals(MediationConstant.ADN_PANGLE)) {
                return true;
            }
            switch (str) {
                case "sigmob":
                    if (j("4.25.14", str2)) {
                        hp("sigmobAdapter", "4.25.14", str2);
                        break;
                    } else {
                        l("sigmobAdapter", "4.25.14", str2);
                        break;
                    }
                case "xiaomi":
                    if (j("5.3.3.8", str2)) {
                        hp("xiaomiAdapter", "5.3.3.8", str2);
                        break;
                    } else {
                        l("xiaomiAdapter", "5.3.3.8", str2);
                        break;
                    }
                case "ks":
                    if (w.jx(MediationConstant.ADN_KS) == null) {
                        if (j("5.3.20.1", str2)) {
                            hp("ksAdapter", "5.3.20.1", str2);
                            break;
                        } else {
                            l("ksAdapter", "5.3.20.1", str2);
                            break;
                        }
                    }
                    break;
                case "gdt":
                    if (w.jx(MediationConstant.ADN_GDT) == null) {
                        if (j("4.680.1550", str2)) {
                            hp("gdtAdapter", "4.680.1550", str2);
                            break;
                        } else {
                            l("gdtAdapter", "4.680.1550", str2);
                            break;
                        }
                    }
                    break;
                case "baidu":
                    if (j("9.4503", str2)) {
                        hp("baiduAdapter", "9.4503", str2);
                        break;
                    } else {
                        l("baiduAdapter", "9.4503", str2);
                        break;
                    }
            }
            return true;
        }
        return false;
    }

    private static void hp(String str, String str2, String str3) {
        com.byazt.aw.l.hp("TTMediationSDK_InitChecker", str + "接入版本正常, 要求版为：" + str2 + "，当前版本为：" + str3);
    }

    private static void l(String str, String str2, String str3) {
        com.byazt.aw.l.j("TTMediationSDK_InitChecker", str + "接入版本不符合, 要求版为：" + str2 + ".x，当前版本为：" + str3);
    }
}
