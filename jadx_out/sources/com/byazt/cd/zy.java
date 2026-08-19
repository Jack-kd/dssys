package com.byazt.cd;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public interface zy {
    public static final zy hp = new zy() { // from class: com.byazt.cd.zy.1
        @Override // com.byazt.cd.zy
        public boolean hp(int i2, List<jx> list) {
            return true;
        }

        @Override // com.byazt.cd.zy
        public boolean hp(int i2, List<jx> list, boolean z2) {
            return true;
        }

        @Override // com.byazt.cd.zy
        public boolean hp(int i2, com.byazt.raq.w wVar, int i3, boolean z2) throws IOException {
            wVar.s(i3);
            return true;
        }
    };

    boolean hp(int i2, com.byazt.raq.w wVar, int i3, boolean z2) throws IOException;

    boolean hp(int i2, List<jx> list);

    boolean hp(int i2, List<jx> list, boolean z2);
}
