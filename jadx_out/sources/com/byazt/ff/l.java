package com.byazt.ff;

import com.byazt.xci.mp;
import com.byazt.zn.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 34})
/* loaded from: classes2.dex */
public class l implements hp.l {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 123})
    public static class hp {
        public static l hp = new l();
    }

    public static l hp() {
        return hp.hp;
    }

    @Override // com.byazt.zn.hp.l
    public void onAppBackground() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppExit() {
    }

    @Override // com.byazt.zn.hp.l
    public void onAppForeground() {
        com.byazt.dnb.s.hp(new com.byazt.uid.eb("dl_work") { // from class: com.byazt.ff.l.1
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                com.byazt.jz.s.u().hp(q.hp((mp) null, true));
            }
        });
    }

    @Override // com.byazt.zn.hp.l
    public void onAppStart() {
    }

    private l() {
        com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        if (hpVarJx != null) {
            hpVarJx.hp(this);
        }
    }
}
