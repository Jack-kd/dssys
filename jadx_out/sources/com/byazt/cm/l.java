package com.byazt.cm;

import android.text.TextUtils;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.la.eb;
import com.byazt.xci.f;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 725, 34})
/* loaded from: classes2.dex */
public class l {

    public interface hp {
        void hp(int i2, String str);

        void hp(JSONObject jSONObject);
    }

    /* renamed from: com.byazt.cm.l$l, reason: collision with other inner class name */
    public interface InterfaceC0203l {
        void hp();

        void hp(JSONObject jSONObject);
    }

    public static void hp(com.byazt.nqo.hp hpVar, InterfaceC0203l interfaceC0203l) {
        if (hpVar != null) {
            hp(hpVar.jx(), hpVar.hp(), hpVar.l(), interfaceC0203l);
        } else if (interfaceC0203l != null) {
            interfaceC0203l.hp();
        }
    }

    public static void hp(String str, final String str2, final String str3, final InterfaceC0203l interfaceC0203l) {
        if (TextUtils.isEmpty(str)) {
            if (interfaceC0203l != null) {
                interfaceC0203l.hp();
            }
        } else {
            com.byazt.ap.jx jxVarJx = w.hp().l().jx();
            jxVarJx.hp(str);
            jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.cm.l.1
                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                    if (lVar == null) {
                        return;
                    }
                    if (!lVar.q()) {
                        InterfaceC0203l interfaceC0203l2 = interfaceC0203l;
                        if (interfaceC0203l2 != null) {
                            interfaceC0203l2.hp();
                            return;
                        }
                        return;
                    }
                    String strW = lVar.w();
                    eb.hp().hp(str2, str3, strW);
                    if (interfaceC0203l != null) {
                        try {
                            interfaceC0203l.hp(new JSONObject(strW));
                        } catch (JSONException unused) {
                            interfaceC0203l.hp();
                        }
                    }
                }

                @Override // com.byazt.mnb.hp
                public void hp(com.byazt.ap.j jVar, IOException iOException) {
                    InterfaceC0203l interfaceC0203l2 = interfaceC0203l;
                    if (interfaceC0203l2 != null) {
                        interfaceC0203l2.hp();
                    }
                }
            });
        }
    }

    public static void hp(mp mpVar, JSONObject jSONObject, final com.byazt.cey.j jVar, com.byazt.jt.l lVar) throws JSONException {
        if (jVar == null) {
            return;
        }
        if (mpVar != null) {
            try {
                if (!TextUtils.isEmpty(mpVar.w_())) {
                    int iJl = ky.jl(mpVar);
                    com.byazt.jt.l lVarDb = mpVar.db();
                    if (lVarDb != null) {
                        lVar = lVarDb;
                    }
                    f fVar = new f();
                    fVar.f27278w = 2;
                    if (hd.a(mpVar) != null) {
                        fVar.eb = 2;
                    }
                    JSONObject jSONObjectEl = mpVar.el();
                    JSONObject jSONObject2 = new JSONObject();
                    if (jSONObjectEl != null) {
                        try {
                            Iterator<String> itKeys = jSONObjectEl.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                jSONObject2.put(next, jSONObjectEl.opt(next));
                            }
                        } catch (JSONException unused) {
                        }
                    }
                    if (jSONObject != null) {
                        Iterator<String> itKeys2 = jSONObject.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            jSONObject2.put(next2, jSONObject.opt(next2));
                        }
                    }
                    fVar.zy = jSONObject2;
                    sz.hp().hp(lVar, fVar, iJl, new cx.l() { // from class: com.byazt.cm.l.2
                        @Override // com.byazt.jz.cx.l
                        public void hp(int i2, String str, com.byazt.xci.l lVar2) {
                            jVar.hp(false, null, false);
                            lVar2.hp(i2);
                            com.byazt.xci.l.hp(lVar2);
                        }

                        @Override // com.byazt.jz.cx.l
                        public void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar2) {
                            if (hpVar.l() != null && !hpVar.l().isEmpty()) {
                                jVar.hp(true, hpVar.l(), false);
                                return;
                            }
                            jVar.hp(false, null, false);
                            lVar2.hp(-3);
                            com.byazt.xci.l.hp(lVar2);
                        }
                    });
                    return;
                }
            } catch (Exception e2) {
                u.hp("PageNetUtils", "get ads error", e2);
                return;
            }
        }
        jVar.hp(false, null, false);
    }

    public static void hp(String str, final hp hpVar) {
        com.byazt.ap.jx jxVarJx = w.hp().l().jx();
        jxVarJx.hp(str);
        jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.cm.l.3
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (lVar == null || !lVar.q()) {
                    hp hpVar2 = hpVar;
                    if (hpVar2 == null || lVar == null) {
                        return;
                    }
                    hpVar2.hp(lVar.l(), lVar.jx());
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(lVar.w());
                    hp hpVar3 = hpVar;
                    if (hpVar3 != null) {
                        hpVar3.hp(jSONObject);
                    }
                } catch (JSONException unused) {
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
                }
            }
        });
    }
}
