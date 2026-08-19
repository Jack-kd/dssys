package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public long f27290a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public List<mp> f27291j = new ArrayList();
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27292l;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f27293w;

    public void hp(String str) {
        this.hp = str;
    }

    public JSONObject jx() {
        return this.f27293w;
    }

    public void l(String str) {
        this.jx = str;
    }

    public int hp() {
        return this.f27292l;
    }

    public List<mp> l() {
        return this.f27291j;
    }

    public void hp(int i2) {
        this.f27292l = i2;
    }

    public void hp(mp mpVar) {
        this.f27291j.add(mpVar);
    }

    public void hp(List<mp> list) {
        this.f27291j = list;
    }

    public void hp(JSONObject jSONObject) {
        this.f27293w = jSONObject;
    }

    public void hp(long j2) {
        this.f27290a = j2;
    }
}
