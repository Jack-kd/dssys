package com.byazt.nra;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jdb.q;
import com.byazt.jz.n;
import com.byazt.jz.s;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.byazt.xci.rv;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.yrp.q;
import com.byazt.zn.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.metrics.EnterFromMerge;
import com.bytedance.android.metrics.EnterMethod;
import com.umeng.analytics.pro.g;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF, 54})
/* loaded from: classes3.dex */
public abstract class a extends com.byazt.nra.hp {

    /* renamed from: a, reason: collision with root package name */
    public volatile SoftReference<mp> f23754a;

    /* renamed from: j, reason: collision with root package name */
    public String f23755j;

    /* renamed from: w, reason: collision with root package name */
    public String f23756w;

    public interface hp {
        void hp(boolean z2);
    }

    private int j(q qVar) {
        String strU = qVar.u();
        Integer num = (Integer) n.hp(qVar.n(), Integer.class);
        if ((num != null && num.intValue() > 0) || TextUtils.isEmpty(strU)) {
            return 0;
        }
        try {
            return new JSONObject(strU).optInt("auth_reward_gold");
        } catch (Throwable th) {
            u.hp(com.byazt.bc.jx.TAG, th);
            return 0;
        }
    }

    @Override // com.byazt.nra.hp
    public void a_(String str) {
        this.f23756w = str;
    }

    @Override // com.byazt.nra.j
    public String eb() {
        return this.f23756w;
    }

    @Override // com.byazt.nra.j
    public int hp(q qVar, jx jxVar, String str, Map<String, Object> map) {
        return -1;
    }

    @Override // com.byazt.nra.j
    @Deprecated
    public int l(mp mpVar) {
        return 2;
    }

    @Override // com.byazt.nra.hp
    public boolean r_() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x030b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0158 A[Catch: Exception -> 0x0165, TryCatch #8 {Exception -> 0x0165, blocks: (B:81:0x0143, B:85:0x0158, B:87:0x0162), top: B:180:0x0143 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.os.Bundle l(android.content.Context r24, com.byazt.yrp.q r25, java.util.Map<java.lang.String, java.lang.Object> r26) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 905
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.nra.a.l(android.content.Context, com.byazt.yrp.q, java.util.Map):android.os.Bundle");
    }

    @Override // com.byazt.nra.j
    public boolean a_(mp mpVar) {
        return hp((q) mpVar);
    }

    @Override // com.byazt.nra.hp, com.byazt.nra.j
    public void hp(Function<SparseArray<Object>, Object> function) {
        super.hp(function);
    }

    @Override // com.byazt.nra.j
    public int hp(final Context context, final q qVar, final Map<String, Object> map) {
        String str;
        final String str2;
        jx(qVar);
        final int iW = qVar.w();
        int i2 = (iW != 9 || !Objects.equals(map.get("saas_status_while_click"), 2) || qVar.D_() == null || qVar.D_().jx() == null) ? iW : 2;
        if (!hp(qVar.e(), i2)) {
            return 6;
        }
        if (map != null) {
            str = (String) map.get("event_tag");
        } else {
            str = "";
        }
        String str3 = str;
        if (!a()) {
            hp(com.byazt.rj.jx.hp(qVar, map), str3, iW, 1, i2 == 7 ? 1 : 2);
            return 1;
        }
        com.byazt.rj.jx.hp(qVar, map).jm();
        if (this.hp == null) {
            return 4;
        }
        this.f23788l = str3;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        if (w() != 2 ? hp(qVar, new hp() { // from class: com.byazt.nra.a.1
            @Override // com.byazt.nra.a.hp
            public void hp(boolean z2) {
                boolean z3;
                if (atomicBoolean.compareAndSet(false, true)) {
                    a aVar = a.this;
                    aVar.hp(context, qVar, iW, aVar.f23788l, (Map<String, Object>) map);
                    z3 = false;
                } else {
                    z3 = true;
                }
                k.hp().hp(com.byazt.rj.jx.hp(qVar, (Map<String, Object>) map), System.currentTimeMillis() - jCurrentTimeMillis, z2, z3);
            }
        }, true, map) : false) {
            rv rvVarC_ = qVar.C_();
            if (qVar.w() == 9) {
                rvVarC_ = qVar.D_() != null ? qVar.D_().j() : null;
            }
            rv rvVar = rvVarC_;
            if (rvVar != null) {
                long jW = rvVar.w();
                if (jW > 0) {
                    str2 = str3;
                    e.jx().postDelayed(new Runnable() { // from class: com.byazt.nra.a.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                a.this.hp(context, qVar, iW, str2, (Map<String, Object>) map);
                            }
                        }
                    }, jW);
                } else {
                    str2 = str3;
                }
                if (rvVar.a() == 1 && s.u().jx() != null) {
                    new com.byazt.jdb.q().hp(new q.hp() { // from class: com.byazt.nra.a.3
                        @Override // com.byazt.jdb.q.hp
                        public void hp(boolean z2) {
                        }

                        @Override // com.byazt.jdb.q.hp
                        public void hp(long j2) {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                a.this.hp(context, qVar, iW, str2, (Map<String, Object>) map);
                            }
                        }

                        @Override // com.byazt.jdb.q.hp
                        public void hp(String str4) {
                            if (atomicBoolean.compareAndSet(false, true)) {
                                a.this.hp(context, qVar, iW, str2, (Map<String, Object>) map);
                            }
                        }
                    });
                }
            }
            return 0;
        }
        return hp(context, qVar, i2, str3, map);
    }

    public boolean hp(com.byazt.yrp.q qVar, final hp hpVar, boolean z2, Map<String, Object> map) {
        if (this.f23756w == null) {
            return false;
        }
        rv rvVarC_ = qVar.C_();
        if (qVar.w() == 9) {
            rvVarC_ = qVar.D_() != null ? qVar.D_().j() : null;
        }
        if (rvVarC_ == null || rvVarC_.jx() == 0) {
            return false;
        }
        try {
            if (Integer.parseInt(this.f23756w.replaceAll("\\.", "")) < 211413) {
                return false;
            }
        } catch (Exception unused) {
        }
        int iL = rvVarC_.l();
        boolean z3 = iL > 0;
        if (z2) {
            z3 = iL == 3;
        }
        if (z3) {
            this.f23754a = new SoftReference<>(com.byazt.rj.jx.hp(qVar, map));
            if (hp(new com.byazt.cp.l() { // from class: com.byazt.nra.a.4
                @Override // com.byazt.cp.l
                public void hp(Object obj) {
                    boolean z4 = false;
                    if (obj instanceof Map) {
                        Map map2 = (Map) obj;
                        if (map2.containsKey("code")) {
                            Object obj2 = map2.get("code");
                            if (obj2 instanceof String) {
                                try {
                                    if (Integer.parseInt((String) obj2) == 1) {
                                        z4 = true;
                                    }
                                } catch (NumberFormatException unused2) {
                                }
                            }
                        }
                    }
                    hpVar.hp(z4);
                }
            }, iL == 3) == 1) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int hp(Context context, com.byazt.yrp.q qVar, int i2, String str, Map<String, Object> map) {
        int iL;
        int iIntValue;
        int i3;
        int i4;
        int i5;
        com.byazt.rj.jx.hp(qVar, map).jm();
        if (this.hp != null) {
            iL = 0;
            Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(0).hp(Integer.class).hp(0, new dy().hp(g.f49337X, context).hp("bundle", l(context, qVar, map))).l());
            iIntValue = objApply != null ? ((Integer) objApply).intValue() : 0;
            this.f23788l = str;
            this.f23755j = qVar.n();
            if (iIntValue == 0) {
                this.f23754a = new SoftReference<>(com.byazt.rj.jx.hp(qVar, map));
                int iHp = com.byazt.zls.jx.hp(map);
                if (iHp == 101 || iHp == 102) {
                    iIntValue |= iHp << 8;
                } else {
                    i5 = 2;
                    if (hp(qVar, iHp)) {
                        iL = l(qVar);
                        i2 = 7;
                        if (iL == 0) {
                            try {
                                new com.byazt.jf.hp().hp(str).hp(context, map, qVar);
                                iIntValue |= iHp << 8;
                            } catch (Exception unused) {
                            }
                        }
                        i3 = i2;
                        i4 = i5;
                    } else {
                        if (qVar.w() != 9) {
                        }
                        i3 = i2;
                        i4 = i5;
                    }
                }
            } else {
                iL = 3;
            }
            i5 = i2;
            i3 = i2;
            i4 = i5;
        } else {
            iL = 1;
            iIntValue = 4;
            i3 = i2;
            i4 = i3;
        }
        hp(com.byazt.rj.jx.hp(qVar, map), str, i3, i4, iL);
        return iIntValue;
    }

    private void hp(JSONArray jSONArray, com.byazt.yrp.q qVar) throws JSONException {
        com.byazt.by.hp hpVar;
        if (qVar == null || jSONArray == null || (hpVar = (com.byazt.by.hp) n.hp(qVar.n(), com.byazt.by.hp.class)) == null || hpVar.f18692l.isEmpty()) {
            return;
        }
        String strJ = qVar.j();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String strOptString = jSONObject.optString("type");
                if (hpVar.f18692l.contains(strJ + "_" + strOptString)) {
                    jSONObject.put("status", 1);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static String hp(int i2) {
        if (i2 == 7) {
            return EnterFromMerge.AD_UNION_EXCITATION.lowerName();
        }
        if (i2 == 8) {
            return EnterFromMerge.AD_UNION_INSERT.lowerName();
        }
        if (i2 == 5) {
            return EnterFromMerge.AD_UNION_FEED.lowerName();
        }
        if (i2 == 9) {
            return EnterFromMerge.AD_UNION_DRAW.lowerName();
        }
        if (i2 == 1) {
            return "ad_union_banner";
        }
        if (i2 == 3 || i2 == 4) {
            return "ad_union_topview";
        }
        if (i2 == 2) {
            return "ad_union_former_insert";
        }
        if (i2 == 6) {
            return "ad_union_patch";
        }
        return EnterFromMerge.NO_VALUE.lowerName();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    @Override // com.byazt.nra.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int hp(android.content.Context r7, com.byazt.xci.mp r8, java.util.Map<java.lang.String, java.lang.Object> r9) {
        /*
            r6 = this;
            r0 = 0
            if (r9 == 0) goto L15
            java.lang.String r2 = "reward_countdown"
            java.lang.Object r2 = r9.get(r2)     // Catch: java.lang.Exception -> L15
            boolean r3 = r2 instanceof java.lang.Long     // Catch: java.lang.Exception -> L15
            if (r3 == 0) goto L15
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.lang.Exception -> L15
            long r2 = r2.longValue()     // Catch: java.lang.Exception -> L15
            goto L16
        L15:
            r2 = r0
        L16:
            r4 = 5
            if (r7 == 0) goto L3f
            if (r8 != 0) goto L1c
            goto L3f
        L1c:
            boolean r5 = r7 instanceof android.app.Activity
            if (r5 != 0) goto L22
            r7 = 7
            return r7
        L22:
            boolean r5 = com.byazt.xci.y.hp(r8)
            if (r5 != 0) goto L29
            return r4
        L29:
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 >= 0) goto L30
            r7 = 8
            return r7
        L30:
            int r0 = com.byazt.xci.y.l(r8)
            r1 = 1
            if (r0 != r1) goto L3a
            r7 = 9
            return r7
        L3a:
            int r7 = r6.hp(r7, r8, r9)
            return r7
        L3f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.nra.a.hp(android.content.Context, com.byazt.xci.mp, java.util.Map):int");
    }

    @Override // com.byazt.nra.j
    public int hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return 15;
        }
        if (this.hp == null) {
            return 12;
        }
        if (!a()) {
            return 11;
        }
        Object objAn = s.u().an();
        if (objAn == null) {
            return 13;
        }
        try {
            Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(8).hp(Boolean.class).hp(0, new dy().hp(g.f49337X, objAn).hp("scheme_uri", str)).l());
            return objApply != null ? ((Boolean) objApply).booleanValue() : false ? 1 : 10;
        } catch (Exception unused) {
            return 14;
        }
    }

    @Override // com.byazt.nra.j
    public int hp(com.byazt.cp.l lVar, boolean z2) {
        if (this.hp == null) {
            return 12;
        }
        if (!a()) {
            return 11;
        }
        HashMap map = new HashMap();
        map.put("expand_method_name", "requestDyAuth");
        map.put("expand_method_param", new Object[]{s.u().an(), lVar, Boolean.valueOf(z2)});
        Objects.toString(this.hp.apply(com.byazt.wi.j.hp().hp(7).hp(Void.class).hp(0, map).l()));
        return 1;
    }

    @Override // com.byazt.nra.hp, com.byazt.nra.j
    public void hp(String str, mp mpVar, long j2) {
        com.byazt.we.hp.hp(str, mpVar, j2);
    }

    @Override // com.byazt.nra.j
    public void hp(String str, boolean z2) {
        if (this.hp != null && a()) {
            HashMap map = new HashMap();
            map.put("expand_method_name", str);
            map.put("expand_method_param", new Object[]{Boolean.valueOf(z2)});
            this.hp.apply(com.byazt.wi.j.hp().hp(7).hp(Void.class).hp(0, map).l());
        }
    }

    public static String l(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
                return EnterMethod.LIVE_CELL.lowerName();
            case 5:
                return EnterMethod.LIVE_CARD.lowerName();
            default:
                return EnterMethod.NO_VALUE.lowerName();
        }
    }
}
