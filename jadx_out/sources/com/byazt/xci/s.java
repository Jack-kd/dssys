package com.byazt.xci;

import android.text.TextUtils;
import com.byazt.lca.w;
import com.byazt.rz.PluginConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import com.umeng.analytics.pro.cl;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static jx f27488a;
    public static jx eb;
    public static jx hp;

    /* renamed from: j, reason: collision with root package name */
    public static jx f27489j;
    public static jx jx;

    /* renamed from: l, reason: collision with root package name */
    public static jx f27490l;

    /* renamed from: s, reason: collision with root package name */
    public static final jx f27491s = new jx(null);

    /* renamed from: w, reason: collision with root package name */
    public static jx f27492w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f27493a;

        /* renamed from: e, reason: collision with root package name */
        public String f27494e;
        public String eb;
        public JSONObject hp;

        /* renamed from: j, reason: collision with root package name */
        public String f27495j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f27496l;

        /* renamed from: q, reason: collision with root package name */
        public String f27497q;

        /* renamed from: s, reason: collision with root package name */
        public String f27498s;

        /* renamed from: w, reason: collision with root package name */
        public String f27499w;

        public hp(JSONObject jSONObject) {
            this.hp = jSONObject;
            if (jSONObject != null) {
                this.f27496l = jSONObject.optString("mix_ad");
                this.jx = jSONObject.optString("disable_trans_cache");
                this.f27495j = jSONObject.optString("delete_on_load");
                this.f27499w = jSONObject.optString("load_only_online");
                this.f27493a = jSONObject.optString("forbid_save_cache");
                this.f27497q = jSONObject.optString("forbid_read_cache");
                this.eb = jSONObject.optString("forbid_realtime_use_cache");
                this.f27498s = jSONObject.optString("forbid_realtime");
                this.f27494e = jSONObject.optString("forbid_preload");
            }
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00b1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean l(java.lang.String r5, com.byazt.xci.s.l r6) {
            /*
                r4 = this;
                r5.getClass()
                int r0 = r5.hashCode()
                r1 = 1
                r2 = 0
                r3 = -1
                switch(r0) {
                    case -1085434702: goto L6a;
                    case -1073750810: goto L5f;
                    case -883700652: goto L54;
                    case -707542069: goto L49;
                    case -91260031: goto L3e;
                    case 899503542: goto L33;
                    case 1290851437: goto L28;
                    case 1816465502: goto L1d;
                    case 2017273124: goto Lf;
                    default: goto Ld;
                }
            Ld:
                goto L74
            Lf:
                java.lang.String r0 = "forbid_read_cache"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L19
                goto L74
            L19:
                r3 = 8
                goto L74
            L1d:
                java.lang.String r0 = "forbid_preload"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L26
                goto L74
            L26:
                r3 = 7
                goto L74
            L28:
                java.lang.String r0 = "load_only_online"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L31
                goto L74
            L31:
                r3 = 6
                goto L74
            L33:
                java.lang.String r0 = "forbid_realtime"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L3c
                goto L74
            L3c:
                r3 = 5
                goto L74
            L3e:
                java.lang.String r0 = "forbid_realtime_use_cache"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L47
                goto L74
            L47:
                r3 = 4
                goto L74
            L49:
                java.lang.String r0 = "forbid_save_cache"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L52
                goto L74
            L52:
                r3 = 3
                goto L74
            L54:
                java.lang.String r0 = "disable_trans_cache"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L5d
                goto L74
            L5d:
                r3 = 2
                goto L74
            L5f:
                java.lang.String r0 = "mix_ad"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L68
                goto L74
            L68:
                r3 = r1
                goto L74
            L6a:
                java.lang.String r0 = "delete_on_load"
                boolean r5 = r5.equals(r0)
                if (r5 != 0) goto L73
                goto L74
            L73:
                r3 = r2
            L74:
                r5 = 0
                switch(r3) {
                    case 0: goto L9d;
                    case 1: goto L8f;
                    case 2: goto L8c;
                    case 3: goto L89;
                    case 4: goto L86;
                    case 5: goto L83;
                    case 6: goto L80;
                    case 7: goto L7d;
                    case 8: goto L7a;
                    default: goto L78;
                }
            L78:
                r0 = r5
                goto L9f
            L7a:
                java.lang.String r0 = r4.f27497q
                goto L9f
            L7d:
                java.lang.String r0 = r4.f27494e
                goto L9f
            L80:
                java.lang.String r0 = r4.f27499w
                goto L9f
            L83:
                java.lang.String r0 = r4.f27498s
                goto L9f
            L86:
                java.lang.String r0 = r4.eb
                goto L9f
            L89:
                java.lang.String r0 = r4.f27493a
                goto L9f
            L8c:
                java.lang.String r0 = r4.jx
                goto L9f
            L8f:
                java.lang.String r0 = r4.f27496l
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 == 0) goto L9a
                java.lang.String r0 = "${(meta.group_info.group_id != null) || (meta.insert_ad_control == 1) || (meta.refresh_ad_control == 1) || (meta.force_refresh_ad_control == 1) || (meta.refresh_control == 1) || (meta.web_refresh_control == 1)}"
                goto L9f
            L9a:
                java.lang.String r0 = r4.f27496l
                goto L9f
            L9d:
                java.lang.String r0 = r4.f27495j
            L9f:
                boolean r3 = android.text.TextUtils.isEmpty(r0)
                if (r3 == 0) goto La6
                return r2
            La6:
                if (r0 == 0) goto Lb1
                java.lang.String r3 = "meta."
                boolean r3 = r0.contains(r3)     // Catch: java.lang.Exception -> Lba
                if (r3 == 0) goto Lb1
                goto Lb2
            Lb1:
                r1 = r2
            Lb2:
                org.json.JSONObject r6 = r4.hp(r6, r1)     // Catch: java.lang.Exception -> Lba
                java.lang.String r5 = com.byazt.ss.l.hp(r0, r6)     // Catch: java.lang.Exception -> Lba
            Lba:
                java.lang.String r6 = "true"
                boolean r5 = android.text.TextUtils.equals(r5, r6)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.xci.s.hp.l(java.lang.String, com.byazt.xci.s$l):boolean");
        }

        public JSONObject hp() {
            return this.hp;
        }

        private JSONObject hp(l lVar, boolean z2) throws JSONException {
            Object obj;
            int iJx;
            int i2;
            int i3;
            com.byazt.jt.l lVar2 = null;
            if (lVar != null) {
                com.byazt.jt.l lVarHp = lVar.hp();
                Object objL = z2 ? lVar.l() : null;
                iJx = lVar.jx();
                obj = objL;
                lVar2 = lVarHp;
            } else {
                obj = null;
                iJx = 0;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(bv.f48923x, "android");
                String str = com.byazt.jz.d.f21860w;
                String strLv = "";
                if (TextUtils.isEmpty(str)) {
                    i2 = 0;
                } else {
                    try {
                        i2 = Integer.parseInt(str.replaceAll("\\.", ""));
                    } catch (Throwable unused) {
                    }
                }
                if (TextUtils.isEmpty("7.6.4.3")) {
                    i3 = 0;
                } else {
                    try {
                        i3 = Integer.parseInt("7.6.4.3".replaceAll("\\.", ""));
                    } catch (Throwable unused2) {
                    }
                }
                jSONObject2.put("sdk_version", i2);
                jSONObject2.put(PluginConstants.KEY_PLUGIN_VERSION, i3);
                jSONObject.put("device", jSONObject2);
                if (lVar2 != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("adType", lVar2.sz());
                    jSONObject3.put("adCount", lVar2.jl());
                    jSONObject3.put("userData", com.byazt.dnb.e.hp(lVar2.ns()));
                    jSONObject.put("adSlot", jSONObject3);
                }
                if (obj != null) {
                    jSONObject.put("meta", obj);
                }
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("last_net_code", iJx);
                jSONObject4.put("has_cache", lVar != null && lVar.j());
                int iSz = lVar2 != null ? lVar2.sz() : 0;
                if (lVar2 != null) {
                    strLv = lVar2.lv();
                }
                JSONObject jSONObjectHp = com.byazt.sr.jx.hp(iSz, strLv);
                if (jSONObjectHp != null) {
                    jSONObject4.put("ca_interval_info", jSONObjectHp);
                }
                jSONObject.put("state", jSONObject4);
                return jSONObject;
            } catch (JSONException e2) {
                throw new RuntimeException(e2);
            }
        }

        public boolean hp(String str, l lVar) {
            return l(str, lVar);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1752})
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public LinkedHashMap<Integer, Integer> f27500a;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f27501j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f27502l;

        /* renamed from: w, reason: collision with root package name */
        public int f27503w;

        public j(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.hp = jSONObject.optInt("device_score_threshold", 0);
                this.f27502l = jSONObject.optInt("net_type_threshold", 0);
                this.jx = jSONObject.optInt("base_score", 60);
                this.f27501j = jSONObject.optInt("score_threshold", 60);
                this.f27503w = jSONObject.optInt("backup_score_threshold", 0);
                LinkedHashMap<Integer, Integer> linkedHashMap = new LinkedHashMap<>();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("last_cache_score");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i2);
                        int iOptInt = jSONArrayOptJSONArray2.optInt(0);
                        int iOptInt2 = jSONArrayOptJSONArray2.optInt(1);
                        if (iOptInt > 0) {
                            linkedHashMap.put(Integer.valueOf(iOptInt), Integer.valueOf(iOptInt2));
                        }
                    }
                }
                this.f27500a = linkedHashMap;
            }
        }

        public LinkedHashMap<Integer, Integer> a() {
            return this.f27500a;
        }

        public int eb() {
            return this.jx;
        }

        public JSONObject hp() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("device_score_threshold", this.hp);
                jSONObject.put("net_type_threshold", this.f27502l);
                jSONObject.put("base_score", this.jx);
                jSONObject.put("score_threshold", this.f27501j);
                jSONObject.put("backup_score_threshold", this.f27503w);
                JSONArray jSONArray = new JSONArray();
                LinkedHashMap<Integer, Integer> linkedHashMap = this.f27500a;
                if (linkedHashMap != null && !linkedHashMap.isEmpty()) {
                    for (Integer num : this.f27500a.keySet()) {
                        JSONArray jSONArray2 = new JSONArray();
                        jSONArray2.put(num);
                        jSONArray2.put(this.f27500a.get(num));
                        jSONArray.put(jSONArray2);
                    }
                }
                jSONObject.put("last_cache_score", jSONArray);
            } catch (Exception unused) {
            }
            return jSONObject;
        }

        public int j() {
            return this.f27501j;
        }

        public int jx() {
            return this.f27502l;
        }

        public int l() {
            return this.hp;
        }

        public int w() {
            return this.f27503w;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK})
    public static class jx {

        /* renamed from: a, reason: collision with root package name */
        public boolean f27504a;

        /* renamed from: e, reason: collision with root package name */
        public hp f27505e;
        public int eb;
        public int gu;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f27506j;
        public int jl;
        public int jx;

        /* renamed from: k, reason: collision with root package name */
        public int f27507k;

        /* renamed from: l, reason: collision with root package name */
        public int f27508l;

        /* renamed from: q, reason: collision with root package name */
        public j f27509q;

        /* renamed from: s, reason: collision with root package name */
        public int f27510s;

        /* renamed from: u, reason: collision with root package name */
        public double f27511u;

        /* renamed from: v, reason: collision with root package name */
        public boolean f27512v;

        /* renamed from: w, reason: collision with root package name */
        public int f27513w;
        public w xs;
        public int zy;

        public jx(JSONObject jSONObject) {
            this.hp = 1;
            this.f27508l = 1;
            this.jx = -1;
            this.f27506j = 0;
            this.f27513w = 10000;
            this.f27504a = false;
            this.eb = -1;
            this.f27510s = 0;
            this.gu = 1;
            this.jl = 0;
            this.zy = 0;
            this.f27507k = 0;
            this.f27512v = true;
            this.f27511u = 0.0d;
            if (jSONObject == null) {
                this.xs = new w(null);
                return;
            }
            this.hp = jSONObject.optInt("get_type", 1);
            this.f27508l = jSONObject.optInt("max_count", 1);
            this.jx = jSONObject.optInt("strategy_type", -1);
            this.f27506j = jSONObject.optInt("store_type", 0);
            this.f27513w = jSONObject.optInt("online_timeout", 10000);
            this.f27504a = jSONObject.optBoolean(cl.f49062q, false);
            this.eb = jSONObject.optInt("load_type", -1);
            this.f27510s = jSONObject.optInt("trans_cache", 0);
            this.gu = jSONObject.optInt("ad_count_max", 1);
            this.jl = jSONObject.optInt("libra_group", 0);
            this.zy = jSONObject.optInt("record_interval_minute", 0);
            this.f27507k = jSONObject.optInt("record_cache_minute", 0);
            this.f27509q = new j(jSONObject.optJSONObject("score_config"));
            this.f27505e = new hp(jSONObject.optJSONObject("control_el"));
            this.f27512v = jSONObject.optBoolean("is_filter_version", true);
            this.f27511u = jSONObject.optDouble("cache_available_percent", 0.0d);
            this.xs = new w(jSONObject.optJSONObject("tmax_config"));
        }

        public int a() {
            return this.f27513w;
        }

        public int e() {
            return this.f27510s;
        }

        public boolean eb() {
            return this.f27504a;
        }

        public j gu() {
            return this.f27509q;
        }

        public int j() {
            return this.jx;
        }

        public int jl() {
            return Math.max(this.gu, 1);
        }

        public int jx() {
            if (this.f27508l <= 0) {
                this.f27508l = 1;
            }
            return this.f27508l;
        }

        public int k() {
            return this.zy;
        }

        public int l() {
            return this.hp;
        }

        public int q() {
            return this.eb;
        }

        public boolean s() {
            return this.f27512v;
        }

        public double u() {
            double d2 = this.f27511u;
            if (d2 >= 0.0d && d2 <= 1.0d) {
                return d2;
            }
            return 0.0d;
        }

        public int v() {
            return this.f27507k;
        }

        public int w() {
            return this.f27506j;
        }

        public w xs() {
            return this.xs;
        }

        public int zy() {
            return this.jl;
        }

        public String hp() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("get_type", this.hp);
                jSONObject.put("max_count", this.f27508l);
                jSONObject.put("strategy_type", this.jx);
                jSONObject.put("store_type", this.f27506j);
                jSONObject.put("online_timeout", this.f27513w);
                jSONObject.put(cl.f49062q, this.f27504a);
                jSONObject.put("is_filter_version", this.f27512v);
                jSONObject.put("load_type", this.eb);
                jSONObject.put("trans_cache", this.f27510s);
                jSONObject.put("score_config", this.f27509q.hp());
                jSONObject.put("control_el", this.f27505e.hp());
                jSONObject.put("ad_count_max", this.gu);
                jSONObject.put("libra_group", this.jl);
                jSONObject.put("record_interval_minute", this.zy);
                jSONObject.put("record_cache_minute", this.f27507k);
                jSONObject.put("cache_available_percent", this.f27511u);
                w wVar = this.xs;
                jSONObject.put("tmax_config", wVar == null ? null : wVar.hp());
            } catch (Exception unused) {
            }
            return jSONObject.toString();
        }

        public boolean hp(String str, l lVar) {
            if (this.f27505e == null) {
                return false;
            }
            System.currentTimeMillis();
            boolean zHp = this.f27505e.hp(str, lVar);
            System.currentTimeMillis();
            return zHp;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_FORCE_CLOSE_CODEC})
    public static class l {
        public com.byazt.jt.l hp;

        /* renamed from: j, reason: collision with root package name */
        public int f27514j;
        public mp jx;

        /* renamed from: l, reason: collision with root package name */
        public JSONObject f27515l;

        /* renamed from: w, reason: collision with root package name */
        public boolean f27516w;

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 767})
        public static class hp {
            public com.byazt.jt.l hp;

            /* renamed from: j, reason: collision with root package name */
            public int f27517j;
            public mp jx;

            /* renamed from: l, reason: collision with root package name */
            public JSONObject f27518l;

            /* renamed from: w, reason: collision with root package name */
            public boolean f27519w;

            public hp hp(com.byazt.jt.l lVar) {
                this.hp = lVar;
                return this;
            }

            public hp hp(JSONObject jSONObject) {
                this.f27518l = jSONObject;
                return this;
            }

            public hp hp(mp mpVar) {
                this.jx = mpVar;
                return this;
            }

            public hp hp(int i2) {
                this.f27517j = i2;
                return this;
            }

            public hp hp(boolean z2) {
                this.f27519w = z2;
                return this;
            }

            public l hp() {
                return new l(this);
            }
        }

        public com.byazt.jt.l hp() {
            return this.hp;
        }

        public boolean j() {
            return this.f27516w;
        }

        public int jx() {
            return this.f27514j;
        }

        public JSONObject l() {
            JSONObject jSONObject = this.f27515l;
            if (jSONObject != null) {
                return jSONObject;
            }
            mp mpVar = this.jx;
            if (mpVar != null) {
                return mpVar.ij();
            }
            return null;
        }

        private l(hp hpVar) {
            this.hp = hpVar.hp;
            this.jx = hpVar.jx;
            this.f27515l = hpVar.f27518l;
            this.f27514j = hpVar.f27517j;
            this.f27516w = hpVar.f27519w;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1751})
    public static class w {

        /* renamed from: a, reason: collision with root package name */
        public int f27520a;

        /* renamed from: e, reason: collision with root package name */
        public float f27521e;
        public int eb;
        public float ec;
        public float gu;
        public boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public int f27522j;
        public float jl;
        public long jx;

        /* renamed from: k, reason: collision with root package name */
        public float f27523k;

        /* renamed from: l, reason: collision with root package name */
        public long f27524l;

        /* renamed from: n, reason: collision with root package name */
        public float f27525n;
        public float ns;

        /* renamed from: q, reason: collision with root package name */
        public float f27526q;

        /* renamed from: s, reason: collision with root package name */
        public float f27527s;
        public float sz;

        /* renamed from: u, reason: collision with root package name */
        public float f27528u;

        /* renamed from: v, reason: collision with root package name */
        public float f27529v;
        public float vv;

        /* renamed from: w, reason: collision with root package name */
        public int f27530w;
        public float xs;
        public float zy;

        public w(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.hp = jSONObject.optBoolean("tmax_enable", false);
                this.f27524l = jSONObject.optLong("tmax_max_limit", 0L);
                this.jx = jSONObject.optLong("tmax_min_limit", 0L);
                this.f27522j = jSONObject.optInt("tmax_calc_type", 0);
                this.f27530w = jSONObject.optInt("tmax_calc_min_count_limit", 30);
                this.f27520a = jSONObject.optInt("tmax_calc_max_count_limit", 500);
                this.eb = jSONObject.optInt("tmax_cache_expire", 600);
                this.f27527s = (float) jSONObject.optDouble("tmax_calc_percent_low", 0.5d);
                this.f27526q = (float) jSONObject.optDouble("tmax_calc_percent_medium", 0.8999999761581421d);
                this.f27521e = (float) jSONObject.optDouble("tmax_calc_percent_high", 0.949999988079071d);
                this.gu = (float) jSONObject.optDouble("tmax_calc_boundary_pct", 0.9800000190734863d);
                this.jl = (float) jSONObject.optDouble("tmax_calc_shown_pct_low", 0.8999999761581421d);
                this.zy = (float) jSONObject.optDouble("tmax_calc_shown_pct_medium", 0.949999988079071d);
                this.f27523k = (float) jSONObject.optDouble("tmax_calc_shown_pct_high", 0.9900000095367432d);
                this.f27529v = (float) jSONObject.optDouble("tmax_calc_hard_cap_pct", 0.9950000047683716d);
                this.f27528u = (float) jSONObject.optDouble("tmax_deviation_ratio", 0.30000001192092896d);
                this.xs = (float) jSONObject.optDouble("tmax_marginal_load_rate", 0.05000000074505806d);
                this.vv = (float) jSONObject.optDouble("tmax_utilization_rate", 0.30000001192092896d);
                this.ec = (float) jSONObject.optDouble("tmax_too_small_load_success_rate_low", 0.8999999761581421d);
                this.sz = (float) jSONObject.optDouble("tmax_too_small_load_success_rate_high", 0.949999988079071d);
                this.f27525n = (float) jSONObject.optDouble("tmax_too_small_marginal_load_rate", 0.15000000596046448d);
                this.ns = (float) jSONObject.optDouble("tmax_too_small_deviation_ratio", -0.10000000149011612d);
            } else {
                this.hp = false;
                this.f27524l = 0L;
                this.jx = 0L;
                this.f27522j = 0;
                this.f27530w = 30;
                this.f27520a = 500;
                this.eb = 600;
                this.f27527s = 0.5f;
                this.f27526q = 0.9f;
                this.f27521e = 0.95f;
                this.gu = 0.98f;
                this.jl = 0.9f;
                this.zy = 0.95f;
                this.f27523k = 0.99f;
                this.f27529v = 0.995f;
                this.f27528u = 0.3f;
                this.xs = 0.05f;
                this.vv = 0.3f;
                this.ec = 0.9f;
                this.sz = 0.95f;
                this.f27525n = 0.15f;
                this.ns = -0.1f;
            }
            if (this.f27524l < 0) {
                this.f27524l = 0L;
            }
            if (this.jx < 0) {
                this.jx = 0L;
            }
            int i2 = this.f27522j;
            if (i2 == 0 || i2 == 1) {
                return;
            }
            this.f27522j = 0;
        }

        public int a() {
            return this.f27530w;
        }

        public float cx() {
            return this.ns;
        }

        public float e() {
            return this.f27526q;
        }

        public int eb() {
            int i2 = this.f27520a;
            if (i2 <= 0) {
                return 500;
            }
            return i2;
        }

        public float ec() {
            return this.vv;
        }

        public float gu() {
            return this.f27521e;
        }

        public JSONObject hp() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("tmax_enable", this.hp);
                jSONObject.put("tmax_max_limit", this.f27524l);
                jSONObject.put("tmax_min_limit", this.jx);
                jSONObject.put("tmax_calc_type", this.f27522j);
                jSONObject.put("tmax_calc_min_count_limit", this.f27530w);
                jSONObject.put("tmax_calc_max_count_limit", this.f27520a);
                jSONObject.put("tmax_cache_expire", this.eb);
                jSONObject.put("tmax_calc_percent_low", this.f27527s);
                jSONObject.put("tmax_calc_percent_medium", this.f27526q);
                jSONObject.put("tmax_calc_percent_high", this.f27521e);
                jSONObject.put("tmax_calc_boundary_pct", this.gu);
                jSONObject.put("tmax_calc_shown_pct_low", this.jl);
                jSONObject.put("tmax_calc_shown_pct_medium", this.zy);
                jSONObject.put("tmax_calc_shown_pct_high", this.f27523k);
                jSONObject.put("tmax_calc_hard_cap_pct", this.f27529v);
                jSONObject.put("tmax_deviation_ratio", this.f27528u);
                jSONObject.put("tmax_marginal_load_rate", this.xs);
                jSONObject.put("tmax_utilization_rate", this.vv);
                jSONObject.put("tmax_too_small_load_success_rate_low", this.ec);
                jSONObject.put("tmax_too_small_load_success_rate_high", this.sz);
                jSONObject.put("tmax_too_small_marginal_load_rate", this.f27525n);
                jSONObject.put("tmax_too_small_deviation_ratio", this.ns);
            } catch (Exception unused) {
            }
            return jSONObject;
        }

        public long j() {
            return this.jx;
        }

        public float jl() {
            return this.gu;
        }

        public long jx() {
            return this.f27524l;
        }

        public float k() {
            return this.zy;
        }

        public boolean l() {
            return this.hp;
        }

        public float n() {
            return this.sz;
        }

        public float ns() {
            return this.f27525n;
        }

        public float q() {
            return this.f27527s;
        }

        public int s() {
            return this.eb;
        }

        public float sz() {
            return this.ec;
        }

        public float u() {
            return this.f27529v;
        }

        public float v() {
            return this.f27523k;
        }

        public float vv() {
            return this.xs;
        }

        public int w() {
            return this.f27522j;
        }

        public float xs() {
            return this.f27528u;
        }

        public float zy() {
            return this.jl;
        }
    }

    private static jx a() {
        jx jxVar = f27488a;
        return jxVar == null ? new jx(new JSONObject()) : jxVar;
    }

    private static jx eb() {
        jx jxVar = eb;
        return jxVar == null ? new jx(new JSONObject()) : jxVar;
    }

    public static void hp(com.byazt.ctq.w wVar) {
        try {
            hp = new jx(new JSONObject(wVar.get("cache_strategy_reward", "")));
        } catch (JSONException unused) {
        }
        try {
            f27490l = new jx(new JSONObject(wVar.get("cache_strategy_full", "")));
        } catch (JSONException unused2) {
        }
        try {
            f27489j = new jx(new JSONObject(wVar.get("cache_strategy_banner", "")));
        } catch (JSONException unused3) {
        }
        try {
            f27492w = new jx(new JSONObject(wVar.get("cache_strategy_feed", "")));
        } catch (JSONException unused4) {
        }
        try {
            f27488a = new jx(new JSONObject(wVar.get("cache_strategy_draw", "")));
        } catch (JSONException unused5) {
        }
        try {
            eb = new jx(new JSONObject(wVar.get("cache_strategy_stream", "")));
        } catch (JSONException unused6) {
        }
        try {
            com.byazt.sr.jx.hp();
        } catch (Exception unused7) {
        }
    }

    private static jx j() {
        jx jxVar = f27489j;
        return jxVar == null ? new jx(new JSONObject()) : jxVar;
    }

    private static jx jx() {
        jx jxVar = f27490l;
        return jxVar == null ? new jx(new JSONObject()) : jxVar;
    }

    public static void l(com.byazt.ctq.w wVar) {
        jx jxVar = hp;
        if (jxVar != null) {
            wVar.put("cache_strategy_reward", jxVar.hp());
        }
        jx jxVar2 = f27490l;
        if (jxVar2 != null) {
            wVar.put("cache_strategy_full", jxVar2.hp());
        }
        jx jxVar3 = f27489j;
        if (jxVar3 != null) {
            wVar.put("cache_strategy_banner", jxVar3.hp());
        }
        jx jxVar4 = f27492w;
        if (jxVar4 != null) {
            wVar.put("cache_strategy_feed", jxVar4.hp());
        }
        jx jxVar5 = f27488a;
        if (jxVar5 != null) {
            wVar.put("cache_strategy_draw", jxVar5.hp());
        }
        jx jxVar6 = eb;
        if (jxVar6 != null) {
            wVar.put("cache_strategy_stream", jxVar6.hp());
        }
        if (jx != null) {
            w.l lVar = new w.l();
            lVar.j(jx.hp());
            lVar.hp();
        }
    }

    private static jx w() {
        jx jxVar = f27492w;
        return jxVar == null ? new jx(new JSONObject()) : jxVar;
    }

    public static void hp(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("cache_strategy_reward");
                if (jSONObjectOptJSONObject2 != null) {
                    hp = new jx(jSONObjectOptJSONObject2);
                    com.byazt.fe.w.l(7);
                }
            } catch (Exception unused) {
            }
            try {
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("cache_strategy_full");
                if (jSONObjectOptJSONObject3 != null) {
                    f27490l = new jx(jSONObjectOptJSONObject3);
                    com.byazt.fe.w.l(8);
                }
            } catch (Exception unused2) {
            }
            try {
                JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("cache_strategy_banner");
                if (jSONObjectOptJSONObject4 != null) {
                    f27489j = new jx(jSONObjectOptJSONObject4);
                    com.byazt.fe.w.l(1);
                }
            } catch (Exception unused3) {
            }
            try {
                JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("cache_strategy_feed");
                if (jSONObjectOptJSONObject5 != null) {
                    f27492w = new jx(jSONObjectOptJSONObject5);
                    com.byazt.fe.w.l(5);
                }
            } catch (Exception unused4) {
            }
            try {
                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject.optJSONObject("cache_strategy_draw");
                if (jSONObjectOptJSONObject6 != null) {
                    f27488a = new jx(jSONObjectOptJSONObject6);
                    com.byazt.fe.w.l(9);
                }
            } catch (Exception unused5) {
            }
            try {
                JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject.optJSONObject("cache_strategy_splash");
                if (jSONObjectOptJSONObject7 != null) {
                    jx = new jx(jSONObjectOptJSONObject7);
                    com.byazt.fe.w.l(3);
                }
            } catch (Exception unused6) {
            }
            try {
                JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject.optJSONObject("cache_strategy_stream");
                if (jSONObjectOptJSONObject8 != null) {
                    eb = new jx(jSONObjectOptJSONObject8);
                    com.byazt.fe.w.l(6);
                }
            } catch (Exception unused7) {
            }
        }
    }

    private static jx l() {
        jx jxVar = hp;
        return jxVar == null ? new jx(new JSONObject()) : jxVar;
    }

    public static jx hp() {
        if (jx == null) {
            String strV = com.byazt.lca.w.hp().v();
            try {
                if (TextUtils.isEmpty(strV)) {
                    jx jxVar = new jx(new JSONObject());
                    jx = jxVar;
                    jxVar.f27506j = 0;
                } else {
                    jx = new jx(new JSONObject(strV));
                }
            } catch (JSONException unused) {
            }
        }
        return jx;
    }

    public static jx hp(int i2) {
        switch (i2) {
            case 1:
                return j();
            case 2:
            default:
                return f27491s;
            case 3:
            case 4:
                return hp();
            case 5:
                return w();
            case 6:
                return eb();
            case 7:
                return l();
            case 8:
                return jx();
            case 9:
                return a();
        }
    }
}
