package com.byazt.gg;

import com.byazt.gg.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 748, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements jx {
    @Override // com.byazt.gg.jx
    public List<l> hp() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new l(n.f36454q) { // from class: com.byazt.gg.w.1
            @Override // com.byazt.gg.l
            public com.byazt.ov.hp hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
                return new com.byazt.ov.a(jxVar, str, hpVar);
            }
        });
        arrayList.add(new l("emit") { // from class: com.byazt.gg.w.2
            @Override // com.byazt.gg.l
            public com.byazt.ov.hp hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
                return new com.byazt.ov.l(jxVar, str, hpVar);
            }
        });
        arrayList.add(new l("startAnimate") { // from class: com.byazt.gg.w.3
            @Override // com.byazt.gg.l
            public com.byazt.ov.hp hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
                return new com.byazt.ov.j(jxVar, str, hpVar);
            }
        });
        arrayList.add(new l("startTimer") { // from class: com.byazt.gg.w.4
            @Override // com.byazt.gg.l
            public com.byazt.ov.hp hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
                return new com.byazt.ov.w(jxVar, str, hpVar);
            }
        });
        return arrayList;
    }
}
