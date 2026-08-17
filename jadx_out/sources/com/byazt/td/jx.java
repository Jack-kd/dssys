package com.byazt.td;

import android.os.Bundle;
import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jdb.hp;
import com.byazt.jz.s;
import com.byazt.pg.jl;
import com.byazt.rx.BaseConstants;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import com.byazt.xci.q;
import com.byazt.xci.sz;
import com.byazt.ymw.u;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.jdb.w f25732a;
    public final TTBaseVideoActivity hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25733j = false;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public mp f25734l;

    /* renamed from: w, reason: collision with root package name */
    public View f25735w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, 219})
    public static class hp implements com.byazt.dhy.hp {
        public final int hp;
        public final JSONObject jx;

        /* renamed from: l, reason: collision with root package name */
        public final long f25741l;

        public hp(int i2, long j2, JSONObject jSONObject) {
            this.hp = i2;
            this.f25741l = j2;
            this.jx = jSONObject;
        }

        @Override // com.byazt.dhy.hp
        public void onSend(JSONObject jSONObject) throws JSONException {
            JSONObject jSONObject2 = this.jx;
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            jSONObject2.put("group_pos", this.hp);
            jSONObject2.put("duration", this.f25741l);
            jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
        }
    }

    public jx(TTBaseVideoActivity tTBaseVideoActivity) {
        this.hp = tTBaseVideoActivity;
    }

    private boolean a() {
        mp mpVar = this.f25734l;
        return mpVar == null || sz.gu(mpVar) != 1;
    }

    @DungeonFlag
    public JSONObject j() {
        try {
            long jK = this.hp.hd().k();
            int iV = this.hp.hd().v();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", jK);
                jSONObject.put("percent", iV);
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public void jx() throws JSONException {
        final JSONObject jSONObjectHp = hp(new JSONObject());
        com.byazt.jdb.j.hp(this.f25734l, this.jx, "reward_arrived_begin", new com.byazt.dhy.hp() { // from class: com.byazt.td.jx.3
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                com.byazt.nwu.hp.hp(jSONObjectHp, jx.this.f25734l);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObjectHp);
            }
        });
    }

    public void l() throws JSONException {
        final JSONObject jSONObjectHp = hp(new JSONObject());
        com.byazt.jdb.j.hp(this.f25734l, this.jx, "skip_endcard", new com.byazt.dhy.hp() { // from class: com.byazt.td.jx.2
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                com.byazt.nwu.hp.hp(jSONObjectHp, jx.this.f25734l);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObjectHp);
            }
        });
    }

    public com.byazt.jdb.w w() {
        if (this.f25732a == null) {
            this.f25732a = new com.byazt.jdb.w(this.f25734l, this.jx);
        }
        return this.f25732a;
    }

    public void hp(mp mpVar, String str, View view) {
        if (this.f25733j) {
            return;
        }
        this.f25733j = true;
        this.f25734l = mpVar;
        this.jx = str;
        this.f25735w = view;
    }

    @DungeonFlag
    private void jx(View view, e eVar) throws JSONException {
        if (a() || this.f25734l == null || view == null) {
            return;
        }
        if (view.getId() == 2114387609 || view.getId() == 2114387630 || view.getId() == 2114387875 || view.getId() == 2114387793 || view.getId() == 2114387649 || view.getId() == 2114387925 || view.getId() == 2114387964 || view.getId() == 2114387830 || view.getId() == 2114387642 || view.getId() == 2114387864) {
            int displayDpi = ((jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi();
            com.byazt.jdb.j.hp("click_other", this.f25734l, new q.hp().a(eVar.xs()).w(eVar.vv()).j(eVar.ec()).jx(eVar.sz()).l(System.currentTimeMillis()).hp(0L).l(xh.hp(this.f25735w)).hp(xh.hp((View) null)).jx(xh.jx(this.f25735w)).j(xh.jx((View) null)).j(eVar.w()).w(eVar.a()).a(eVar.eb()).hp(eVar.zy()).jx(s.u().l() ? 1 : 2).l(displayDpi).hp(xh.a(com.byazt.jz.sz.getContext())).l(xh.eb(com.byazt.jz.sz.getContext())).hp(com.byazt.fy.s.l(this.f25734l)).hp(), this.jx, true, this.hp.mp(), -1, false, eVar.hp());
        }
    }

    @DungeonFlag
    private void l(View view, e eVar) throws JSONException {
        if (view == null) {
            return;
        }
        if (view.getId() == 2114387609) {
            hp("click_play_star_level", (JSONObject) null);
        } else if (view.getId() == 2114387630) {
            hp("click_play_star_nums", (JSONObject) null);
        } else if (view.getId() == 2114387875) {
            hp("click_play_source", (JSONObject) null);
        } else if (view.getId() == 2114387793) {
            hp("click_play_logo", (JSONObject) null);
        } else if (view.getId() != 2114387649 && view.getId() != 2114387925 && view.getId() != 2114387964) {
            if (view.getId() == 2114387642) {
                hp("click_video", j());
            } else if (view.getId() == 2114387864) {
                hp("fallback_endcard_click", j());
            }
        } else {
            hp("click_start_play_bar", j());
        }
        jx(view, eVar);
    }

    public JSONObject hp(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        try {
            if (this.hp.y() != null) {
                jSONObject.put("reward_full_scene_type", this.hp.y().nu());
                this.hp.y().hp(jSONObject);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public void hp(Map<String, Object> map) {
        if (map == null || this.hp.y() == null) {
            return;
        }
        map.put("reward_full_scene_type", Integer.valueOf(this.hp.y().nu()));
        this.hp.y().hp(map);
    }

    public void hp() throws JSONException {
        final JSONObject jSONObjectHp = hp(new JSONObject());
        com.byazt.jdb.j.hp(this.f25734l, this.jx, "skip", new com.byazt.dhy.hp() { // from class: com.byazt.td.jx.1
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                com.byazt.nwu.hp.hp(jSONObjectHp, jx.this.f25734l);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObjectHp);
            }
        });
    }

    public void hp(Bundle bundle) throws JSONException {
        int i2 = bundle.getInt("callback_extra_key_reward_type");
        boolean z2 = bundle.getBoolean("callback_extra_key_reward_valid");
        int i3 = bundle.getInt("callback_extra_key_error_code");
        String string = bundle.getString("callback_extra_key_error_msg");
        boolean z3 = bundle.getBoolean("callback_extra_key_is_server_verify");
        String str = z2 ? "reward_arrived_success" : "reward_arrived_failed";
        final JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("isRewardVerify", z2);
            jSONObject2.put("isServerCallback", z3);
            jSONObject2.put(MediationConstant.KEY_REWARD_TYPE, i2);
            jSONObject2.put(MediationConstant.KEY_ERROR_CODE, i3);
            jSONObject2.put(MediationConstant.KEY_ERROR_MSG, string);
            jSONObject.put("reward_data_bundle", jSONObject2);
        } catch (Exception e2) {
            u.l("RewardFullEventManager", e2.getMessage());
        }
        com.byazt.jdb.j.hp(this.f25734l, this.jx, str, new com.byazt.dhy.hp() { // from class: com.byazt.td.jx.4
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject3) throws JSONException {
                com.byazt.nwu.hp.hp(jSONObject, jx.this.f25734l);
                jSONObject3.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jx.this.hp(jSONObject));
            }
        });
    }

    public void hp(String str, int i2, String str2) {
        final JSONObject jSONObjectHp = hp(new JSONObject());
        try {
            jSONObjectHp.put("dialog_type", i2);
            jSONObjectHp.put("template_url", str2);
        } catch (JSONException unused) {
        }
        com.byazt.jdb.j.hp(this.f25734l, this.jx, str, new com.byazt.dhy.hp() { // from class: com.byazt.td.jx.5
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                com.byazt.nwu.hp.hp(jSONObjectHp, jx.this.f25734l);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jx.this.hp(jSONObjectHp));
            }
        });
    }

    public void hp(boolean z2, int i2, long j2) {
        new hp.C0281hp().w(this.f25734l.j()).hp(this.jx).l(z2 ? "scroll_up" : "scroll_down").j(this.f25734l.w_()).hp(new hp(i2, j2, hp(new JSONObject())));
    }

    public void hp(View view, e eVar) {
        try {
            l(view, eVar);
        } catch (Exception e2) {
            u.l("RewardFullEventManager", "onClickReport error :" + e2.getMessage());
        }
    }

    public void hp(String str, JSONObject jSONObject) {
        mp mpVar = this.f25734l;
        String str2 = this.jx;
        if (!this.hp.o()) {
            jSONObject = null;
        }
        com.byazt.jdb.j.hp(mpVar, str2, str, jSONObject);
    }
}
