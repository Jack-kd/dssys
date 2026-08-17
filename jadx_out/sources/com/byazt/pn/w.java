package com.byazt.pn;

import com.byazt.hq.ec;
import com.byazt.hq.hq;
import com.byazt.hq.vv;
import com.byazt.hq.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.downloader.core.c;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Pattern;

@com.byazt.kj.hp(hp = {0, 1, 741, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public final class w {
    public static final Pattern hp = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    public static long hp(hq hqVar) {
        return hp(hqVar.eb());
    }

    public static boolean jx(hq hqVar) {
        if (hqVar.hp().l().equals(c.f37362a)) {
            return false;
        }
        int iJx = hqVar.jx();
        return (((iJx >= 100 && iJx < 200) || iJx == 204 || iJx == 304) && hp(hqVar) == -1 && !"chunked".equalsIgnoreCase(hqVar.hp(c.f37369h))) ? false : true;
    }

    public static Set<String> l(vv vvVar) {
        Set<String> treeSet = Collections.EMPTY_SET;
        int iHp = vvVar.hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            if ("Vary".equalsIgnoreCase(vvVar.hp(i2))) {
                String strL = vvVar.l(i2);
                if (treeSet.isEmpty()) {
                    treeSet = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : strL.split(",")) {
                    treeSet.add(str.trim());
                }
            }
        }
        return treeSet;
    }

    public static long hp(vv vvVar) {
        return hp(vvVar.hp(c.f37366e));
    }

    private static long hp(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static vv hp(vv vvVar, vv vvVar2) {
        Set<String> setL = l(vvVar2);
        if (setL.isEmpty()) {
            return new vv.hp().hp();
        }
        vv.hp hpVar = new vv.hp();
        int iHp = vvVar.hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            String strHp = vvVar.hp(i2);
            if (setL.contains(strHp)) {
                hpVar.hp(strHp, vvVar.l(i2));
            }
        }
        return hpVar.hp();
    }

    public static vv l(hq hqVar) {
        return hp(hqVar.e().hp().jx(), hqVar.eb());
    }

    public static void hp(zy zyVar, ec ecVar, vv vvVar) {
        if (zyVar == zy.hp) {
            return;
        }
        com.byazt.hq.jl.hp(ecVar, vvVar).isEmpty();
    }

    public static int l(String str, int i2) throws NumberFormatException {
        try {
            long j2 = Long.parseLong(str);
            if (j2 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j2 < 0) {
                return 0;
            }
            return (int) j2;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static int hp(String str, int i2, String str2) {
        while (i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            i2++;
        }
        return i2;
    }

    public static int hp(String str, int i2) {
        char cCharAt;
        while (i2 < str.length() && ((cCharAt = str.charAt(i2)) == ' ' || cCharAt == '\t')) {
            i2++;
        }
        return i2;
    }
}
