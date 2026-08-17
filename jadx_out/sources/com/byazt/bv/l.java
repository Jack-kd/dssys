package com.byazt.bv;

import com.byazt.he.eb;
import com.byazt.he.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 34})
/* loaded from: classes2.dex */
public class l implements eb {
    public final com.byazt.bm.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public s f18691l;

    public l(com.byazt.bm.hp hpVar) {
        this.hp = hpVar;
    }

    @Override // com.byazt.he.eb
    public JSONObject getCustomLocalConfig() {
        return this.hp.a();
    }

    @Override // com.byazt.he.eb
    public boolean getHttps() {
        return this.hp.w();
    }

    @Override // com.byazt.he.eb
    public Map<String, Object> getLocalExtra() {
        return this.hp.j();
    }

    @Override // com.byazt.he.eb
    public s getMediationConfigUserInfoForSegment() {
        if (this.f18691l == null) {
            com.byazt.bm.jx jxVarJx = this.hp.jx();
            if (jxVarJx == null) {
                return null;
            }
            this.f18691l = new jx(jxVarJx);
        }
        return this.f18691l;
    }

    @Override // com.byazt.he.eb
    public String getOpensdkVer() {
        return this.hp.eb();
    }

    @Override // com.byazt.he.eb
    public String getPublisherDid() {
        return this.hp.hp();
    }

    @Override // com.byazt.he.eb
    public boolean isOpenAdnTest() {
        return this.hp.l();
    }

    @Override // com.byazt.he.eb
    public boolean isSupportH265() {
        return this.hp.q();
    }

    @Override // com.byazt.he.eb
    public boolean isSupportSplashZoomout() {
        return this.hp.e();
    }

    @Override // com.byazt.he.eb
    public boolean isWxInstalled() {
        return this.hp.s();
    }

    @Override // com.byazt.he.eb
    public String wxAppId() {
        return this.hp.gu();
    }
}
