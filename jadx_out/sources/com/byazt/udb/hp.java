package com.byazt.udb;

import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.m.q;
import com.byazt.ap.j;
import com.byazt.aw.w;
import com.byazt.rt.jx;
import com.byazt.rz.PluginConstants;
import com.byazt.zg.jl;
import com.byazt.zg.ns;
import com.byazt.zg.nu;
import com.byazt.zg.o;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.windad.WindAds;
import com.umeng.analytics.pro.ca;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 257, 28})
/* loaded from: classes3.dex */
public class hp {
    public com.byazt.ti.hp eb;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public jx f26147k;

    /* renamed from: l, reason: collision with root package name */
    public int f26148l;

    /* renamed from: u, reason: collision with root package name */
    public String f26151u;

    /* renamed from: v, reason: collision with root package name */
    public long f26152v;
    public l vv;
    public com.byazt.iqm.l zy;

    /* renamed from: j, reason: collision with root package name */
    public boolean f26146j = false;

    /* renamed from: w, reason: collision with root package name */
    public boolean f26153w = false;

    /* renamed from: a, reason: collision with root package name */
    public long f26144a = -1;

    /* renamed from: s, reason: collision with root package name */
    public boolean f26150s = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f26149q = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f26145e = true;
    public int gu = -1;
    public String jl = "";
    public AtomicInteger hp = new AtomicInteger(1);
    public final com.byazt.ti.hp xs = new com.byazt.ti.hp() { // from class: com.byazt.udb.hp.1
        @Override // com.byazt.ti.hp
        public boolean hp() {
            return false;
        }

        @Override // com.byazt.ti.hp
        @DungeonFlag
        public Map<String, Object> j() {
            HashMap map = new HashMap();
            map.put(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, Boolean.TRUE);
            map.put("transId", hp.this.f26151u);
            map.put(MediationConstant.KEY_REASON, 0);
            map.put("gromoreExtra", (hp.this.zy == null || hp.this.zy.r() == null) ? "" : hp.this.zy.r().get("gromoreExtra"));
            map.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(hp.this.gu));
            map.put(MediationConstant.KEY_ERROR_MSG, hp.this.jl);
            com.byazt.dq.jx jxVarHp = jl.hp(hp.this.zy, hp.this.f26147k, true);
            map.put(MediationConstant.KEY_ADN_NAME, jxVarHp != null ? jxVarHp.jl() : "");
            map.put("ecpm", jxVarHp != null ? jxVarHp.zy() : "");
            return map;
        }

        @Override // com.byazt.ti.hp
        public String jx() {
            return hp.this.zy != null ? hp.this.zy.o() : "";
        }

        @Override // com.byazt.ti.hp
        public float l() {
            if (hp.this.zy != null) {
                return hp.this.zy.d();
            }
            return 0.0f;
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, 257, 170})
    /* renamed from: com.byazt.udb.hp$hp, reason: collision with other inner class name */
    public class RunnableC0383hp implements Runnable {

        /* renamed from: l, reason: collision with root package name */
        public final int f26160l;

        public RunnableC0383hp(int i2) {
            this.f26160l = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (hp.this.eb != null || hp.this.f26149q || !hp.this.f26145e || hp.this.f26146j || hp.this.f26153w) {
                return;
            }
            com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide reward verify 进行第" + this.f26160l + "次重试请求");
            hp.this.eb();
        }
    }

    public interface l {
        void hp(com.byazt.ti.hp hpVar);
    }

    public hp(String str) {
        com.byazt.tgw.l lVarHp;
        com.byazt.bcj.jx jxVarL = com.byazt.di.l.l();
        if (jxVarL != null && (lVarHp = jxVarL.hp(str, 7, 101)) != null) {
            this.f26148l = lVarHp.m();
            this.jx = lVarHp.f();
        }
        if (this.f26148l < 0) {
            this.f26148l = ca.f49002b;
        }
    }

    private void a() {
        com.byazt.aw.l.l("GROMORE_SS_REWARD_VERIFY", "startPreRequest:CSJ代码位没有开启show强校验，执行15s逻辑->startPreRequest");
        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- showListen回调进来，开始计时");
        w.hp(new Runnable() { // from class: com.byazt.udb.hp.7
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.f26144a != -1 || hp.this.f26146j || hp.this.f26153w) {
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- showListen计时到时间，已经destroy，或者skip，或者比complete/verify回调还晚，直接return");
                    return;
                }
                com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- showListen计时到时间，发起请求");
                hp.this.eb();
                w.hp(hp.this.new RunnableC0383hp(1), 3000L);
                w.hp(hp.this.new RunnableC0383hp(2), 6000L);
                w.hp(hp.this.new RunnableC0383hp(3), 9000L);
            }
        }, this.f26148l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public void eb() {
        com.byazt.ap.w wVarL = com.byazt.xr.l.hp().l().l();
        wVarL.hp(com.byazt.di.jx.j());
        final long jCurrentTimeMillis = System.currentTimeMillis();
        String strS = com.byazt.di.hp.jl().s();
        if (!TextUtils.isEmpty(strS)) {
            wVarL.l("X-Tt-Env", strS);
            wVarL.l("x-use-ppe", "1");
        }
        wVarL.l("User-Agent", com.byazt.rt.l.hp);
        boolean zW = com.byazt.di.l.l().w();
        final boolean z2 = !zW;
        if (zW) {
            wVarL.jx(hp(false));
        } else {
            wVarL.l("x-pglcypher", "4");
            wVarL.hp("application/octet-stream", nu.l(hp(true)));
        }
        wVarL.hp(new com.byazt.mnb.hp() { // from class: com.byazt.udb.hp.8
            @Override // com.byazt.mnb.hp
            public void hp(j jVar, final com.byazt.oyr.l lVar) {
                w.hp(new Runnable() { // from class: com.byazt.udb.hp.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass8 anonymousClass8 = AnonymousClass8.this;
                        hp.this.hp(lVar, z2, jCurrentTimeMillis);
                    }
                });
            }

            @Override // com.byazt.mnb.hp
            public void hp(j jVar, final IOException iOException) {
                w.hp(new Runnable() { // from class: com.byazt.udb.hp.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify http error: " + iOException.toString());
                        hp.this.hp(-2, "request error" + iOException.getMessage(), z2);
                    }
                });
            }
        });
    }

    private Object s() {
        Map<String, Object> mediaExtraInfo;
        jx jxVar = this.f26147k;
        if (jxVar == null || (mediaExtraInfo = jxVar.getMediaExtraInfo()) == null || !mediaExtraInfo.containsKey("rs_info")) {
            return null;
        }
        return mediaExtraInfo.get("rs_info");
    }

    public void w() {
        w.hp(new Runnable() { // from class: com.byazt.udb.hp.5
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.f26146j) {
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，已经destroy, 直接return");
                    return;
                }
                if (hp.this.eb != null || hp.this.f26149q) {
                    StringBuilder sb = new StringBuilder("--==-- complete回调进来，已经有响应(");
                    sb.append(hp.this.eb != null);
                    sb.append(")或已经给出开发者回调(");
                    sb.append(hp.this.f26149q);
                    sb.append("), 直接return");
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", sb.toString());
                    return;
                }
                if (hp.this.f26144a == -1) {
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，先进来发起请求");
                    hp.this.f26144a = SystemClock.elapsedRealtime();
                    if (hp.this.f26145e) {
                        hp.this.eb();
                        return;
                    } else {
                        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来准备请求，但是不能重试");
                        return;
                    }
                }
                if (SystemClock.elapsedRealtime() - hp.this.f26144a > 2000) {
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，后进来但大于2s，发起请求");
                    if (hp.this.f26145e) {
                        hp.this.eb();
                    } else {
                        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来准备请求，但是不能重试");
                    }
                }
            }
        });
    }

    public boolean j() {
        jx jxVar = this.f26147k;
        if (jxVar != null && jxVar.getMediaExtraInfo() != null) {
            Map<String, Object> mediaExtraInfo = this.f26147k.getMediaExtraInfo();
            if (!hp(mediaExtraInfo.get("isPangle"))) {
                return false;
            }
            Object obj = mediaExtraInfo.get("isRDEnable");
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public void jx() {
        w.hp(new Runnable() { // from class: com.byazt.udb.hp.3
            @Override // java.lang.Runnable
            public void run() {
                hp.this.f26146j = true;
            }
        });
    }

    public void l() {
        w.hp(new Runnable() { // from class: com.byazt.udb.hp.2
            @Override // java.lang.Runnable
            public void run() {
                hp.this.f26153w = true;
            }
        });
    }

    public boolean hp() {
        boolean z2 = this.jx == 1;
        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- 判断是否开启了M服务端激励验证： ".concat(String.valueOf(z2)));
        return z2;
    }

    public void hp(com.byazt.iqm.l lVar, jx jxVar) {
        this.f26152v = System.currentTimeMillis();
        this.zy = lVar;
        this.f26147k = jxVar;
        if (j()) {
            com.byazt.aw.l.l("GROMORE_SS_REWARD_VERIFY", "onAdnAdShow:开启了show强校验，先不进行15s逻辑->startPreRequest");
        } else {
            a();
        }
    }

    public boolean hp(Object obj) {
        if (MediationConstant.ADN_PANGLE.equals(this.f26147k.getAdnName())) {
            return true;
        }
        return (obj instanceof Boolean) && ((Boolean) obj).booleanValue();
    }

    public void hp(com.byazt.ti.hp hpVar, jx jxVar) {
        if (j() && hpVar != null && !hpVar.hp()) {
            HashMap map = new HashMap();
            map.put(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, Boolean.TRUE);
            map.put("transId", this.f26151u);
            map.put(MediationConstant.KEY_REASON, 0);
            com.byazt.iqm.l lVar = this.zy;
            Object obj = "";
            if (lVar != null && lVar.r() != null) {
                obj = this.zy.r().get("gromoreExtra");
            }
            map.put("gromoreExtra", obj);
            map.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(q.f5856n));
            map.put(MediationConstant.KEY_ERROR_MSG, "ADN 回调 rewardVerify:false");
            com.byazt.ti.hp hpVarHp = com.byazt.toc.jl.hp(this.zy, hpVar, jxVar, map);
            l lVar2 = this.vv;
            if (lVar2 == null || this.f26149q) {
                return;
            }
            this.f26149q = true;
            lVar2.hp(hpVarHp);
            return;
        }
        w.hp(new Runnable() { // from class: com.byazt.udb.hp.4
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.f26146j) {
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，已经destroy, 直接return");
                    return;
                }
                hp.this.f26150s = true;
                if (hp.this.eb != null) {
                    if (hp.this.vv == null || hp.this.f26149q) {
                        return;
                    }
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，已经有结果，直接给开发者回调");
                    hp.this.f26149q = true;
                    hp.this.vv.hp(hp.this.eb);
                    return;
                }
                if (hp.this.f26144a == -1) {
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，先进来发起请求");
                    hp.this.f26144a = SystemClock.elapsedRealtime();
                    if (hp.this.f26145e) {
                        hp.this.eb();
                    } else {
                        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来准备请求，但是不能重试");
                    }
                } else if (SystemClock.elapsedRealtime() - hp.this.f26144a > 2000) {
                    com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，后进来但大于2s，发起请求");
                    if (hp.this.f26145e) {
                        hp.this.eb();
                    } else {
                        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来准备请求，但是不能重试");
                    }
                }
                w.hp(new Runnable() { // from class: com.byazt.udb.hp.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (hp.this.f26146j) {
                            com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调兜底进来，已经destroy了, 直接return");
                        } else {
                            if (hp.this.vv == null || hp.this.f26149q) {
                                return;
                            }
                            com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调兜底进来，给开发者verify回调");
                            hp.this.f26149q = true;
                            hp.this.vv.hp(hp.this.eb != null ? hp.this.eb : hp.this.xs);
                        }
                    }
                }, 3000L);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public void hp(com.byazt.oyr.l lVar, boolean z2, long j2) {
        if (this.f26146j) {
            return;
        }
        if (lVar == null) {
            com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify netResponse is null");
            hp(-1, "response is null", z2);
            return;
        }
        int iL = lVar.l();
        if (nu.hp(lVar)) {
            String strHp = nu.hp(lVar.gu());
            if (TextUtils.isEmpty(strHp)) {
                com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify data v4 is null");
                hp(iL, "data is empty", z2);
                return;
            }
            try {
                this.gu = 20000;
                hp(new JSONObject(strHp), z2, j2);
                return;
            } catch (Throwable th) {
                this.gu = 1;
                hp(-1, th.getMessage(), z2);
                return;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(lVar.w());
            int iOptInt = jSONObject.optInt("cypher", -1);
            String strOptString = jSONObject.optString("message");
            this.gu = jSONObject.optInt("code");
            this.jl = jSONObject.optString("desc");
            int i2 = this.gu;
            if (i2 == 50001) {
                this.f26145e = true;
                com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify code: 50001，请求媒体服务端失败，需要重试");
                hp(this.gu, this.jl, z2);
                return;
            }
            if (i2 != 0 && i2 != 20000) {
                this.f26145e = false;
                com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify code: " + this.gu + ", msg: " + this.jl + "，不能再重试");
                hp(this.gu, this.jl, z2);
                return;
            }
            if (iOptInt < 0 || TextUtils.isEmpty(strOptString)) {
                com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify cypher error or message is null");
                hp(iL, "message is null", z2);
                return;
            }
            JSONObject jSONObject2 = null;
            if (iOptInt == 2) {
                String strHp2 = nu.hp(strOptString);
                if (!TextUtils.isEmpty(strHp2)) {
                    jSONObject2 = new JSONObject(strHp2);
                }
            } else if (iOptInt == 1) {
                String strL = com.byazt.zg.hp.l(strOptString, com.byazt.zg.l.hp());
                if (!TextUtils.isEmpty(strL)) {
                    jSONObject2 = new JSONObject(strL);
                }
            } else if (iOptInt == 0) {
                jSONObject2 = new JSONObject(strOptString);
            }
            hp(jSONObject2, z2, j2);
        } catch (Throwable th2) {
            hp(-1, th2.getMessage(), z2);
        }
    }

    @DungeonFlag
    private void hp(JSONObject jSONObject, boolean z2, long j2) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        if (jSONObject == null) {
            com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- ServerSide verify data is null");
            hp(-1, "data is null", z2);
            return;
        }
        com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- data: " + jSONObject.toString());
        final boolean zOptBoolean = jSONObject.optBoolean("is_verify");
        final int iOptInt = jSONObject.optInt(MediationConstant.KEY_REASON);
        final String strOptString = jSONObject.optString("reward_name");
        final int iOptInt2 = jSONObject.optInt("reward_amount");
        this.eb = new com.byazt.ti.hp() { // from class: com.byazt.udb.hp.6
            @Override // com.byazt.ti.hp
            public boolean hp() {
                return zOptBoolean;
            }

            @Override // com.byazt.ti.hp
            @DungeonFlag
            public Map<String, Object> j() {
                HashMap map = new HashMap();
                map.put(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, Boolean.TRUE);
                map.put("transId", hp.this.f26151u);
                map.put(MediationConstant.KEY_REASON, Integer.valueOf(iOptInt));
                map.put("gromoreExtra", (hp.this.zy == null || hp.this.zy.r() == null) ? "" : hp.this.zy.r().get("gromoreExtra"));
                map.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(hp.this.gu));
                map.put(MediationConstant.KEY_ERROR_MSG, hp.this.jl);
                com.byazt.dq.jx jxVarHp = jl.hp(hp.this.zy, hp.this.f26147k, true);
                map.put(MediationConstant.KEY_ADN_NAME, jxVarHp != null ? jxVarHp.jl() : "");
                map.put("ecpm", jxVarHp != null ? jxVarHp.zy() : "");
                return map;
            }

            @Override // com.byazt.ti.hp
            public String jx() {
                return strOptString;
            }

            @Override // com.byazt.ti.hp
            public float l() {
                return iOptInt2;
            }
        };
        if (this.f26150s && this.vv != null && !this.f26149q) {
            com.byazt.aw.l.hp("GROMORE_SS_REWARD_VERIFY", "--==-- verify接口请求回来，给开发者verify回调");
            this.f26149q = true;
            this.vv.hp(this.eb);
        }
        hp(z2, jCurrentTimeMillis);
    }

    private void hp(boolean z2, long j2) {
        o.hp(z2 ? "v4Enc_reward" : "v2Enc_reward", true, j2, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str, boolean z2) {
        o.hp(z2 ? "v4Enc_reward" : "v2Enc_reward", false, 0L, "code = " + i2 + "，msg = " + str);
    }

    @DungeonFlag
    private String hp(boolean z2) throws JSONException {
        String string;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_version", com.byazt.rt.l.l());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, com.byazt.rt.l.j());
            jSONObject.put("user_agent", com.byazt.rt.l.hp);
            jSONObject.put("try_value", this.hp.getAndIncrement());
            jSONObject.put("network", ns.l());
            jSONObject.put("play_start_ts", this.f26152v);
            jSONObject.put("play_end_ts", System.currentTimeMillis());
            com.byazt.iqm.l lVar = this.zy;
            jSONObject.put("user_id", lVar != null ? lVar.hq() : "");
            if (TextUtils.isEmpty(this.f26151u)) {
                string = UUID.randomUUID().toString();
                this.f26151u = string;
            } else {
                string = this.f26151u;
            }
            jSONObject.put(WindAds.TRANS_ID, string);
            com.byazt.iqm.l lVar2 = this.zy;
            jSONObject.put("link_id", lVar2 != null ? lVar2.hp() : "");
            com.byazt.iqm.l lVar3 = this.zy;
            jSONObject.put(MediationConstant.KEY_GM_PRIME_RIT, lVar3 != null ? lVar3.sz() : "");
            jx jxVar = this.f26147k;
            jSONObject.put("adn_rit", jxVar != null ? jxVar.getAdNetworkSlotId() : "");
            com.byazt.iqm.l lVar4 = this.zy;
            jSONObject.put("reward_name", lVar4 != null ? lVar4.o() : "");
            com.byazt.iqm.l lVar5 = this.zy;
            jSONObject.put("reward_amount", lVar5 != null ? lVar5.d() : 0);
            jSONObject.putOpt("rs_info", s());
            com.byazt.iqm.l lVar6 = this.zy;
            jSONObject.put("media_extra", (lVar6 == null || lVar6.r() == null) ? "" : this.zy.r().get("gromoreExtra"));
            com.byazt.iqm.l lVar7 = this.zy;
            if (lVar7 != null && lVar7.n() != null) {
                jSONObject.put("scenario_id", this.zy.n());
            }
            com.byazt.dq.jx jxVarHp = jl.hp(this.zy, this.f26147k, true);
            jSONObject.put(MediationConstant.EXTRA_ADN_NAME, jxVarHp != null ? jxVarHp.jl() : "");
            jSONObject.put("ecpm", jxVarHp != null ? jxVarHp.zy() : "");
        } catch (JSONException unused) {
        }
        if (z2) {
            return jSONObject.toString();
        }
        return nu.hp(jSONObject).toString();
    }

    public void hp(l lVar) {
        this.vv = lVar;
    }
}
