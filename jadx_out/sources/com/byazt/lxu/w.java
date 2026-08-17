package com.byazt.lxu;

import android.text.TextUtils;
import com.byazt.gt.e;
import com.byazt.gt.zy;
import com.byazt.yu.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.t;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1576, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends l {

    /* renamed from: w, reason: collision with root package name */
    public boolean f22822w;

    /* renamed from: l, reason: collision with root package name */
    public static final long[] f22821l = {920000};
    public static final long[] jx = {920000};

    /* renamed from: j, reason: collision with root package name */
    public static final long[] f22820j = {10000, 10000, 20000, 20000, 60000, 6000, 180000, 180000, 540000, 540000};

    public w(j jVar) {
        super(jVar);
        this.f22822w = true;
    }

    @Override // com.byazt.lxu.l
    public long hp() {
        return this.hp.j().zy() + (this.hp.a().jx() ? 21600000 : 43200000);
    }

    @Override // com.byazt.lxu.l
    public String j() {
        return t.f31269k;
    }

    @Override // com.byazt.lxu.l
    public boolean jx() throws JSONException {
        JSONObject jSONObjectHp;
        JSONObject jSONObject = new JSONObject();
        q qVarJ = this.hp.j();
        JSONObject jSONObjectHp2 = qVarJ.hp();
        JSONObject jSONObject2 = null;
        if (jSONObjectHp2 != null) {
            jSONObject.put("magic_tag", "ss_app_log");
            synchronized (qVarJ) {
                jSONObjectHp = zy.hp(jSONObjectHp2);
            }
            jSONObject.put("header", jSONObjectHp);
            jSONObject.put("_gen_time", System.currentTimeMillis());
            if (!TextUtils.isEmpty(jSONObjectHp.optString("device_id")) && zy.jx() && this.f22822w) {
                this.f22822w = false;
                return false;
            }
            JSONObject jSONObjectHp3 = this.hp.j().hp();
            com.byazt.et.jx jxVarHp = com.byazt.et.hp.hp(com.byazt.et.l.hp(this.hp.getContext(), jSONObjectHp3, this.hp.eb().hp(), true, com.byazt.ub.hp.j()), jSONObject);
            if (jxVarHp != null && jxVarHp.hp() != null) {
                try {
                    jSONObject2 = new JSONObject(jxVarHp.hp());
                } catch (JSONException unused) {
                }
            }
            if (jSONObject2 != null) {
                String strOptString = jSONObject2.optString("device_id", "");
                boolean zHp = this.hp.j().hp(jSONObject2, strOptString, jSONObject2.optString("install_id", ""), jSONObject2.optString("ssid", ""));
                JSONObject jSONObject3 = new JSONObject(jSONObject2.toString());
                jSONObject3.put("headers", jxVarHp.l());
                zy.l(jSONObject, jSONObject3);
                com.byazt.fg.hp.l("__kite", "start:" + zy.w());
                try {
                    if (zy.w()) {
                        new com.byazt.id.l(this.hp.getContext()).hp(jSONObjectHp3, strOptString);
                    }
                } catch (Throwable th) {
                    com.byazt.fg.hp.hp("__kite", "error:" + zy.w(), th);
                }
                return zHp;
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("headers", jxVarHp.l());
            zy.l(jSONObject, jSONObject4);
        } else {
            e.l((Throwable) null);
        }
        return false;
    }

    @Override // com.byazt.lxu.l
    public long[] l() {
        int iJl = this.hp.j().jl();
        if (iJl == 0) {
            return f22820j;
        }
        if (iJl == 1) {
            return jx;
        }
        if (iJl == 2) {
            return f22821l;
        }
        e.l((Throwable) null);
        return jx;
    }
}
