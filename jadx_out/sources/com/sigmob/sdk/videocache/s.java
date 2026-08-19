package com.sigmob.sdk.videocache;

/* loaded from: classes4.dex */
public class s {
    public static t a(t tVar) {
        l lVar;
        if (com.sigmob.sdk.base.o.a().Z()) {
            try {
                lVar = new l(tVar);
            } catch (Throwable unused) {
            }
        } else {
            lVar = null;
        }
        return lVar == null ? new i(tVar) : lVar;
    }

    public static t a(String str) {
        l lVar;
        if (com.sigmob.sdk.base.o.a().Z()) {
            try {
                lVar = new l(str);
            } catch (Throwable unused) {
            }
        } else {
            lVar = null;
        }
        return lVar == null ? new i(str) : lVar;
    }

    public static t a(String str, com.sigmob.sdk.videocache.sourcestorage.c cVar, com.sigmob.sdk.videocache.headers.b bVar) {
        l lVar;
        if (com.sigmob.sdk.base.o.a().Z()) {
            try {
                lVar = new l(str, cVar, bVar);
            } catch (Throwable unused) {
            }
        } else {
            lVar = null;
        }
        return lVar == null ? new i(str, cVar, bVar) : lVar;
    }
}
