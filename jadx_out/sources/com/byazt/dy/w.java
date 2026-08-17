package com.byazt.dy;

import com.byazt.cm.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {

    public interface hp {
        void hp(JSONObject jSONObject);
    }

    public static void hp(com.byazt.nqo.hp hpVar, hp hpVar2) {
        if (hpVar == null) {
            if (hpVar2 != null) {
                hpVar2.hp(null);
            }
        } else {
            hp(hpVar.jx(), hpVar.hp(), hpVar.l(), hpVar2);
        }
    }

    public static void hp(String str, String str2, String str3, final hp hpVar) {
        JSONObject jSONObjectHp = com.byazt.la.eb.hp().hp(str2, str3);
        if (jSONObjectHp == null) {
            com.byazt.cm.l.hp(str, str2, str3, new l.InterfaceC0203l() { // from class: com.byazt.dy.w.1
                @Override // com.byazt.cm.l.InterfaceC0203l
                public void hp(JSONObject jSONObject) {
                    hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp(jSONObject);
                    }
                }

                @Override // com.byazt.cm.l.InterfaceC0203l
                public void hp() {
                    hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp(null);
                    }
                }
            });
        } else if (hpVar != null) {
            hpVar.hp(jSONObjectHp);
        }
    }
}
