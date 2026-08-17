package com.byazt.xoi;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.Period;
import java.time.ZoneOffset;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1415, 28})
/* loaded from: classes3.dex */
public class hp {
    public static final com.byazt.ctq.jx hp = com.byazt.ry.j.hp(com.byazt.di.hp.jl().zy(), "gm_tt_user_live_day_time");

    /* renamed from: l, reason: collision with root package name */
    public static final SimpleDateFormat f27721l = new SimpleDateFormat("yyyy-MM-dd");
    public static final Calendar jx = Calendar.getInstance();

    public static int a(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return -1;
        }
        return q(hp.getString(l(str, "_click_count_"), null));
    }

    public static void eb(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return;
        }
        String strL = l(str, "_show_current_time_");
        String strL2 = l(str, "_show_last_time_");
        com.byazt.ctq.jx jxVar = hp;
        String string = jxVar.getString("_show_gap_time_day", null);
        String strEb = eb();
        com.byazt.aw.l.l("AdLoadDynamicParamHandler", "recordSameDayTwoAdIntervalTime curKey:" + strL + ",lastKey :" + strL2 + ",today:" + strEb + ",recordDate:" + string);
        if (TextUtils.equals(string, strEb)) {
            jxVar.put(strL2, jxVar.getLong(strL, 0L));
            jxVar.put(strL, System.currentTimeMillis());
        } else {
            jxVar.put(strL2, 0L);
            jxVar.put(strL, System.currentTimeMillis());
            jxVar.put("_show_gap_time_day", strEb);
        }
    }

    public static void hp() {
        com.byazt.aw.l.l("AdLoadDynamicParamHandler", "recordUserLiveDay start => enableDynamicPolicy:" + com.byazt.di.l.l().rz());
        if (com.byazt.di.l.l().rz()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strEb = eb();
            com.byazt.aw.l.l("AdLoadDynamicParamHandler", "当前日期(key)：".concat(String.valueOf(strEb)));
            com.byazt.ctq.jx jxVar = hp;
            if (jxVar.getBoolean(strEb, false)) {
                com.byazt.aw.l.l("AdLoadDynamicParamHandler", "key=" + strEb + "，同一天，不再重新记录");
                return;
            }
            if (TextUtils.isEmpty(jxVar.getString("start_index", null))) {
                jxVar.put("start_index", strEb);
                com.byazt.aw.l.l("AdLoadDynamicParamHandler", "START_INDEX=".concat(String.valueOf(strEb)));
            }
            jxVar.put(strEb, true);
            jxVar.put("user_live_times", jxVar.getInt("user_live_times", 0) + 1);
            String string = jxVar.getString("start_index", null);
            if (TextUtils.equals(string, strEb)) {
                com.byazt.aw.l.l("AdLoadDynamicParamHandler", "startDay:" + string + ",key=" + strEb + "，同一天，不处理");
            } else {
                try {
                    SimpleDateFormat simpleDateFormat = f27721l;
                    Date date = simpleDateFormat.parse(string);
                    Date date2 = simpleDateFormat.parse(strEb);
                    if (date2 == null) {
                        date2 = new Date();
                    }
                    if (date != null) {
                        int iHp = hp(date.getTime(), date2.getTime());
                        int iPc = com.byazt.di.l.l().pc();
                        if (iPc - iHp < 0) {
                            int i2 = iHp - iPc;
                            String strHp = hp(date, i2);
                            if (!TextUtils.isEmpty(strHp)) {
                                jxVar.put("start_index", strHp);
                                hp(string, date, i2);
                            }
                            com.byazt.aw.l.l("AdLoadDynamicParamHandler", "old-startIndex:" + string + ",diff=" + i2 + ",new-startIndex:" + strHp);
                        }
                    }
                } catch (ParseException e2) {
                    com.byazt.aw.l.j("AdLoadDynamicParamHandler", "计算生成日期出错：" + e2.getMessage());
                }
            }
            com.byazt.aw.l.l("AdLoadDynamicParamHandler", "recordUserLiveDay方法，执行耗时：" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        }
    }

    public static int j(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return -1;
        }
        return q(hp.getString(l(str, "_show_count_"), null));
    }

    public static void jx(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return;
        }
        hp(str, "_show_count_");
    }

    public static int l() {
        if (com.byazt.di.l.l().rz()) {
            return hp.getInt("user_live_times", 0);
        }
        return -1;
    }

    private static int q(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        String[] strArrSplit = str.split("_");
        if (strArrSplit.length != 2 || (str2 = strArrSplit[1]) == null) {
            return 0;
        }
        return Integer.parseInt(str2);
    }

    public static long s(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return -1L;
        }
        String strL = l(str, "_show_current_time_");
        String strL2 = l(str, "_show_last_time_");
        com.byazt.ctq.jx jxVar = hp;
        if (!TextUtils.equals(jxVar.getString("_show_gap_time_day", null), eb())) {
            return 0L;
        }
        long j2 = jxVar.getLong(strL2, 0L);
        if (j2 == 0) {
            return 0L;
        }
        if (jxVar.getLong(strL, 0L) - j2 < 0) {
            return 0L;
        }
        return Math.round(r0 / 1000.0f);
    }

    public static void w(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return;
        }
        hp(str, "_click_count_");
    }

    public static void jx() {
        com.byazt.aw.l.l("AdLoadDynamicParamHandler", "recordSameDaySdkStartTimes start => enableDynamicPolicy:" + com.byazt.di.l.l().rz());
        if (com.byazt.di.l.l().rz()) {
            hp((String) null, "tt_sdk_start_count_");
        }
    }

    public static int l(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return -1;
        }
        return q(hp.getString(l(str, "_dislike_count_"), ""));
    }

    public static int w() {
        if (com.byazt.di.l.l().rz()) {
            return hp(com.byazt.di.hp.jl().jx(), System.currentTimeMillis());
        }
        return -1;
    }

    public static long a() {
        if (!com.byazt.di.l.l().rz()) {
            return -1L;
        }
        float fW = com.byazt.di.hp.jl().w() / 60000.0f;
        if (fW <= 0.0f || fW >= 1.0f) {
            return Math.round(fW);
        }
        return 1L;
    }

    public static int j() {
        if (com.byazt.di.l.l().rz()) {
            return q(hp.getString("tt_sdk_start_count_", null));
        }
        return -1;
    }

    private static String l(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str + str2;
    }

    private static String eb() {
        return f27721l.format(new Date());
    }

    private static void hp(String str, Date date, int i2) {
        if (i2 == 1) {
            com.byazt.ctq.jx jxVar = hp;
            if (jxVar.getBoolean(str, false)) {
                jxVar.put("user_live_times", Math.max(jxVar.getInt("user_live_times", 0) - 1, 0));
            }
            jxVar.remove(str);
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            i3++;
            String strHp = hp(date, i3);
            com.byazt.ctq.jx jxVar2 = hp;
            if (jxVar2.getBoolean(strHp, false)) {
                jxVar2.put("user_live_times", Math.max(jxVar2.getInt("user_live_times", 0) - 1, 0));
            }
            jxVar2.remove(strHp);
        }
    }

    public static void hp(String str) {
        if (!com.byazt.di.l.l().rz() || str == null) {
            return;
        }
        hp(str, "_dislike_count_");
    }

    private static void hp(String str, String str2) {
        String strL = l(str, str2);
        String strEb = eb();
        com.byazt.ctq.jx jxVar = hp;
        String string = jxVar.getString(strL, null);
        com.byazt.aw.l.l("AdLoadDynamicParamHandler", "saveTomGlobalStorageByAction key:" + strL + ",old value:" + string);
        int i2 = 1;
        if (!TextUtils.isEmpty(string)) {
            String[] strArrSplit = string.split("_");
            if (strArrSplit.length == 2) {
                String str3 = strArrSplit[0];
                if (!TextUtils.isEmpty(str3) && TextUtils.equals(strEb, str3)) {
                    i2 = 1 + Integer.parseInt(strArrSplit[1]);
                    strEb = str3;
                }
                string = hp(strEb, i2);
            }
            com.byazt.aw.l.l("AdLoadDynamicParamHandler", "saveTomGlobalStorageByAction key:" + strL + "，new value：" + string);
            jxVar.put(strL, string);
            return;
        }
        jxVar.put(strL, hp(strEb, 1));
        com.byazt.aw.l.l("AdLoadDynamicParamHandler", "saveTomGlobalStorageByAction 首次记录 key:" + strL + "，new value：" + hp(strEb, 1));
    }

    private static String hp(String str, int i2) {
        return str + "_" + i2;
    }

    private static int hp(long j2, long j3) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Period.between(Instant.ofEpochMilli(j2).atZone(ZoneOffset.systemDefault()).toLocalDate(), Instant.ofEpochMilli(j3).atZone(ZoneOffset.systemDefault()).toLocalDate()).getDays();
        }
        return (int) ((j3 - j2) / 86400000);
    }

    private static String hp(Date date, int i2) {
        if (date == null) {
            return null;
        }
        Calendar calendar = jx;
        calendar.setTime(date);
        calendar.add(5, i2);
        return f27721l.format(calendar.getTime());
    }

    public static void hp(List<com.byazt.rt.jx> list, com.byazt.tgw.l lVar) {
        if (!com.byazt.di.l.l().rz() || list == null || lVar == null) {
            return;
        }
        for (com.byazt.rt.jx jxVar : list) {
            if (jxVar != null) {
                jxVar.getMediaExtraInfo().put(MediationConstant.KEY_GM_PRIME_RIT, lVar.ky());
            }
        }
    }
}
