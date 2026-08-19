package com.byazt.du;

import com.byazt.ay.eb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BARRAGE_MASK})
/* loaded from: classes2.dex */
public class yr extends com.byazt.oa.w<JSONObject, JSONObject> {
    public eb.hp hp;

    public yr(eb.hp hpVar) {
        this.hp = hpVar;
    }

    public JSONObject jx() {
        return new JSONObject();
    }

    public static void hp(com.byazt.oa.xs xsVar, eb.hp hpVar) {
        xsVar.hp("UgenDownloadDialogInteraction", (com.byazt.oa.w<?, ?>) new yr(hpVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        hp(jSONObject);
        return jx();
    }

    private void hp(JSONObject jSONObject) {
        if (jSONObject == null || this.hp == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("InteractionType");
        if (iOptInt == 1) {
            this.hp.jx(null);
            return;
        }
        if (iOptInt == 2) {
            this.hp.hp(null);
            return;
        }
        if (iOptInt == 3) {
            this.hp.hp();
        } else if (iOptInt == 4) {
            this.hp.l(null);
        } else {
            if (iOptInt != 5) {
                return;
            }
            this.hp.j(null);
        }
    }
}
