package com.byazt.zn;

import android.text.TextUtils;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 38})
/* loaded from: classes3.dex */
public class j {

    @com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp implements Comparable<hp> {
        public long hp;

        /* renamed from: l, reason: collision with root package name */
        public String f28524l;

        public hp(String str, long j2) {
            this.f28524l = str;
            this.hp = j2;
        }

        @Override // java.lang.Comparable
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compareTo(hp hpVar) {
            if (hpVar == null) {
                return 1;
            }
            long j2 = this.hp;
            long j3 = hpVar.hp;
            if (j2 > j3) {
                return 1;
            }
            return j2 == j3 ? 0 : -1;
        }
    }

    private static void delete(int i2, int i3, com.byazt.ctq.eb ebVar, int i4) {
        if (ebVar == null) {
            return;
        }
        try {
            Map all = ebVar.getAll();
            if (all != null && all.size() != 0) {
                int size = all.size();
                if (hp(i2)) {
                    if (size > 1) {
                        ebVar.clear();
                        return;
                    }
                    return;
                }
                if (i4 >= i3) {
                    ebVar.clear();
                    return;
                }
                int i5 = size + i4;
                if (i5 > i3) {
                    PriorityQueue priorityQueue = new PriorityQueue();
                    for (Map.Entry entry : all.entrySet()) {
                        String str = (String) entry.getValue();
                        JSONObject jSONObject = (str == null || !str.contains("pre_fetch_time")) ? null : new JSONObject(str);
                        if (jSONObject != null) {
                            priorityQueue.add(new hp((String) entry.getKey(), jSONObject.optLong("pre_fetch_time")));
                        }
                    }
                    int size2 = priorityQueue.size();
                    int i6 = i5 - i3;
                    if (size2 == 0 || size2 < i6) {
                        ebVar.clear();
                        return;
                    }
                    for (int i7 = 0; i7 < i6; i7++) {
                        hp hpVar = (hp) priorityQueue.poll();
                        if (hpVar != null) {
                            ebVar.remove(hpVar.f28524l);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean hp(int i2) {
        return i2 == 3 || i2 == 7 || i2 == 8;
    }

    public static void hp(com.byazt.xci.hp hpVar, int i2, int i3, String str) {
        if (hpVar == null || hpVar.l() == null || i3 <= 0) {
            return;
        }
        List<mp> listL = hpVar.l();
        int size = listL.size();
        try {
            com.byazt.ctq.eb ebVarJx = com.byazt.ry.j.jx(str, i2 + "_prefetch_new");
            delete(i2, i3, ebVarJx, size);
            for (mp mpVar : listL) {
                String strRu = mpVar.ru();
                String strL = com.byazt.ymw.hp.l(mpVar.ij().toString());
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pre_fetch_time", System.currentTimeMillis());
                jSONObject.put("message", strL);
                ebVarJx.put(strRu, jSONObject.toString());
            }
        } catch (Throwable unused) {
        }
    }

    public static mp hp(String str, int i2, String str2) {
        if (com.byazt.jz.sz.l().yr() <= 0) {
            return null;
        }
        com.byazt.ctq.eb ebVarJx = com.byazt.ry.j.jx(str2, i2 + "_prefetch_new");
        String strOptString = ebVarJx.get(str, "");
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                if (strOptString.contains("pre_fetch_time")) {
                    strOptString = new JSONObject(strOptString).optString("message");
                }
                mp mpVarHp = com.byazt.jz.hp.hp(new JSONObject(com.byazt.ymw.hp.jx(strOptString)));
                ebVarJx.remove(str);
                return mpVarHp;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
