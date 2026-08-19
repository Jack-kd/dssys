package com.byazt.ze;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, 683, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final String hp;

    /* renamed from: l, reason: collision with root package name */
    public static final String f28397l;

    public interface hp<T> {
        void hp(T t2);
    }

    static {
        StringBuilder sb = new StringBuilder("tt_derive");
        String str = File.separator;
        sb.append(str);
        sb.append("lottie");
        sb.append(str);
        sb.append("anim_img");
        hp = sb.toString();
        f28397l = "tt_derive" + str + "lottie" + str + "anim_video";
    }

    public static String hp(Context context) {
        return com.byazt.ymw.s.hp(context, com.byazt.ui.hp.hp().jx().jl(), hp).getAbsolutePath();
    }

    public static String l(Context context) {
        return com.byazt.ymw.s.hp(context, com.byazt.ui.hp.hp().jx().jl(), f28397l).getAbsolutePath();
    }

    public static void hp(String str, Context context, final hp<File> hpVar) {
        com.byazt.ap.l lVarJ;
        if (context == null || TextUtils.isEmpty(str) || (lVarJ = com.byazt.ui.hp.hp().jx().j()) == null) {
            return;
        }
        final String strHp = hp(context);
        final String strL = com.byazt.ymw.a.l(str);
        lVarJ.hp(str);
        lVarJ.hp(strHp, strL);
        lVarJ.hp(new com.byazt.mnb.hp() { // from class: com.byazt.ze.jx.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (hpVar != null) {
                    File file = new File(strHp, strL);
                    if (file.exists()) {
                        hpVar.hp(file);
                    }
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                if (hpVar != null) {
                    iOException.getMessage();
                }
            }
        });
    }
}
