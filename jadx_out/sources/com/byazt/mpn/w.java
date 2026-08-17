package com.byazt.mpn;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.xci.mp;
import com.byazt.zn.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class w implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "confirm_event")
    public String f23261a;

    @com.byazt.cv.hp(hp = "deny_event")
    public String eb;

    @com.byazt.cv.hp(hp = g.f49337X)
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "registration_popup_listener")
    public w.hp f23262j;

    @com.byazt.cv.hp(hp = "ad_id")
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "material_meta")
    public mp f23263l;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "cancel_event")
    public String f23264s;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "app_manage_model")
    public String f23265w;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.zn.w.hp(this.jx, hp());
        TTDelegateActivity.hp(this.hp, this.jx, this.f23265w, this.f23263l);
        hpVar.hp(map2);
        return true;
    }

    private w.hp hp() {
        return new w.hp() { // from class: com.byazt.mpn.w.1
            @Override // com.byazt.zn.w.hp
            public void hp() {
                if (w.this.f23262j == null) {
                    return;
                }
                w.this.f23262j.hp();
                w wVar = w.this;
                wVar.hp(wVar.f23261a);
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
                if (w.this.f23262j == null) {
                    return;
                }
                w.this.f23262j.jx();
                w wVar = w.this;
                wVar.hp(wVar.f23264s);
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
                if (w.this.f23262j == null) {
                    return;
                }
                w.this.f23262j.l();
                w wVar = w.this;
                wVar.hp(wVar.eb);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str) {
        if (this.f23263l == null || TextUtils.isEmpty(str)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("material_meta", this.f23263l);
        map.put(g.f49337X, this.hp);
        com.byazt.rj.jx.hp(str, this.f23263l.ij(), map);
    }
}
