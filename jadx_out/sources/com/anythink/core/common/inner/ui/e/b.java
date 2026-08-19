package com.anythink.core.common.inner.ui.e;

import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;

/* loaded from: classes2.dex */
public final class b {

    public interface a {
        void a();
    }

    private static void a(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = 0;
        view.setLayoutParams(layoutParams);
    }

    private static boolean a(long j2, x xVar) {
        y yVar;
        if (xVar != null && (yVar = xVar.f4500t) != null && yVar.U() < 0) {
            return true;
        }
        if (j2 <= 0) {
            return false;
        }
        return xVar == null || xVar.f4500t == null || System.currentTimeMillis() - j2 > xVar.f4500t.U();
    }
}
