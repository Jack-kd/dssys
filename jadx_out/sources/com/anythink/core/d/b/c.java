package com.anythink.core.d.b;

import android.os.Looper;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;
import com.anythink.core.e.g;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f8576a = "PlacementStatRecWrapper";

    /* renamed from: b, reason: collision with root package name */
    private final b f8577b = new d();

    @Override // com.anythink.core.d.b.b
    public final void b(String str) {
        b bVar = this.f8577b;
        if (bVar != null) {
            bVar.b(str);
        }
    }

    @Override // com.anythink.core.d.b.b
    public final void a(final String str, final String str2, final int i2, final ATAdRequest aTAdRequest, final by byVar) {
        a(new Runnable() { // from class: com.anythink.core.d.b.c.1
            @Override // java.lang.Runnable
            public final void run() {
                if (c.this.f8577b != null) {
                    c.this.f8577b.a(str, str2, i2, aTAdRequest, byVar);
                }
            }
        });
    }

    @Override // com.anythink.core.d.b.b
    public final void a(final bx bxVar, final by byVar) {
        a(new Runnable() { // from class: com.anythink.core.d.b.c.2
            @Override // java.lang.Runnable
            public final void run() {
                if (c.this.f8577b != null) {
                    c.this.f8577b.a(bxVar, byVar);
                }
            }
        });
    }

    @Override // com.anythink.core.d.b.b
    public final List<com.anythink.core.d.a.a> a(int i2, String str, int i3) {
        Looper.myLooper();
        Looper.getMainLooper();
        b bVar = this.f8577b;
        return bVar != null ? bVar.a(i2, str, i3) : new ArrayList();
    }

    @Override // com.anythink.core.d.b.b
    public final JSONObject a(String str) {
        return a(str, 0);
    }

    @Override // com.anythink.core.d.b.b
    public final JSONObject a(String str, int i2) {
        Looper.myLooper();
        Looper.getMainLooper();
        b bVar = this.f8577b;
        return bVar != null ? bVar.a(str, i2) : new JSONObject();
    }

    @Override // com.anythink.core.d.b.b
    public final JSONObject a(String str, int i2, int i3) {
        Looper.myLooper();
        Looper.getMainLooper();
        b bVar = this.f8577b;
        return bVar != null ? bVar.a(str, i2, i3) : new JSONObject();
    }

    @Override // com.anythink.core.d.b.b
    public final com.anythink.core.d.a.d a(String str, int i2, g gVar) {
        b bVar = this.f8577b;
        return bVar != null ? bVar.a(str, i2, gVar) : new com.anythink.core.d.a.d();
    }

    private static void a(Runnable runnable) {
        com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bX, runnable));
    }
}
