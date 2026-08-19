package com.byazt.fs;

import android.text.TextUtils;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import java.io.IOException;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 218, 38})
/* loaded from: classes2.dex */
public class j implements l {
    public jl hp;

    public j() {
        this.hp = null;
        this.hp = com.byazt.fw.l.jx();
    }

    @Override // com.byazt.fs.l
    public hp hp(w wVar) throws IOException {
        k.hp hpVar = new k.hp();
        try {
            Map<String, String> map = wVar.f20097w;
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        String value = entry.getValue();
                        if (value == null) {
                            value = "";
                        }
                        hpVar.l(key, value);
                    }
                }
            }
            u uVarL = this.hp.hp(hpVar.hp(wVar.f20096l).hp().l()).l();
            uVarL.jx();
            return new a(uVarL, wVar);
        } catch (Throwable unused) {
            return null;
        }
    }
}
