package com.byazt.js;

import android.text.TextUtils;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, 30})
/* loaded from: classes.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public List<hp> f21678a;
    public List<l> eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public w f21679j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f21680l;

    /* renamed from: s, reason: collision with root package name */
    public boolean f21681s;

    /* renamed from: w, reason: collision with root package name */
    public float f21682w;

    public List<l> a() {
        return this.eb;
    }

    public boolean eb() {
        return this.f21681s;
    }

    public String hp() {
        return this.hp;
    }

    public w j() {
        return this.f21679j;
    }

    public String jx() {
        return this.jx;
    }

    public String l() {
        return this.f21680l;
    }

    public List<hp> w() {
        return this.f21678a;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void jx(String str) {
        this.jx = str;
    }

    public void l(String str) {
        this.f21680l = str;
    }

    public void hp(w wVar) {
        this.f21679j = wVar;
    }

    public void l(List<l> list) {
        this.eb = list;
    }

    public void hp(float f2) {
        this.f21682w = f2;
    }

    public void hp(List<hp> list) {
        this.f21678a = list;
    }

    public void hp(boolean z2) {
        this.f21681s = z2;
    }

    public boolean hp(JSONObject jSONObject) {
        String strL = l();
        if (TextUtils.isEmpty(strL)) {
            return true;
        }
        try {
            Object objHp = com.byazt.nh.hp.hp(com.byazt.dfp.l.hp(strL)).hp(jSONObject);
            if (objHp != null) {
                if (Boolean.TRUE.equals(objHp)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            u.hp("TTFeatureRule", "匹配过滤器失败: ".concat(String.valueOf(strL)), e2);
            return false;
        }
    }
}
