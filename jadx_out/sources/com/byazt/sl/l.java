package com.byazt.sl;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

@com.byazt.kj.hp(hp = {0, 1, 499, 34})
/* loaded from: classes3.dex */
public class l {
    public static String hp = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBALo9WqslO45/EjPWz6YMAu8PBgzV9Ujk3TSQSgebYdNPLJ2u0Y69eSj5DRk7uVplC+WkdEJGznST4OXTRZyKI9ECAwEAAQ==";
    public static String jx = "OutProcessEncryptUtils";

    /* renamed from: l, reason: collision with root package name */
    public static volatile l f25478l;

    /* renamed from: j, reason: collision with root package name */
    public PublicKey f25479j = null;

    /* renamed from: w, reason: collision with root package name */
    public j f25480w;

    private l() {
    }

    public static l hp() {
        if (f25478l == null) {
            synchronized (l.class) {
                try {
                    if (f25478l == null) {
                        f25478l = new l();
                    }
                } finally {
                }
            }
        }
        return f25478l;
    }

    private j j(Context context) {
        j jVar = new j();
        jVar.hp = jx.hp();
        jVar.f25477l = jx.hp();
        String str = jVar.hp + "#" + jVar.f25477l;
        for (int i2 = 2; i2 >= 0; i2--) {
            byte[] bArrHp = hp(context, str);
            if (bArrHp != null && bArrHp.length > 0) {
                jVar.jx = Base64.encodeToString(bArrHp, 2);
            }
            if (!TextUtils.isEmpty(jVar.jx)) {
                break;
            }
        }
        return jVar;
    }

    private PublicKey jx(Context context) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(hp, 2)));
    }

    private PublicKey l(Context context) throws InvalidKeySpecException, NoSuchAlgorithmException {
        if (this.f25479j == null) {
            this.f25479j = jx(context);
        }
        return this.f25479j;
    }

    private byte[] hp(PublicKey publicKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKey);
        return cipher.doFinal(bArr);
    }

    public j hp(Context context) {
        j jVarJ;
        j jVar = this.f25480w;
        if (jVar != null) {
            return jVar;
        }
        synchronized (this) {
            jVarJ = j(context);
            this.f25480w = jVarJ;
        }
        return jVarJ;
    }

    private byte[] hp(Context context, String str) {
        try {
            return hp(l(context), str.getBytes());
        } catch (Exception unused) {
            return null;
        }
    }
}
