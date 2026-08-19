package com.byazt.xci;

import com.anythink.core.common.f.q;
import com.byazt.xci.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1097})
/* loaded from: classes3.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public long f27355a;

    /* renamed from: e, reason: collision with root package name */
    public int f27356e = 0;
    public long eb;
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27357j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27358l;

    /* renamed from: q, reason: collision with root package name */
    public int f27359q;

    /* renamed from: s, reason: collision with root package name */
    public long f27360s;

    /* renamed from: w, reason: collision with root package name */
    public int f27361w;

    public m(mp mpVar) {
        this.hp = mpVar;
    }

    public void hp(JSONObject jSONObject, boolean z2) {
        int iValueOf = 1;
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("ca_send_ts", this.hp.er());
            jSONObject.put("ca_bid_rst", this.f27357j);
            jSONObject.put("ca_reuse_cnt", this.f27361w);
            jSONObject.put("ca_obj_ts", this.f27355a);
            jSONObject.put("ca_fnl_st", this.f27359q);
            jSONObject.put("ca_rpt_show_cnt", this.f27356e);
            jSONObject.put("ca_libra_group", s.hp(com.byazt.zn.ky.jl(this.hp)).zy());
            jSONObject.put("ca_ad_index", this.hp.rf());
            if (z2) {
                String str = this.hp.ns() + this.hp.j();
                Integer numRemove = com.byazt.sr.hp.l().remove(str);
                Integer numValueOf = numRemove == null ? 1 : Integer.valueOf(numRemove.intValue() + 1);
                com.byazt.sr.hp.l().put(str, numValueOf);
                jSONObject.put("meta_show_count", numValueOf);
                String str2 = com.byazt.zn.ky.k(this.hp) + this.hp.j();
                Integer numRemove2 = com.byazt.sr.hp.jx().remove(str2);
                if (numRemove2 != null) {
                    iValueOf = Integer.valueOf(numRemove2.intValue() + 1);
                }
                com.byazt.sr.hp.jx().put(str2, iValueOf);
                jSONObject.put("meta_origin_show_count", iValueOf);
                com.byazt.sr.jx.hp(this.hp);
                JSONObject jSONObjectHp = com.byazt.sr.jx.hp(com.byazt.zn.ky.jl(this.hp), this.hp.xq());
                if (jSONObjectHp != null) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(jSONObjectHp.toString());
                        int iJl = com.byazt.zn.ky.jl(this.hp);
                        s.jx jxVarHp = s.hp(iJl);
                        s.w wVarXs = jxVarHp != null ? jxVarHp.xs() : null;
                        if (wVarXs != null && wVarXs.l() && wVarXs.jx() > 0) {
                            com.byazt.jt.l lVarDb = this.hp.db();
                            long jHp = com.byazt.un.l.hp().hp(iJl, lVarDb != null ? lVarDb.j() : null);
                            if (jHp > 0) {
                                jSONObject2.put("dynamic_tmax", jHp);
                            }
                            jSONObject2.put("dynamic_tmax_type", wVarXs.w());
                        }
                        jSONObjectHp = jSONObject2;
                    } catch (Throwable unused) {
                    }
                    jSONObject.put("ca_interval_info", jSONObjectHp);
                }
            }
        } catch (JSONException unused2) {
        }
    }

    public void j(int i2) {
        this.f27359q = i2;
        this.f27360s = System.currentTimeMillis();
    }

    public void jx(int i2) {
        this.f27357j = i2;
    }

    public void l(int i2) {
        this.jx = i2;
        if (i2 == 2) {
            this.f27361w++;
        }
    }

    public void jx() {
        this.eb = System.currentTimeMillis();
        this.f27356e++;
        j(1);
    }

    public void l() {
        this.f27355a = System.currentTimeMillis();
    }

    public m(mp mpVar, JSONObject jSONObject) {
        this.hp = mpVar;
        if (jSONObject != null) {
            this.f27358l = jSONObject.optInt("req_type", 0);
            this.jx = jSONObject.optInt("load_type", 0);
            this.f27357j = jSONObject.optInt("bidding_result", 0);
            this.f27361w = jSONObject.optInt("reuse_count", 0);
            this.f27355a = jSONObject.optLong("object_create_time", 0L);
            this.eb = jSONObject.optLong(q.a.f3394i, 0L);
            this.f27360s = jSONObject.optLong("final_ts", 0L);
            this.f27359q = jSONObject.optInt("final_status", 0);
        }
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("req_type", this.f27358l);
            jSONObject.put("load_type", this.jx);
            jSONObject.put("bidding_result", this.f27357j);
            jSONObject.put("reuse_count", this.f27361w);
            jSONObject.put("object_create_time", this.f27355a);
            jSONObject.put(q.a.f3394i, this.eb);
            jSONObject.put("final_ts", this.f27360s);
            jSONObject.put("final_status", this.f27359q);
            jSONObject.put("show_count", this.f27356e);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public void hp(int i2) {
        this.f27358l = i2;
    }
}
