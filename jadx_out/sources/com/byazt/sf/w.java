package com.byazt.sf;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 847, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends q {
    public w(SparseArray<Object> sparseArray, int i2) {
        super(sparseArray, i2);
    }

    public boolean hp() {
        if (jx() != null) {
            return jx().hp();
        }
        return false;
    }

    public eb l() {
        JSONObject jSONObjectHp;
        if (jx() != null) {
            PluginValueSet pluginValueSetJ = jx().j();
            if (pluginValueSetJ != null && (jSONObjectHp = e.hp(pluginValueSetJ, 4)) != null) {
                return new eb(jSONObjectHp);
            }
            if (!jx().hp()) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", jx().l());
                    String strJx = jx().jx();
                    if (strJx != null) {
                        jSONObject.put("message", strJx);
                    }
                    return new eb(jSONObject);
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }
}
