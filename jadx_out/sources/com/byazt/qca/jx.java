package com.byazt.qca;

import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.d.i;
import com.byazt.ami.w;
import com.byazt.ry.j;
import com.byazt.tgw.e;
import com.byazt.zg.hq;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FEED_PACKET_UNTIL_EMPTY, 30})
/* loaded from: classes3.dex */
public class jx {
    public static Comparator<com.byazt.rt.jx> hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static String f24561j = "KEY_LOAD_SEQ_TIME";
    public static String jx = "KEY_LOAD_SEQ";

    /* renamed from: l, reason: collision with root package name */
    public static Comparator<com.byazt.rt.jx> f24562l;

    public static int a() {
        com.byazt.ctq.jx jxVarHp = j.hp(com.byazt.di.hp.jl().zy(), "gm_tt_ad_mediation_sdk_sp");
        long j2 = jxVarHp.getLong(f24561j, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zHp = hp(new Date(j2), new Date(jCurrentTimeMillis));
        jxVarHp.put(f24561j, jCurrentTimeMillis);
        int i2 = (zHp ? jxVarHp.getInt(jx, 0) : 0) + 1;
        jxVarHp.put(jx, i2);
        return i2;
    }

    public static Comparator<com.byazt.rt.jx> hp() {
        Comparator<com.byazt.rt.jx> comparator = hp;
        return comparator != null ? comparator : jx();
    }

    public static Comparator<com.byazt.rt.jx> j() {
        Comparator<com.byazt.rt.jx> comparator = new Comparator<com.byazt.rt.jx>() { // from class: com.byazt.qca.jx.2
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(com.byazt.rt.jx jxVar, com.byazt.rt.jx jxVar2) {
                if (jxVar.getStrategyCpm() > jxVar2.getStrategyCpm()) {
                    return -1;
                }
                if (jxVar.getStrategyCpm() < jxVar2.getStrategyCpm()) {
                    return 1;
                }
                return (jxVar.getStrategyCpm() == jxVar2.getStrategyCpm() && jxVar.getAdNetworkPlatformId() == 1) ? -1 : 0;
            }
        };
        f24562l = comparator;
        return comparator;
    }

    public static Comparator<com.byazt.rt.jx> jx() {
        Comparator<com.byazt.rt.jx> comparator = new Comparator<com.byazt.rt.jx>() { // from class: com.byazt.qca.jx.1
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(com.byazt.rt.jx jxVar, com.byazt.rt.jx jxVar2) {
                if (jxVar.getCpm() > jxVar2.getCpm()) {
                    return -1;
                }
                if (jxVar.getCpm() < jxVar2.getCpm()) {
                    return 1;
                }
                return (jxVar.getCpm() == jxVar2.getCpm() && jxVar.getAdNetworkPlatformId() == 1) ? -1 : 0;
            }
        };
        hp = comparator;
        return comparator;
    }

    public static boolean l(String str) {
        return true;
    }

    public static String w() {
        return UUID.randomUUID().toString();
    }

    public static Comparator<com.byazt.rt.jx> l() {
        Comparator<com.byazt.rt.jx> comparator = f24562l;
        return comparator != null ? comparator : j();
    }

    public static void hp(List<com.byazt.rt.jx> list, Comparator<com.byazt.rt.jx> comparator) {
        if (comparator == null) {
            hq.hp(list);
        } else {
            hq.hp(list, comparator);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String l(com.byazt.tgw.e r15) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qca.jx.l(com.byazt.tgw.e):java.lang.String");
    }

    public static String hp(String str, String str2, String str3) {
        return "com.bytedance.msdk.adapter." + com.byazt.rt.hp.hp(str2) + i.f2495E + String.format(str, str2, str3);
    }

    public static boolean hp(e eVar) {
        if (eVar != null && TextUtils.equals(eVar.v(), MediationConstant.ADN_PANGLE)) {
            return true;
        }
        if (eVar != null && w.hp(eVar.v())) {
            return true;
        }
        if (eVar == null) {
            return false;
        }
        Function<SparseArray<Object>, Object> functionA = com.byazt.ky.hp.hp().a();
        if (functionA != null) {
            String strL = l(eVar);
            String adaperManagerName = com.byazt.uhd.j.getAdaperManagerName(eVar.v());
            if (TextUtils.isEmpty(strL)) {
                return false;
            }
            com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
            hpVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, strL);
            hpVarHp.hp(8560, adaperManagerName);
            hpVarHp.hp(-99999987, 8229);
            hpVarHp.hp(-99999985, Boolean.class);
            return ((Boolean) functionA.apply(hpVarHp.l().sparseArray())).booleanValue();
        }
        com.byazt.aw.l.l(MediationConstant.TAG, "load ad check class loader is null ");
        return false;
    }

    public static String hp(String str) {
        return !TextUtils.isEmpty(str) ? str.substring(0, 1).toUpperCase().concat(str.substring(1).toLowerCase()) : str;
    }

    private static boolean l(String str, com.byazt.rt.jx jxVar) {
        if (jxVar == null) {
            return false;
        }
        com.byazt.tgw.l lVarHp = com.byazt.di.l.l().hp(str, jxVar.getAdType(), 101);
        return com.byazt.di.l.l().l(str, jxVar.getAdType()) && lVarHp != null && lVarHp.pu() != null && lVarHp.pu().size() > 0 && lVarHp.wv() != null && lVarHp.wv().size() > 0;
    }

    public static e hp(String str, String str2, int i2, int i3) {
        e eVar = new e();
        eVar.jx(str2);
        eVar.w(str);
        eVar.e(0);
        eVar.eb("0");
        eVar.l("1");
        eVar.gu(i2);
        eVar.jl(i3);
        eVar.q(3);
        eVar.hp("%1$s%2$sAdapter");
        return eVar;
    }

    private static boolean hp(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5);
    }

    public static void hp(com.byazt.dq.hp hpVar, e eVar) {
        if (!com.byazt.di.l.l().y() || hpVar == null || eVar == null) {
            return;
        }
        if (820001 == hpVar.hp) {
            com.byazt.dq.j.hp(com.byazt.di.l.getContext(), String.format("error_adn:%1$s no ads，please check ad network", eVar.xs()));
        } else {
            com.byazt.dq.j.hp(com.byazt.di.l.getContext(), String.format("test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s", eVar.xs(), eVar.vv(), Integer.valueOf(hpVar.jx), hpVar.f19237j));
        }
    }

    public static void hp(String str, e eVar, com.byazt.rt.jx jxVar) {
        if (com.byazt.di.l.l().y() && eVar != null && l(str, jxVar)) {
            com.byazt.dq.j.hp(com.byazt.di.l.getContext(), String.format("fill_suceess ,test_adn:%1$s,slot_id : %2$s", eVar.v(), Integer.valueOf(eVar.ec())));
        }
    }

    public static void hp(String str, com.byazt.rt.jx jxVar) {
        if (com.byazt.di.l.l().y() && jxVar != null && l(str, jxVar)) {
            com.byazt.dq.j.hp(com.byazt.di.l.getContext(), String.format("test_suceess ,test_adn:%1$s,slot_id : %2$s", com.byazt.rt.hp.hp(jxVar.getAdNetworkPlatformId()), jxVar.getAdNetworkSlotId()));
        }
    }
}
