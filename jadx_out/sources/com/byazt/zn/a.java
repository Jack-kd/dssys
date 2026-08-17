package com.byazt.zn;

import android.text.TextUtils;
import com.byazt.jz.k;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 442, 54})
/* loaded from: classes3.dex */
public class a {
    public static final Map<String, hp> hp = Collections.synchronizedMap(new HashMap());

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.jz.k f28482l;

    public interface hp {
        void hp();

        void hp(String str);
    }

    private static hp l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return hp.remove(str);
    }

    public static void hp(String str, String[] strArr, hp hpVar) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return;
        }
        hp(str, hpVar);
        TTDelegateActivity.hp(str, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.jz.k l() {
        if (f28482l == null) {
            f28482l = k.hp.hp(com.byazt.pjz.hp.hp(com.byazt.jz.sz.getContext()).hp(4));
        }
        return f28482l;
    }

    public static void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.byazt.ton.l.hp()) {
            com.byazt.uid.w.jx().execute(new com.byazt.uid.eb("handleYes", 5) { // from class: com.byazt.zn.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        a.l().hp(str, (String) null);
                    } catch (Throwable unused) {
                    }
                }
            });
            return;
        }
        hp hpVarL = l(str);
        if (hpVarL == null) {
            return;
        }
        hpVarL.hp();
    }

    public static void hp(final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.byazt.ton.l.hp()) {
            com.byazt.uid.w.jx().execute(new com.byazt.uid.eb("handleNo", 5) { // from class: com.byazt.zn.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        a.l().hp(str, str2);
                    } catch (Throwable unused) {
                    }
                }
            });
            return;
        }
        hp hpVarL = l(str);
        if (hpVarL == null) {
            return;
        }
        hpVarL.hp(str2);
    }

    private static void hp(final String str, final hp hpVar) {
        if (TextUtils.isEmpty(str) || hpVar == null) {
            return;
        }
        if (com.byazt.ton.l.hp()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("addListener") { // from class: com.byazt.zn.a.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.byazt.ymw.u.l("MultiProcess", "getListenerManager().registerPermissionListener...");
                        a.l().hp(str, new com.byazt.gd.l(hpVar));
                    } catch (Throwable th) {
                        com.byazt.ymw.u.l("MultiProcess", th.toString());
                    }
                }
            }, 5);
        } else {
            hp.put(str, hpVar);
        }
    }
}
