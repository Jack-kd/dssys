package com.byazt.un;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.xci.s;
import com.umeng.analytics.pro.bz;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1167, 34})
/* loaded from: classes3.dex */
public class l {
    public static final l hp = new l();

    /* renamed from: l, reason: collision with root package name */
    public final LruCache<String, hp> f26283l = new LruCache<>(64);
    public final ConcurrentHashMap<String, Boolean> jx = new ConcurrentHashMap<>();

    @com.byazt.kj.hp(hp = {0, 1, 1167, 123})
    public static class hp {
        public final long hp;

        /* renamed from: l, reason: collision with root package name */
        public final long f26288l;

        public hp(long j2, long j3) {
            this.hp = j2;
            this.f26288l = j3;
        }

        public boolean hp(s.w wVar) {
            return this.f26288l <= 0 || System.currentTimeMillis() - this.f26288l > ((long) wVar.s()) * 1000;
        }
    }

    private SharedPreferences l() {
        return com.byazt.rz.l.l(sz.getContext(), "sp_dynamic_tmax_timeout", 0);
    }

    public static l hp() {
        return hp;
    }

    public long hp(int i2, String str) {
        long j2;
        s.jx jxVarHp = s.hp(i2);
        if (jxVarHp != null && jxVarHp.xs() != null) {
            s.w wVarXs = jxVarHp.xs();
            if (wVarXs.l() && wVarXs.jx() > 0) {
                String strHp = hp(wVarXs, i2, str);
                if (TextUtils.isEmpty(strHp)) {
                    return -1L;
                }
                hp hpVar = this.f26283l.get(strHp);
                if (hpVar == null) {
                    j2 = -1;
                } else {
                    if (!hpVar.hp(wVarXs)) {
                        return hpVar.hp;
                    }
                    j2 = hpVar.hp;
                }
                hp hpVarHp = hp(strHp);
                if (hpVarHp != null) {
                    if (!hpVarHp.hp(wVarXs)) {
                        this.f26283l.put(strHp, hpVarHp);
                        return hpVarHp.hp;
                    }
                    j2 = hpVarHp.hp;
                }
                long j3 = j2;
                hp(strHp, wVarXs, i2, str, j3);
                if (j3 > 0) {
                    return j3;
                }
            }
        }
        return -1L;
    }

    private void hp(final String str, final s.w wVar, final int i2, final String str2, final long j2) {
        if (this.jx.putIfAbsent(str, Boolean.TRUE) != null) {
            return;
        }
        com.byazt.dnb.s.hp(new eb("dynamic_tmax_calc") { // from class: com.byazt.un.l.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    hp hpVarHp = l.this.hp(wVar, i2, str2, j2);
                    if (hpVarHp != null) {
                        l.this.f26283l.put(str, hpVarHp);
                        l.this.hp(str, hpVarHp);
                    }
                } finally {
                    l.this.jx.remove(str);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0278 A[Catch: all -> 0x028b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x028b, blocks: (B:37:0x008b, B:39:0x0091, B:41:0x009f, B:43:0x00a7, B:45:0x00af, B:47:0x00b8, B:51:0x00c5, B:53:0x00d3, B:56:0x00e1, B:60:0x00ee, B:62:0x00f9, B:66:0x0103, B:68:0x010c, B:69:0x010f, B:71:0x0136, B:74:0x013f, B:77:0x014b, B:81:0x0158, B:83:0x0163, B:87:0x01a8, B:89:0x01ae, B:90:0x01b1, B:94:0x01be, B:96:0x01c4, B:101:0x01d9, B:104:0x01ea, B:112:0x0207, B:114:0x0217, B:115:0x0234, B:117:0x0243, B:128:0x0264, B:133:0x0278, B:120:0x024d, B:122:0x0255, B:93:0x01ba, B:86:0x01a4), top: B:166:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0274 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.un.l.hp hp(com.byazt.xci.s.w r33, int r34, java.lang.String r35, long r36) {
        /*
            Method dump skipped, instructions count: 657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.un.l.hp(com.byazt.xci.s$w, int, java.lang.String, long):com.byazt.un.l$hp");
    }

    public static long hp(long j2, long j3, float f2, float f3, float f4, float f5, s.w wVar) {
        if (j2 <= 0 || j3 <= 0) {
            return -1L;
        }
        boolean z2 = true;
        boolean z3 = f3 < wVar.ec() || (f5 > wVar.xs() && f4 < wVar.vv());
        if (f2 >= wVar.sz() && f4 <= wVar.ns() && (f5 >= wVar.cx() || f2 >= wVar.n())) {
            z2 = false;
        }
        if (!z3 || z2) {
            if (!z2) {
                return j2;
            }
            if (((long) Math.ceil(j3 * 1.15d)) <= j2) {
                return j2;
            }
            return Math.min(((long) Math.ceil((r6 - j2) * (f2 < 0.85f ? 0.4f : f2 < 0.9f ? 0.25f : 0.15f))) + j2, (long) Math.floor(j2 * 1.25d));
        }
        float f6 = 0.1f;
        if (f4 > 0.1f) {
            return j2;
        }
        if (f3 < 0.2f) {
            f6 = 0.3f;
        } else if (f3 < 0.3f) {
            f6 = 0.2f;
        } else if (f5 < 0.2f || f5 > 0.3f) {
            f6 = 0.0f;
        }
        return Math.max(Math.max((long) ((j2 * (1.0f - f6)) + (j3 * f6)), (long) Math.ceil(j2 * 0.85d)), j3);
    }

    private static String hp(s.w wVar, int i2, String str) {
        if (wVar == null) {
            return null;
        }
        if (wVar.w() == 0) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return "slot_" + i2 + "_" + str;
        }
        return "type_".concat(String.valueOf(i2));
    }

    private hp hp(String str) {
        long jHp;
        long jHp2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (com.byazt.lca.jx.hp().l()) {
                jHp = com.byazt.fgx.l.hp("sp_dynamic_tmax_timeout", str + "_v", -1L);
                jHp2 = com.byazt.fgx.l.hp("sp_dynamic_tmax_timeout", str + bz.f48989h, 0L);
            } else {
                SharedPreferences sharedPreferencesL = l();
                jHp = sharedPreferencesL.getLong(str + "_v", -1L);
                jHp2 = sharedPreferencesL.getLong(str + bz.f48989h, 0L);
            }
            if (jHp <= 0) {
                return null;
            }
            return new hp(jHp, jHp2);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, hp hpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        try {
            if (com.byazt.lca.jx.hp().l()) {
                com.byazt.fgx.l.hp("sp_dynamic_tmax_timeout", str + "_v", Long.valueOf(hpVar.hp));
                com.byazt.fgx.l.hp("sp_dynamic_tmax_timeout", str + bz.f48989h, Long.valueOf(hpVar.f26288l));
                return;
            }
            SharedPreferences.Editor editorEdit = l().edit();
            editorEdit.putLong(str + "_v", hpVar.hp);
            editorEdit.putLong(str + bz.f48989h, hpVar.f26288l);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }
}
