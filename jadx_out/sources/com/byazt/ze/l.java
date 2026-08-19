package com.byazt.ze;

import android.text.TextUtils;
import java.io.File;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 683, 34})
/* loaded from: classes3.dex */
public class l {

    public interface hp {
        void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar);

        void hp(com.byazt.ap.j jVar, IOException iOException);
    }

    public static void hp(String str, File file, String str2, final hp hpVar) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ap.l lVarJ = com.byazt.ui.hp.hp().jx().j();
        lVarJ.hp(str);
        lVarJ.hp(file.getAbsolutePath(), str2);
        lVarJ.hp(new com.byazt.mnb.hp() { // from class: com.byazt.ze.l.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(jVar, lVar);
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(jVar, iOException);
                }
            }
        });
    }
}
