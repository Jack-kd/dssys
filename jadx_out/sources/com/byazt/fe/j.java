package com.byazt.fe;

import android.text.TextUtils;
import com.anythink.core.common.f.o;
import com.byazt.fe.eb;
import com.byazt.zn.nu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, 38})
/* loaded from: classes2.dex */
public class j implements l {
    public static final com.byazt.ow.w hp = nu.hp("open_ad_sdk_union_meta_cache_kv");

    private String jx(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        return "sp_reward_video_cache_".concat(String.valueOf(str));
    }

    @Override // com.byazt.fe.l
    public void hp(String str, eb.l lVar, a aVar, eb.hp hpVar, com.byazt.fe.hp hpVar2) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(hp.get(jx(str), copyOnWriteArraySet));
        if (hpVar.j() <= 0) {
            return;
        }
        if (hpVar.j() > 0 && copyOnWriteArraySet.size() >= hpVar.j()) {
            Iterator it = copyOnWriteArraySet.iterator();
            hp hpVar3 = null;
            long j2 = 0;
            String str2 = null;
            while (it.hasNext()) {
                String str3 = (String) it.next();
                hp hpVarHp = hp.hp(str3);
                if (str2 == null || j2 < hpVarHp.hp) {
                    j2 = hpVarHp.hp;
                    str2 = str3;
                    hpVar3 = hpVarHp;
                }
            }
            if (hpVar3 != null) {
                hpVar2.hp(new eb.l(hpVar3.f19708j, hpVar3.hp, hpVar3.f19709l, hpVar3.f19707a));
            }
            copyOnWriteArraySet.remove(str2);
        }
        copyOnWriteArraySet.add(new hp(lVar.jx, lVar.hp, lVar.f19705l, aVar.hp, lVar.f19706w, aVar.f19694l, aVar.jx).toString());
        hp.put(jx(str), copyOnWriteArraySet);
    }

    @Override // com.byazt.fe.l
    public void l(String str) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(hp.get(jx(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            hp hpVarHp = hp.hp((String) it.next());
            hpVarHp.jx = false;
            copyOnWriteArraySet2.add(hpVarHp.toString());
        }
        hp.put(jx(str), copyOnWriteArraySet2);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f19707a;
        public long eb;
        public long hp;

        /* renamed from: j, reason: collision with root package name */
        public String f19708j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public long f19709l;

        /* renamed from: s, reason: collision with root package name */
        public int f19710s;

        /* renamed from: w, reason: collision with root package name */
        public int f19711w;

        public hp(String str, long j2, long j3, boolean z2, String str2, long j4, int i2, int i3) {
            this.hp = j2;
            this.f19709l = j3;
            this.jx = z2;
            this.f19708j = str;
            this.f19707a = str2;
            this.eb = j4;
            this.f19710s = i2;
            this.f19711w = i3;
        }

        public static hp hp(String str) {
            long jOptLong;
            long jOptLong2;
            boolean z2;
            int iOptInt;
            String str2;
            long j2;
            String str3;
            String str4;
            long j3;
            boolean z3;
            String strOptString;
            String strOptString2 = "";
            long jOptLong3 = 0;
            boolean zOptBoolean = true;
            int iOptInt2 = 0;
            try {
                JSONObject jSONObject = new JSONObject(str);
                jOptLong = jSONObject.optLong("create_time", 0L);
                try {
                    jOptLong2 = jSONObject.optLong(o.a.f3369g, 0L);
                    try {
                        zOptBoolean = jSONObject.optBoolean("is_using", false);
                        strOptString = jSONObject.optString("material_data", "");
                        try {
                            iOptInt = jSONObject.optInt("save_version", 0);
                        } catch (JSONException unused) {
                            z2 = zOptBoolean;
                            iOptInt = 0;
                        }
                    } catch (JSONException unused2) {
                        z2 = zOptBoolean;
                        iOptInt = 0;
                        j2 = 0;
                        str2 = "";
                    }
                } catch (JSONException unused3) {
                    jOptLong2 = 0;
                    z2 = true;
                    iOptInt = 0;
                    str2 = "";
                    j2 = jOptLong2;
                    str3 = strOptString2;
                    str4 = str2;
                    j3 = j2;
                    z3 = z2;
                    return new hp(str3, jOptLong, jOptLong2, z3, str4, j3, iOptInt2, iOptInt);
                }
                try {
                    strOptString2 = jSONObject.optString("uuid", "");
                    jOptLong3 = jSONObject.optLong("priority", 0L);
                    iOptInt2 = jSONObject.optInt(com.umeng.ccg.a.f49746H, 0);
                    str4 = strOptString2;
                    j3 = jOptLong3;
                    z3 = zOptBoolean;
                    str3 = strOptString;
                } catch (JSONException unused4) {
                    z2 = zOptBoolean;
                    j2 = jOptLong3;
                    str2 = strOptString2;
                    strOptString2 = strOptString;
                    str3 = strOptString2;
                    str4 = str2;
                    j3 = j2;
                    z3 = z2;
                    return new hp(str3, jOptLong, jOptLong2, z3, str4, j3, iOptInt2, iOptInt);
                }
            } catch (JSONException unused5) {
                jOptLong = 0;
                jOptLong2 = 0;
            }
            return new hp(str3, jOptLong, jOptLong2, z3, str4, j3, iOptInt2, iOptInt);
        }

        public boolean l(eb.hp hpVar) {
            if (System.currentTimeMillis() <= this.f19709l && !TextUtils.isEmpty(this.f19708j)) {
                return hpVar.jx() && 7643 != this.f19711w;
            }
            return true;
        }

        public String toString() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("create_time", this.hp);
                jSONObject.put(o.a.f3369g, this.f19709l);
                jSONObject.put("is_using", this.jx);
                jSONObject.put("material_data", this.f19708j);
                jSONObject.put("save_version", this.f19711w);
                jSONObject.put("uuid", this.f19707a);
                jSONObject.put("priority", this.eb);
                jSONObject.put(com.umeng.ccg.a.f49746H, this.f19710s);
            } catch (JSONException unused) {
            }
            return jSONObject.toString();
        }

        public hp(String str, long j2, long j3, boolean z2, String str2, long j4, int i2) {
            this(str, j2, j3, z2, str2, j4, i2, 7643);
        }

        public boolean hp(eb.hp hpVar) {
            return (l(hpVar) || this.jx) ? false : true;
        }
    }

    @Override // com.byazt.fe.l
    public eb.l hp(String str, eb.hp hpVar, long j2, List<String> list) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        copyOnWriteArraySet.addAll(hp.get(jx(str), copyOnWriteArraySet));
        return hp(copyOnWriteArraySet, hpVar, j2, list);
    }

    private eb.l hp(CopyOnWriteArraySet<String> copyOnWriteArraySet, eb.hp hpVar, long j2, List<String> list) {
        int i2;
        int i3;
        Iterator<String> it = copyOnWriteArraySet.iterator();
        hp hpVar2 = null;
        while (it.hasNext()) {
            hp hpVarHp = hp.hp(it.next());
            if (hpVarHp.hp(hpVar)) {
                String str = hpVarHp.f19707a;
                if (list == null || str == null || !list.contains(str)) {
                    if (j2 <= 0 || hpVarHp.hp >= j2) {
                        int iW = hpVar.w();
                        if (iW != 1) {
                            if (iW != 2) {
                                if (iW != 3) {
                                    return new eb.l(hpVarHp.f19708j, hpVarHp.hp, hpVarHp.f19709l, hpVarHp.f19707a);
                                }
                                if (hpVar2 == null || (i2 = hpVar2.f19710s) > (i3 = hpVarHp.f19710s) || (i2 == i3 && hpVar2.hp < hpVarHp.hp)) {
                                    hpVar2 = hpVarHp;
                                }
                            } else if (hpVar2 == null || hpVar2.eb < hpVarHp.eb) {
                                hpVar2 = hpVarHp;
                            }
                        } else if (hpVar2 == null || hpVar2.hp < hpVarHp.hp) {
                            hpVar2 = hpVarHp;
                        }
                    }
                }
            }
        }
        if (hpVar2 != null) {
            return new eb.l(hpVar2.f19708j, hpVar2.hp, hpVar2.f19709l, hpVar2.f19707a);
        }
        return null;
    }

    @Override // com.byazt.fe.l
    public void hp(String str) {
        hp.remove(jx(str));
    }

    @Override // com.byazt.fe.l
    public void hp(eb.hp hpVar) {
        hp.clear();
    }

    @Override // com.byazt.fe.l
    public void hp(String str, eb.hp hpVar, com.byazt.fe.hp hpVar2) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(hp.get(jx(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            hp hpVarHp = hp.hp((String) it.next());
            if (!hpVarHp.l(hpVar)) {
                copyOnWriteArraySet2.add(hpVarHp.toString());
            } else if (hpVar2 != null) {
                hpVar2.hp(new eb.l(hpVarHp.f19708j, hpVarHp.hp, hpVarHp.f19709l, hpVarHp.f19707a));
            }
        }
        hp.put(jx(str), copyOnWriteArraySet2);
    }

    @Override // com.byazt.fe.l
    public void hp(String str, String str2) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(hp.get(jx(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            if (!TextUtils.equals(hp.hp(str3).f19707a, str2)) {
                copyOnWriteArraySet2.add(str3);
            }
        }
        hp.put(jx(str), copyOnWriteArraySet2);
    }

    @Override // com.byazt.fe.l
    public void hp(String str, String str2, boolean z2) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(hp.get(jx(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            hp hpVarHp = hp.hp(str3);
            if (TextUtils.equals(hpVarHp.f19707a, str2)) {
                hpVarHp.jx = z2;
                copyOnWriteArraySet2.add(hpVarHp.toString());
            } else {
                copyOnWriteArraySet2.add(str3);
            }
        }
        hp.put(jx(str), copyOnWriteArraySet2);
    }

    @Override // com.byazt.fe.l
    public boolean hp(String str, eb.hp hpVar) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(hp.get(jx(str), copyOnWriteArraySet));
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            if (hp.hp((String) it.next()).hp(hpVar)) {
                return true;
            }
        }
        return false;
    }
}
