package com.byazt.ykv;

import android.text.TextUtils;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.m.AbstractC1114b;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.giz.jx;
import com.byazt.jw.j;
import com.byazt.jw.s;
import com.byazt.jw.w;
import com.byazt.lpy.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1151, 28})
/* loaded from: classes3.dex */
public class hp implements com.byazt.lpy.hp<com.byazt.jw.l> {

    /* renamed from: l, reason: collision with root package name */
    public static final SimpleDateFormat f28041l = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    /* renamed from: j, reason: collision with root package name */
    public w f28042j;
    public final String jx = "x-pglcypher";
    public final boolean hp = l();

    private boolean a(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    private Map<String, String> j(JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put(AbstractC1114b.f5589g, "application/json; charset=utf-8");
        if (a(jSONObject)) {
            map.put("Content-Encoding", "union_sdk_encode");
        }
        return map;
    }

    public static byte[] l(JSONObject jSONObject) {
        return jSONObject == null ? new byte[0] : jSONObject.toString().getBytes(StandardCharsets.UTF_8);
    }

    private int w(JSONObject jSONObject) {
        String strOptString;
        int iIndexOf;
        if (jSONObject == null) {
            return 0;
        }
        try {
            strOptString = jSONObject.optString("s_sig_ts");
        } catch (Throwable unused) {
        }
        if (strOptString == null || (iIndexOf = strOptString.indexOf("_")) < 5) {
            return 512;
        }
        String strSubstring = strOptString.substring(0, iIndexOf);
        String strSubstring2 = strOptString.substring(iIndexOf + 1);
        JSONObject jSONObjectQ = hp().j().jl().q();
        if (hp((jSONObjectQ != null ? jSONObjectQ.optString("device_id") : "") + "_" + strSubstring, strSubstring2)) {
            return Math.abs((System.currentTimeMillis() / 1000) - Long.valueOf(strSubstring).longValue()) > 300 ? 513 : 0;
        }
        return 512;
    }

    public boolean jx(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            return jSONObject.optString("message").equalsIgnoreCase(cb.f11292o);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public w hp() {
        if (this.f28042j == null) {
            this.f28042j = com.byazt.mdk.hp.l("csj").l();
        }
        return this.f28042j;
    }

    private static PublicKey jx() throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKtjHB7PDkflFl5bX4x/25mE9x2/C6kd\n8wVgzXFiC67Jx+meptu1hL54XgnPnI+AvxXhEgN/+DZUmrRPdvB+UZECAwEAAQ==".getBytes(Charset.forName("UTF-8")), 2)));
    }

    private static boolean l() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public List<com.byazt.jw.l> l(List<com.byazt.jw.l> list) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (com.byazt.jw.l lVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObjectEb = lVar.eb();
                String strOptString = jSONObjectEb.optString("label");
                if (TextUtils.isEmpty(strOptString)) {
                    strOptString = jSONObjectEb.optString(NotificationCompat.CATEGORY_EVENT);
                }
                jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, strOptString);
                long jOptLong = jSONObjectEb.optLong("event_ts", System.currentTimeMillis());
                jSONObject.putOpt("local_time_ms", Long.valueOf(jOptLong));
                jSONObject.putOpt("datetime", f28041l.format(new Date(jOptLong)));
                JSONObject jSONObject2 = new JSONObject();
                if (jSONObjectEb.has("params") && jSONObjectEb.has(NotificationCompat.CATEGORY_EVENT)) {
                    jSONObject2 = jSONObjectEb.optJSONObject("params");
                } else {
                    Iterator<String> itKeys = jSONObjectEb.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (!TextUtils.equals(next, "label")) {
                            jSONObject2.putOpt(next, jSONObjectEb.opt(next));
                        }
                    }
                }
                jSONObject.putOpt("params", jSONObject2);
                com.byazt.ai.hp hpVar = new com.byazt.ai.hp(lVar.jx(), jSONObject);
                hpVar.hp(lVar.j());
                hpVar.l(lVar.w());
                arrayList.add(hpVar);
            } catch (Exception e2) {
                jx.hp(e2.getMessage(), hp());
            }
        }
        return arrayList;
    }

    @Override // com.byazt.lpy.hp
    public com.byazt.jds.l hp(List<com.byazt.jw.l> list) throws JSONException {
        s sVarJl;
        com.byazt.jds.l lVarHp;
        String strA;
        j jVarJ = hp().j();
        if (jVarJ != null) {
            try {
                if (jVarJ.j() && (sVarJl = jVarJ.jl()) != null && list != null && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    String str = "1streqid";
                    String strA2 = "2ndreqid";
                    String str2 = "";
                    boolean z2 = false;
                    for (com.byazt.jw.l lVar : list) {
                        if (TextUtils.equals("show", com.byazt.giz.hp.hp(lVar, hp()))) {
                            String strHp = com.byazt.giz.hp.hp(lVar.eb(), this.f28042j);
                            if (!z2) {
                                strA = com.byazt.giz.hp.a(lVar, this.f28042j);
                            } else {
                                strA2 = com.byazt.giz.hp.a(lVar, this.f28042j);
                                strA = strA2;
                            }
                            str2 = strHp;
                            str = strA;
                            z2 = true;
                        }
                        arrayList.add(lVar);
                    }
                    int iE = sVarJl.e();
                    if (!arrayList.isEmpty()) {
                        JSONObject jSONObjectHp = sVarJl.hp(l(arrayList), this.hp);
                        byte[] bArrHp = sVarJl.hp(jSONObjectHp, iE);
                        if (bArrHp == null) {
                            JSONObject jSONObjectHp2 = sVarJl.hp(jSONObjectHp);
                            bArrHp = l(jSONObjectHp2);
                            lVarHp = hp(bArrHp, j(jSONObjectHp2), "application/json; charset=utf-8");
                        } else {
                            lVarHp = hp(bArrHp, hp(iE), l(iE));
                        }
                        if (z2) {
                            int length = bArrHp != null ? bArrHp.length : 0;
                            if (lVarHp != null) {
                                com.byazt.giz.hp.hp(lVarHp.hp, lVarHp.f21465l, lVarHp.jx, str + "|" + strA2, length, str2);
                            }
                        }
                        return lVarHp;
                    }
                }
                return null;
            } catch (Throwable th) {
                jx.hp("NetApiImpl", "uploadEvent error" + th.getMessage(), hp());
                return new com.byazt.jds.l(false, MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_NAME, th.getMessage(), false, "error");
            }
        }
        return null;
    }

    private void l(byte[] bArr, Map<String, String> map, String str) {
        w wVarHp;
        j jVarJ;
        s sVarJl;
        if (bArr == null || bArr.length == 0 || (wVarHp = hp()) == null || (jVarJ = wVarHp.j()) == null || (sVarJl = jVarJ.jl()) == null || !sVarJl.hp()) {
            return;
        }
        a aVarW = sVarJl.w();
        aVarW.hp(sVarJl.l());
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                aVarW.hp(entry.getKey(), entry.getValue());
            }
        }
        aVarW.hp(str, bArr);
        aVarW.hp("User-Agent", jVarJ.w());
        aVarW.hp(new com.byazt.lpy.jx() { // from class: com.byazt.ykv.hp.1
            @Override // com.byazt.lpy.jx
            public void hp(com.byazt.lpy.j jVar, com.byazt.lpy.w wVar) {
                if (wVar == null || !wVar.hp()) {
                    hp.this.hp();
                } else {
                    wVar.l();
                    hp.this.hp();
                }
            }

            @Override // com.byazt.lpy.jx
            public void hp(com.byazt.lpy.j jVar, IOException iOException) {
                iOException.getMessage();
                hp.this.hp();
            }
        });
    }

    private Map<String, String> hp(int i2) {
        HashMap map = new HashMap();
        if (i2 >= 4) {
            map.put("Content-Encoding", "union_sdk_encode");
            map.put("x-pglcypher", String.valueOf(i2));
        }
        map.put(AbstractC1114b.f5589g, l(i2));
        return map;
    }

    private com.byazt.jds.l hp(byte[] bArr, Map<String, String> map, String str) {
        Throwable th;
        String str2;
        int iW;
        boolean zJx;
        String str3;
        int i2;
        try {
            j jVarJ = hp().j();
            s sVarJl = jVarJ.jl();
            a aVarW = sVarJl.w();
            aVarW.hp(sVarJl.a());
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    aVarW.hp(entry.getKey(), entry.getValue());
                }
            }
            aVarW.hp(str, bArr);
            aVarW.hp("User-Agent", jVarJ.w());
            com.byazt.lpy.w wVarHp = aVarW.hp();
            if (wVarHp == null) {
                return new com.byazt.jds.l(false, MediaPlayer.MEDIA_PLAYER_OPTION_LICENSE_DIR, "RSP IS NULL", false, "error");
            }
            boolean z2 = false;
            if (!wVarHp.hp() || TextUtils.isEmpty(wVarHp.l())) {
                iW = 0;
                zJx = false;
            } else {
                JSONObject jSONObject = new JSONObject(wVarHp.l());
                zJx = jx(jSONObject);
                iW = w(jSONObject);
            }
            int iJx = wVarHp.jx();
            if (wVarHp.w() == null) {
                str3 = "error";
            } else {
                str3 = wVarHp.w().get("x-tt-logid");
            }
            boolean z3 = !zJx && iJx == 200;
            try {
                String strJ = wVarHp.j();
                if (strJ == null || TextUtils.isEmpty(strJ)) {
                    strJ = "DEFAULT OK";
                }
                if (iW != 0) {
                    strJ = "RSP FAIL";
                    z3 = true;
                    i2 = iW;
                } else {
                    z2 = zJx;
                    i2 = iJx;
                }
                String str4 = strJ;
                l(bArr, map, str);
                return new com.byazt.jds.l(z2, i2, str4, z3, str3);
            } catch (Throwable th2) {
                th = th2;
                str2 = str3;
                jx.hp("NetApiImpl", "uploadEvent error" + th.getMessage(), hp());
                return new com.byazt.jds.l(false, 511, th.getMessage(), false, str2);
            }
        } catch (Throwable th3) {
            th = th3;
            str2 = "error";
        }
    }

    private String l(int i2) {
        if (i2 >= 4) {
            return "application/octet-stream";
        }
        return "application/octet-stream;tt-data=a";
    }

    private boolean hp(String str, String str2) throws Exception {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(jx().getEncoded()));
        Signature signature = Signature.getInstance("Sha1withRSA");
        signature.initVerify(publicKeyGeneratePublic);
        signature.update(str.getBytes());
        return signature.verify(Base64.decode(str2.getBytes(Charset.forName("UTF-8")), 2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.lpy.hp
    public com.byazt.jds.l hp(JSONObject jSONObject) {
        s sVarJl;
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        com.byazt.lpy.w wVarHp;
        int i4;
        j jVarJ = hp().j();
        if (jVarJ == null || !jVarJ.j() || jSONObject == null || jSONObject.length() <= 0 || (sVarJl = jVarJ.jl()) == null) {
            return null;
        }
        a aVarW = sVarJl.w();
        aVarW.hp(sVarJl.eb());
        int iE = sVarJl.e();
        byte[] bArrL = sVarJl.l(jSONObject, iE);
        if (bArrL == null) {
            aVarW.l(sVarJl.hp(jSONObject).toString());
        } else {
            aVarW.hp(l(iE), bArrL);
            aVarW.hp("x-pglcypher", String.valueOf(iE));
        }
        aVarW.hp("User-Agent", jVarJ.w());
        String strJ = "error unknown";
        int iJx = 0;
        try {
            wVarHp = aVarW.hp();
        } catch (Throwable unused) {
            i2 = 0;
            z2 = false;
        }
        if (wVarHp == null) {
            return new com.byazt.jds.l(false, 0, "error unknown", false, "ignore");
        }
        if (!wVarHp.hp() || TextUtils.isEmpty(wVarHp.l())) {
            i4 = 0;
            z2 = false;
        } else {
            JSONObject jSONObject2 = new JSONObject(wVarHp.l());
            int iOptInt = jSONObject2.optInt("code", -1);
            strJ = jSONObject2.optString("data", "");
            z2 = true;
            i4 = iOptInt == 20000 ? 1 : 0;
            if (iOptInt != 60005) {
                z2 = false;
            }
        }
        try {
            iJx = wVarHp.jx();
            if (!wVarHp.hp()) {
                strJ = wVarHp.j();
            }
            i3 = iJx;
            z3 = i4;
        } catch (Throwable unused2) {
            i2 = iJx;
            iJx = i4;
            z3 = iJx;
            i3 = i2;
            return new com.byazt.jds.l(z3, i3, strJ, z2, "ignore");
        }
        return new com.byazt.jds.l(z3, i3, strJ, z2, "ignore");
    }
}
