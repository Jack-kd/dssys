package com.byazt.px;

import com.byazt.nke.jl;
import com.byazt.nke.vv;
import java.security.NoSuchAlgorithmException;
import java.util.WeakHashMap;

@com.byazt.kj.hp(hp = {0, 1, 549, 34})
/* loaded from: classes3.dex */
public class l {
    public static vv hp() {
        return new vv() { // from class: com.byazt.px.l.1
            public WeakHashMap<String, String> hp = new WeakHashMap<>();

            @Override // com.byazt.nke.vv
            public String hp(jl jlVar) {
                return hp(jlVar.getUrl() + "#width=" + jlVar.getWidth() + "#height=" + jlVar.getHeight() + "#scaletype=" + jlVar.getScaleType() + "#bitmapConfig=" + jlVar.getBitmapConfig());
            }

            @Override // com.byazt.nke.vv
            public String l(jl jlVar) {
                return hp(jlVar.getUrl());
            }

            private String hp(String str) throws NoSuchAlgorithmException {
                String str2 = this.hp.get(str);
                if (str2 != null) {
                    return str2;
                }
                String strHp = com.byazt.qkc.jx.hp(str);
                this.hp.put(str, strHp);
                return strHp;
            }
        };
    }
}
