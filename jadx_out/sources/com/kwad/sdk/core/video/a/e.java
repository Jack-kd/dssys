package com.kwad.sdk.core.video.a;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.sdk.core.report.g;
import com.kwad.sdk.core.report.n;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ax;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public final class e {
    private static AtomicBoolean aZt = null;
    private static int aZu = -1;
    private static final AtomicBoolean aZv = new AtomicBoolean(false);
    private static final AtomicBoolean aZw = new AtomicBoolean(false);
    private static int aZx = 0;
    private static boolean amw = false;

    public static boolean HZ() {
        return aZw.get() || com.kwad.framework.a.a.OB.booleanValue();
    }

    public static int OK() {
        return aZx;
    }

    public static boolean OL() {
        AtomicBoolean atomicBoolean = aZt;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(true);
        aZt = atomicBoolean2;
        return atomicBoolean2.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c a(@NonNull Context context, boolean z2, boolean z3, boolean z4, int i2) {
        boolean z5;
        b bVar;
        b bVar2;
        try {
            if (HZ() && z3 && OL()) {
                com.kwad.sdk.core.d.c.i("MediaPlayerImpl", "constructPlayer KwaiMediaPlayer");
                d dVar = new d(i2);
                aZx = 2;
                dVar.bK(z2);
                bVar2 = dVar;
            } else {
                com.kwad.sdk.core.d.c.i("MediaPlayerImpl", "constructPlayer AndroidMediaPlayer");
                b bVar3 = new b();
                aZx = 1;
                bVar2 = bVar3;
            }
            z5 = false;
            bVar = bVar2;
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.e("MediaPlayerImpl", "constructPlayer exception, using AndroidMediaPlayer", th);
            if (!amw) {
                amw = true;
                com.kwad.sdk.service.d.gatherException(th);
            }
            b bVar4 = new b();
            aZx = 1;
            z5 = true;
            bVar = bVar4;
        }
        int iA = ax.a(HZ(), ServiceProvider.get(com.kwad.sdk.service.a.f.class) != null && ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fu(), z3, OL(), z5, z4, bVar.getMediaPlayerType());
        com.kwad.sdk.core.d.c.W("KwaiPlayHelper", "player v=" + Integer.toBinaryString(iA));
        if (aZu != iA) {
            aZu = iA;
            eL(iA);
        }
        return bVar;
    }

    private static void eL(int i2) {
        n nVar = new n(10212L);
        nVar.aVZ = i2;
        g.a(nVar);
    }
}
