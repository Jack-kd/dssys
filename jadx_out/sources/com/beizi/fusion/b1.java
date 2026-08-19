package com.beizi.fusion;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class b1 implements ua {
    @Override // com.beizi.fusion.ua
    public final void a(int i2, InputStream inputStream) {
        String strA;
        if (inputStream != null) {
            try {
                strA = be.a(inputStream, "UTF-8");
            } catch (IOException e2) {
                rm.a(e2);
            }
        } else {
            strA = "";
        }
        a(new n9(i2, strA));
    }

    public abstract void a(ta taVar);
}
