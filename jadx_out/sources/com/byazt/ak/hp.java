package com.byazt.ak;

import android.util.Base64;
import com.byazt.ow.jx;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, 1378, 28})
/* loaded from: classes2.dex */
public class hp implements jx {
    @Override // com.byazt.ow.jx
    public String decrypt(String str) {
        return new String(Base64.decode(str.toString().getBytes(Charset.forName("UTF-8")), 0), Charset.forName("UTF-8"));
    }

    @Override // com.byazt.ow.jx
    public String encrypt(String str) {
        return Base64.encodeToString(str.toString().getBytes(Charset.forName("UTF-8")), 0);
    }

    @Override // com.byazt.ow.jx
    public int type() {
        return 32;
    }
}
