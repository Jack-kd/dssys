package com.byazt.bv;

import com.byazt.he.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 30})
/* loaded from: classes2.dex */
public class jx implements s {
    public final com.byazt.bm.jx hp;

    public jx(com.byazt.bm.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.he.s
    public int getAge() {
        return this.hp.w();
    }

    @Override // com.byazt.he.s
    public String getChannel() {
        return this.hp.jx();
    }

    @Override // com.byazt.he.s
    public Map<String, String> getCustomInfos() {
        return this.hp.hp();
    }

    @Override // com.byazt.he.s
    public String getGender() {
        return this.hp.a();
    }

    @Override // com.byazt.he.s
    public String getSubChannel() {
        return this.hp.j();
    }

    @Override // com.byazt.he.s
    public String getUserId() {
        return this.hp.l();
    }

    @Override // com.byazt.he.s
    public String getUserValueGroup() {
        return this.hp.eb();
    }
}
