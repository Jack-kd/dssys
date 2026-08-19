package com.kwad.sdk.core.webview.b.b;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.sdk.utils.C1241a;
import com.kwad.sdk.utils.br;
import com.kwad.sdk.utils.y;
import java.io.File;

/* loaded from: classes4.dex */
public final class b {
    public static synchronized boolean a(Context context, com.kwad.sdk.h.a.b bVar) {
        try {
            String str = bVar.bgI;
            File file = new File(str);
            if (!y.Q(file)) {
                return false;
            }
            if (!TextUtils.isEmpty(bVar.aEX)) {
                String fileMD5 = C1241a.getFileMD5(file);
                if (fileMD5 != null && fileMD5.length() > 10) {
                    fileMD5 = fileMD5.substring(0, 10);
                }
                if (!br.isEquals(fileMD5, bVar.aEX)) {
                    y.ad(file);
                    return false;
                }
            }
            com.kwad.sdk.core.webview.b.c.b.a(bVar, 2);
            try {
                com.kwad.sdk.core.webview.b.c.a.f(context, str, com.kwad.sdk.core.webview.b.c.a.K(context, bVar.bgH));
                y.ad(file);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                com.kwad.sdk.core.webview.b.c.b.a(bVar, 0, 2, e2.getMessage());
                return false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
