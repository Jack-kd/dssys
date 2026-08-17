package com.beizi.fusion;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class fp {

    public class a extends fp {
        public a() {
        }

        @Override // com.beizi.fusion.fp
        public void a(rg rgVar, Object obj) throws IOException {
            if (obj == null) {
                rgVar.k();
            } else {
                fp.this.a(rgVar, obj);
            }
        }
    }

    public final fp a() {
        return new a();
    }

    public abstract void a(rg rgVar, Object obj);
}
