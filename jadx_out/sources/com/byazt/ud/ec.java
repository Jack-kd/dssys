package com.byazt.ud;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec implements com.byazt.ii.l {
    public com.byazt.ii.hp hp;
    public com.byazt.ii.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ii.hp f26141l;

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp = this.hp.hp(map);
        if (objHp == null) {
            return null;
        }
        return ((Boolean) objHp).booleanValue() ? this.f26141l.hp(map) : this.jx.hp(map);
    }

    @Override // com.byazt.ii.l
    public void jx(com.byazt.ii.hp hpVar) {
        this.jx = hpVar;
    }

    @Override // com.byazt.ii.l
    public void l(com.byazt.ii.hp hpVar) {
        this.f26141l = hpVar;
    }

    public String toString() {
        return l();
    }

    @Override // com.byazt.ii.hp
    public String l() {
        return this.hp.l() + "?" + this.f26141l.l() + ":" + this.jx.l();
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return com.byazt.ki.a.OPERATOR_RESULT;
    }

    @Override // com.byazt.ii.l
    public void hp(com.byazt.ii.hp hpVar) {
        this.hp = hpVar;
    }
}
