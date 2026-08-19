package com.byazt.du;

import com.byazt.oa.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 157})
/* loaded from: classes2.dex */
public class b extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    public b(com.byazt.jz.ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    @Override // com.byazt.oa.j
    public void j() {
        this.hp = null;
    }

    public static void hp(com.byazt.oa.xs xsVar, final com.byazt.jz.ud udVar) {
        xsVar.hp("mallTopbarClick", new j.l() { // from class: com.byazt.du.b.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new b(udVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        com.byazt.jz.s.u().f();
        WeakReference<com.byazt.jz.ud> weakReference = this.hp;
        if (weakReference == null) {
            return;
        }
        if (weakReference.get() != null && jSONObject != null) {
            String strOptString = jSONObject.optString("schema");
            if (strOptString.isEmpty()) {
                jx();
                return;
            } else {
                hp(strOptString, jSONObject.optBoolean("sync_auth", false));
                return;
            }
        }
        jx();
    }

    private void hp(final String str, boolean z2) throws JSONException {
        final JSONObject jSONObject = new JSONObject();
        if (2 == com.byazt.yx.l.hp().w()) {
            hp(str, jSONObject);
            return;
        }
        int iHp = com.byazt.yx.l.hp().hp(new com.byazt.cp.l() { // from class: com.byazt.du.b.2
            @Override // com.byazt.cp.l
            public void hp(Object obj) throws JSONException, NumberFormatException {
                if (obj instanceof Map) {
                    Map map = (Map) obj;
                    if (map.containsKey("code")) {
                        Object obj2 = map.get("code");
                        if (obj2 instanceof String) {
                            try {
                                int i2 = Integer.parseInt((String) obj2);
                                if (i2 == 1) {
                                    b.this.hp(str, jSONObject);
                                    return;
                                }
                                try {
                                    jSONObject.putOpt("code", Integer.valueOf(i2));
                                } catch (JSONException unused) {
                                }
                                b.this.hp(i2, "授权失败");
                                b.this.hp((b) jSONObject);
                                return;
                            } catch (NumberFormatException unused2) {
                            }
                        }
                    }
                }
                try {
                    jSONObject.putOpt("code", -1);
                } catch (JSONException unused3) {
                }
                b.this.hp(-1, "授权失败");
                b.this.hp((b) jSONObject);
            }
        }, z2);
        jSONObject.putOpt("code", Integer.valueOf(iHp));
        if (iHp != 1) {
            hp(iHp, "执行授权失败");
            hp((b) jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, JSONObject jSONObject) throws JSONException {
        int iHp = com.byazt.yx.l.hp().hp(str);
        try {
            jSONObject.putOpt("code", Integer.valueOf(iHp));
        } catch (JSONException unused) {
        }
        if (iHp != 1) {
            hp(iHp, "schema 解析失败");
        }
        hp((b) jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str) {
        com.byazt.ymw.hq.hp(com.byazt.jz.sz.getContext(), "努力加载中，请稍后再试", 1);
    }
}
