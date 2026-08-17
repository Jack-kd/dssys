package com.byazt.lsx;

import android.text.TextUtils;
import android.util.Base64;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.bv;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static volatile s hp;
    public Cipher jx;

    /* renamed from: l, reason: collision with root package name */
    public Key f22787l;

    private s() {
        try {
            this.f22787l = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(com.byazt.di.l.l().rv(), 0)));
            this.jx = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        } catch (Exception unused) {
        }
    }

    public static s hp() {
        if (hp == null) {
            synchronized (s.class) {
                try {
                    if (hp == null) {
                        hp = new s();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public String hp(byte[] bArr) throws Exception {
        byte[] bArrDoFinal;
        if (bArr == null) {
            return null;
        }
        if (this.jx == null) {
            this.f22787l = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(com.byazt.di.l.l().rv(), 0)));
            this.jx = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        }
        this.jx.init(1, this.f22787l);
        int length = bArr.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = length - i2;
            if (i4 > 0) {
                if (i4 > 117) {
                    bArrDoFinal = this.jx.doFinal(bArr, i2, 117);
                } else {
                    bArrDoFinal = this.jx.doFinal(bArr, i2, i4);
                }
                byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
                i3++;
                i2 = i3 * 117;
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return Base64.encodeToString(byteArray, 2);
            }
        }
    }

    public String hp(com.byazt.rt.jx jxVar) throws JSONException {
        if (jxVar == null || MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(jxVar.getAdTitle())) {
                jSONObject.putOpt(bv.aI, jxVar.getAdTitle());
            }
            if (!TextUtils.isEmpty(jxVar.getAdDescription())) {
                jSONObject.putOpt("d", jxVar.getAdDescription());
            }
            jSONObject.putOpt("e", String.valueOf(jxVar.getCpm()));
            if (!TextUtils.isEmpty(jxVar.getAppName())) {
                jSONObject.putOpt("an", jxVar.getAppName());
            }
            if (!TextUtils.isEmpty(jxVar.getAuthorName())) {
                jSONObject.putOpt("aun", jxVar.getAuthorName());
            }
        } catch (JSONException unused) {
        }
        if (jSONObject.length() <= 0) {
            return null;
        }
        try {
            return hp(jSONObject.toString().getBytes());
        } catch (Exception unused2) {
            return null;
        }
    }
}
