package com.byazt.js;

import android.text.TextUtils;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, 28})
/* loaded from: classes.dex */
public class hp {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f21675j;
    public j jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21676l;

    public String hp() {
        return this.hp;
    }

    public String j() {
        return this.f21675j;
    }

    public j jx() {
        return this.jx;
    }

    public String l() {
        return this.f21676l;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void jx(String str) {
        this.f21675j = str;
    }

    public void l(String str) {
        this.f21676l = str;
    }

    public void hp(j jVar) {
        this.jx = jVar;
    }

    public boolean hp(JSONObject jSONObject) {
        String strJ = j();
        if (TextUtils.isEmpty(strJ)) {
            return true;
        }
        try {
            Object objHp = com.byazt.nh.hp.hp(com.byazt.dfp.l.hp(strJ)).hp(jSONObject);
            if (objHp != null) {
                if (Boolean.TRUE.equals(objHp)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            u.hp("TTFeatureAggregate", "匹配filter失败: ".concat(String.valueOf(strJ)), e2);
            return false;
        }
    }
}
