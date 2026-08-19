package com.byazt.mpn;

import android.content.Context;
import com.byazt.xci.mp;
import com.byazt.zn.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS, 34})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class l implements com.byazt.zp.jx {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "confirm_event")
    public String f23228a;

    @com.byazt.cv.hp(hp = "deny_event")
    public String eb;

    @com.byazt.cv.hp(hp = g.f49337X)
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "function_desc_popup_listener")
    public w.hp f23229j;

    @com.byazt.cv.hp(hp = "ad_id")
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "material_meta")
    public mp f23230l;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "cancel_event")
    public String f23231s;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "app_manage_model")
    public String f23232w;

    @Override // com.byazt.zp.jx
    public boolean hp(Map<String, Object> map, Map<String, Object> map2, com.byazt.rsz.hp hpVar) {
        com.byazt.zn.w.hp(this.jx, hp());
        TTDelegateActivity.jx(this.hp, this.jx, this.f23232w);
        hpVar.hp(map2);
        return true;
    }

    private w.hp hp() {
        return new w.hp() { // from class: com.byazt.mpn.l.1
            @Override // com.byazt.zn.w.hp
            public void hp() {
                if (l.this.f23229j == null) {
                    return;
                }
                l.this.f23229j.hp();
                l lVar = l.this;
                lVar.hp(lVar.f23228a);
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
                if (l.this.f23229j == null) {
                    return;
                }
                l.this.f23229j.jx();
                l lVar = l.this;
                lVar.hp(lVar.f23231s);
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
                if (l.this.f23229j == null) {
                    return;
                }
                l.this.f23229j.l();
                l lVar = l.this;
                lVar.hp(lVar.eb);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str) {
        HashMap map = new HashMap();
        map.put("material_meta", this.f23230l);
        map.put(g.f49337X, this.hp);
        com.byazt.rj.jx.hp(str, this.f23230l.ij(), map);
    }
}
