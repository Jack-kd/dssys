package com.byazt.ap;

import android.text.TextUtils;
import com.byazt.uhg.a;
import com.byazt.uhg.e;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.uhg.v;
import com.byazt.uhg.w;
import com.byazt.uhg.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1229, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends j {
    public v hp;

    public w(jl jlVar) {
        super(jlVar);
        this.hp = null;
    }

    public void jx(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "{}";
        }
        this.hp = v.hp(e.hp("application/json; charset=utf-8"), str);
    }

    public v w() {
        return this.hp;
    }

    public void hp(JSONObject jSONObject) {
        String string;
        if (jSONObject != null) {
            string = jSONObject.toString();
        } else {
            string = "{}";
        }
        this.hp = v.hp(e.hp("application/json; charset=utf-8"), string);
    }

    public void hp(Map<String, String> map) {
        w.hp hpVar = new w.hp();
        if (map != null && !map.isEmpty()) {
            for (String str : map.keySet()) {
                hpVar.hp(str, map.get(str));
            }
        }
        this.hp = hpVar.hp();
    }

    public void hp(String str, byte[] bArr) {
        this.hp = v.hp(e.hp(str), bArr);
    }

    public void hp(final com.byazt.mnb.hp hpVar) {
        try {
            k.hp hpVar2 = new k.hp();
            if (TextUtils.isEmpty(this.f18049a)) {
                hpVar.hp(this, new IOException("Url is Empty"));
                return;
            }
            hpVar2.hp(this.f18049a);
            if (this.hp == null) {
                if (hpVar != null) {
                    hpVar.hp(this, new IOException("RequestBody is null, content type is not support!!"));
                }
            } else {
                hp(hpVar2);
                hpVar2.hp((Object) l());
                this.jx.hp(hpVar2.hp(this.hp).l()).hp(new com.byazt.uhg.jx() { // from class: com.byazt.ap.w.1
                    @Override // com.byazt.uhg.jx
                    public void onFailure(com.byazt.uhg.l lVar, IOException iOException) {
                        com.byazt.mnb.hp hpVar3 = hpVar;
                        if (hpVar3 != null) {
                            hpVar3.hp(w.this, iOException);
                        }
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:41:0x00ec  */
                    /* JADX WARN: Removed duplicated region for block: B:43:0x00f4  */
                    /* JADX WARN: Type inference failed for: r0v3, types: [com.byazt.uhg.a] */
                    /* JADX WARN: Type inference failed for: r13v5, types: [com.byazt.mnb.hp] */
                    /* JADX WARN: Type inference failed for: r2v0 */
                    /* JADX WARN: Type inference failed for: r2v1, types: [com.byazt.oyr.l] */
                    /* JADX WARN: Type inference failed for: r2v10 */
                    /* JADX WARN: Type inference failed for: r2v11, types: [int] */
                    /* JADX WARN: Type inference failed for: r2v13 */
                    /* JADX WARN: Type inference failed for: r2v14 */
                    /* JADX WARN: Type inference failed for: r2v15 */
                    /* JADX WARN: Type inference failed for: r2v16 */
                    /* JADX WARN: Type inference failed for: r2v17 */
                    /* JADX WARN: Type inference failed for: r2v3 */
                    /* JADX WARN: Type inference failed for: r2v8, types: [com.byazt.oyr.l] */
                    @Override // com.byazt.uhg.jx
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void onResponse(com.byazt.uhg.l r13, com.byazt.uhg.u r14) throws java.io.IOException {
                        /*
                            Method dump skipped, instructions count: 261
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ap.w.AnonymousClass1.onResponse(com.byazt.uhg.l, com.byazt.uhg.u):void");
                    }
                });
            }
        } catch (Throwable th) {
            hpVar.hp(this, new IOException(th.getMessage()));
        }
    }

    @Override // com.byazt.ap.j
    public com.byazt.oyr.l hp() {
        com.byazt.oyr.l lVar;
        try {
            k.hp hpVar = new k.hp();
            if (TextUtils.isEmpty(this.f18049a)) {
                return new com.byazt.oyr.l(false, 5000, "URL_NULL_MSG", null, "URL_NULL_BODY", 1L, 1L);
            }
            hpVar.hp(this.f18049a);
            if (this.hp == null) {
                return new com.byazt.oyr.l(false, 5000, "BODY_NULL_MSG", null, "BODY_NULL_BODY", 1L, 1L);
            }
            hp(hpVar);
            hpVar.hp((Object) l());
            u uVarL = this.jx.hp(hpVar.hp(this.hp).l()).l();
            if (uVarL == null) {
                return null;
            }
            HashMap map = new HashMap();
            a aVarEb = uVarL.eb();
            if (aVarEb != null) {
                for (int i2 = 0; i2 < aVarEb.hp(); i2++) {
                    String strHp = aVarEb.hp(i2);
                    String strL = aVarEb.l(i2);
                    map.put(strHp, strL);
                    if (strHp != null && strHp.equalsIgnoreCase("content-type")) {
                        map.put("content-type", strL == null ? "" : strL.toLowerCase());
                    }
                }
            }
            if (com.byazt.xh.hp.hp(map)) {
                byte[] bArrJ = uVarL.a().j();
                lVar = new com.byazt.oyr.l(uVarL.j(), uVarL.jx(), uVarL.w(), map, null, uVarL.l(), uVarL.hp());
                lVar.hp(bArrJ);
            } else if (this.eb) {
                byte[] bArrJ2 = uVarL.a().j();
                lVar = new com.byazt.oyr.l(uVarL.j(), uVarL.jx(), uVarL.w(), map, new String(bArrJ2, hp(hp(uVarL.a()))), uVarL.l(), uVarL.hp());
                lVar.hp(bArrJ2);
            } else {
                lVar = new com.byazt.oyr.l(uVarL.j(), uVarL.jx(), uVarL.w(), map, uVarL.a().l(), uVarL.l(), uVarL.hp());
            }
            hp(lVar, uVarL);
            return lVar;
        } catch (Throwable th) {
            return new com.byazt.oyr.l(false, 5001, th.getMessage(), null, "BODY_NULL_BODY", 1L, 1L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Charset hp(e eVar) {
        try {
            return eVar != null ? eVar.hp(com.byazt.ndb.e.hp) : com.byazt.ndb.e.hp;
        } catch (Exception unused) {
            return com.byazt.ndb.e.hp;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e hp(xs xsVar) {
        try {
            return xsVar.w();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.oyr.l lVar, u uVar) {
        if (lVar == null || uVar == null) {
            return;
        }
        lVar.hp(uVar.s());
    }
}
