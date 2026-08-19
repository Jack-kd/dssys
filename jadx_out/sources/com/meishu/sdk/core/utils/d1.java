package com.meishu.sdk.core.utils;

import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public class d1 {

    /* renamed from: a, reason: collision with root package name */
    public static String f31876a;

    /* renamed from: b, reason: collision with root package name */
    public static final List<String> f31877b = Collections.synchronizedList(new ArrayList());

    public interface a {
        void a(boolean z2);
    }

    public static File a() {
        try {
            File file = new File(AdSdk.getContext().getFilesDir(), "rwd_temps");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void b(String str) {
        try {
            String strA = a(str);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            File file = new File(a(), strA);
            if (file.exists()) {
                return;
            }
            List<String> list = f31877b;
            if (list.contains(str)) {
                return;
            }
            list.add(str);
            File file2 = new File(a(), strA + "_temp");
            if (file2.exists()) {
                file2.delete();
            }
            a0.a(str, (y) new c1(str, null, file2, file), false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static String a(String str) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sbA = com.meishu.sdk.activity.a.a("([?&])");
        if (TextUtils.isEmpty(f31876a)) {
            f31876a = new String(g1.a("bXNfdXVpZA=="));
        }
        sbA.append(f31876a);
        sbA.append("=[^&]*");
        String string = sbA.toString();
        StringBuilder sbA2 = com.meishu.sdk.activity.a.a("$1");
        if (TextUtils.isEmpty(f31876a)) {
            f31876a = new String(g1.a("bXNfdXVpZA=="));
        }
        sbA2.append(f31876a);
        sbA2.append("=ABC");
        String strReplaceAll = str.replaceAll(string, sbA2.toString());
        if (TextUtils.isEmpty(strReplaceAll)) {
            return null;
        }
        return f0.a(strReplaceAll, "");
    }
}
