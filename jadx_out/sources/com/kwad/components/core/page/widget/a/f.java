package com.kwad.components.core.page.widget.a;

import android.net.Uri;
import android.text.TextUtils;
import com.kwad.components.core.t.r;
import com.kwad.components.core.t.u;

/* loaded from: classes4.dex */
public final class f implements g {
    private static boolean bd(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return Boolean.parseBoolean(str);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return false;
        }
    }

    @Override // com.kwad.components.core.page.widget.a.g
    public final e bc(String str) {
        e eVar = new e();
        if (TextUtils.isEmpty(str)) {
            return eVar;
        }
        Uri uri = Uri.parse(str);
        eVar.ahx = r.a(u.a(uri, "heightRatio", "0"), 0.0f);
        eVar.ahy = r.a(u.a(uri, "absoluteHeight", "0"), 0.0f);
        eVar.ahA = r.m(u.a(uri, "topRadius", "0"), 0);
        eVar.ahz = r.a(u.a(uri, "maskAlpha", "0"), 0.0f);
        eVar.ahB = bd(u.a(uri, "disableClickOutsideDismiss", "false"));
        eVar.ahC = bd(u.a(uri, "enableDragHalfToFull", "false"));
        eVar.ahD = bd(u.a(uri, "showStatusBar", "false"));
        eVar.ahF = bd(u.a(uri, "isAdjustKeyBoard", "true"));
        eVar.ahH = u.a(uri);
        return eVar;
    }
}
