package com.byazt.kfp;

import android.text.TextUtils;
import com.byazt.ap.j;
import com.byazt.ap.jx;
import com.byazt.jz.sz;
import com.byazt.oyr.l;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.xci.ky;
import com.byazt.ymw.a;
import com.byazt.ymw.u;
import com.byazt.zn.nu;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 778, 28})
/* loaded from: classes.dex */
public class hp {
    public static String hp = "";

    /* renamed from: l, reason: collision with root package name */
    public static String f22060l = "";

    @com.byazt.kj.hp(hp = {0, 1, 778, 170})
    /* renamed from: com.byazt.kfp.hp$hp, reason: collision with other inner class name */
    public static class RunnableC0296hp implements Runnable {
        public WeakReference<Runnable> hp;

        public RunnableC0296hp(Runnable runnable) {
            if (runnable != null) {
                this.hp = new WeakReference<>(runnable);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            WeakReference<Runnable> weakReference = this.hp;
            Runnable runnable = weakReference != null ? weakReference.get() : null;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void hp(final RunnableC0296hp runnableC0296hp) {
        ky kyVarJd = sz.l().jd();
        final String strHp = kyVarJd == null ? null : kyVarJd.hp();
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        if (TextUtils.isEmpty(f22060l)) {
            f22060l = strHp;
        }
        w.l(new eb("loadPfJs") { // from class: com.byazt.kfp.hp.1
            @Override // java.lang.Runnable
            public void run() {
                RunnableC0296hp runnableC0296hp2;
                String str = strHp;
                if (str != null && str.equalsIgnoreCase(hp.f22060l)) {
                    if (TextUtils.isEmpty(hp.hp)) {
                        hp.hp = nu.hp("js_pform").get(a.l(strHp), "");
                    }
                    if (!TextUtils.isEmpty(hp.hp) && (runnableC0296hp2 = runnableC0296hp) != null) {
                        runnableC0296hp2.run();
                        return;
                    }
                }
                jx jxVarJx = com.byazt.cm.w.hp().l().jx();
                jxVarJx.hp(strHp);
                HashMap map = new HashMap();
                map.put("content-type", "application/json; charset=utf-8");
                jxVarJx.j(map);
                jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.kfp.hp.1.1
                    @Override // com.byazt.mnb.hp
                    public void hp(j jVar, IOException iOException) {
                    }

                    @Override // com.byazt.mnb.hp
                    public void hp(j jVar, l lVar) {
                        try {
                            hp.hp = lVar.w();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            hp.f22060l = strHp;
                            RunnableC0296hp runnableC0296hp3 = runnableC0296hp;
                            if (runnableC0296hp3 != null) {
                                runnableC0296hp3.run();
                            }
                            nu.hp("js_pform").clear();
                            nu.hp("js_pform").put(a.l(strHp), hp.hp);
                        } catch (Throwable th) {
                            u.hp("performanceH5", "TTWebViewClient : onPageFinished", th);
                        }
                    }
                });
            }
        });
    }

    public static void hp(StringBuilder sb, String str, String str2) {
        int iIndexOf;
        if (sb == null || TextUtils.isEmpty(str) || (iIndexOf = sb.indexOf(str)) <= 0) {
            return;
        }
        sb.replace(iIndexOf, str.length() + iIndexOf, str2);
    }
}
