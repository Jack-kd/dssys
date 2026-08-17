package com.kwad.components.core.t;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener;
import com.kwad.sdk.utils.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class a {
    private static volatile a alm;
    private com.kwad.sdk.utils.j ali;
    private List<WeakReference<OfflineOnAudioConflictListener>> alj = new ArrayList();
    private boolean alk = false;
    private boolean all = false;

    private a(@NonNull Context context) {
        init(context);
    }

    public static a aO(@NonNull Context context) {
        if (alm == null) {
            synchronized (a.class) {
                try {
                    if (alm == null) {
                        alm = new a(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return alm;
    }

    private void init(Context context) {
        this.alk = false;
        com.kwad.sdk.utils.j jVar = new com.kwad.sdk.utils.j(context);
        this.ali = jVar;
        jVar.c(new j.a() { // from class: com.kwad.components.core.t.a.1
            @Override // com.kwad.sdk.utils.j.a
            public final void onAudioBeOccupied() {
                Iterator it = a.this.alj.iterator();
                while (it.hasNext()) {
                    WeakReference weakReference = (WeakReference) it.next();
                    if (weakReference == null) {
                        it.remove();
                    } else {
                        OfflineOnAudioConflictListener offlineOnAudioConflictListener = (OfflineOnAudioConflictListener) weakReference.get();
                        if (offlineOnAudioConflictListener != null) {
                            offlineOnAudioConflictListener.onAudioBeOccupied();
                        } else {
                            it.remove();
                        }
                    }
                }
                a.a(a.this, true);
            }

            @Override // com.kwad.sdk.utils.j.a
            public final void onAudioBeReleased() {
                Iterator it = a.this.alj.iterator();
                while (it.hasNext()) {
                    WeakReference weakReference = (WeakReference) it.next();
                    if (weakReference == null) {
                        it.remove();
                    } else {
                        OfflineOnAudioConflictListener offlineOnAudioConflictListener = (OfflineOnAudioConflictListener) weakReference.get();
                        if (offlineOnAudioConflictListener != null) {
                            offlineOnAudioConflictListener.onAudioBeReleased();
                        } else {
                            it.remove();
                        }
                    }
                }
            }
        });
    }

    public final void b(OfflineOnAudioConflictListener offlineOnAudioConflictListener) {
        Iterator<WeakReference<OfflineOnAudioConflictListener>> it = this.alj.iterator();
        while (it.hasNext()) {
            WeakReference<OfflineOnAudioConflictListener> next = it.next();
            if (next == null || next.get() == offlineOnAudioConflictListener) {
                it.remove();
            }
        }
    }

    public final boolean bd(boolean z2) {
        com.kwad.sdk.utils.j jVar = this.ali;
        if (jVar == null) {
            return false;
        }
        if (!z2 && this.alk) {
            return false;
        }
        this.alk = true;
        this.all = false;
        return jVar.Ut();
    }

    public final boolean wD() {
        return this.all;
    }

    public final boolean wE() {
        return this.alk;
    }

    public static /* synthetic */ boolean a(a aVar, boolean z2) {
        aVar.all = true;
        return true;
    }

    public final void a(OfflineOnAudioConflictListener offlineOnAudioConflictListener) {
        this.alj.add(new WeakReference<>(offlineOnAudioConflictListener));
    }
}
