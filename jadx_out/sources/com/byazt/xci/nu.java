package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 546})
/* loaded from: classes3.dex */
public class nu {
    public String hp;
    public List<com.byazt.bi.l> jx = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public String f27403l;

    public nu(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        this.hp = jSONObject.optString("id");
        this.f27403l = jSONObject.optString("url");
        jx();
    }

    private void jx() throws JSONException {
        String strHp = hp(this.hp);
        if (!TextUtils.isEmpty(strHp)) {
            l(strHp);
            return;
        }
        com.byazt.ap.jx jxVarJx = com.byazt.cm.w.hp().l().jx();
        if (jxVarJx == null || TextUtils.isEmpty(this.f27403l)) {
            return;
        }
        jxVarJx.hp(this.f27403l);
        jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.xci.nu.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (lVar != null) {
                    try {
                        if (!lVar.q() || lVar.w() == null) {
                            return;
                        }
                        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
                        String strW = lVar.w();
                        jxVarHp.put(nu.this.hp, strW);
                        nu.this.l(strW);
                    } catch (Exception unused) {
                    }
                }
            }
        });
    }

    public List<com.byazt.bi.l> l() {
        return this.jx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("pattern");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                this.jx.add(new com.byazt.bi.l(jSONArray.getJSONObject(i2)));
            }
        } catch (Exception unused) {
        }
    }

    public String hp() {
        return this.hp;
    }

    private String hp(String str) {
        com.byazt.ctq.jx jxVarHp;
        if (TextUtils.isEmpty(str) || (jxVarHp = com.byazt.jz.l.hp()) == null) {
            return null;
        }
        return jxVarHp.get(str, "");
    }

    public nu(String str, JSONArray jSONArray) {
        this.hp = str;
        hp(jSONArray);
    }

    private void hp(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                this.jx.add(new com.byazt.bi.l(jSONArray.getJSONObject(i2)));
            } catch (Exception unused) {
                return;
            }
        }
    }
}
