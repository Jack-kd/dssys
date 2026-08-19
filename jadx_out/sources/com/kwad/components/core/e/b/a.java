package com.kwad.components.core.e.b;

/* loaded from: classes4.dex */
public final class a {

    /* renamed from: com.kwad.components.core.e.b.a$a, reason: collision with other inner class name */
    public static class C0526a {
        private static final c Qs = c.a(new int[]{7, 8, 4, 2, 0, 3, 6, 9, 1, 8});
    }

    public static String B(long j2) {
        String strC = pC().C(j2);
        return strC.endsWith("=") ? strC.replace("=", "") : strC;
    }

    public static long am(String str) {
        return pC().an(str);
    }

    private static c pC() {
        return C0526a.Qs;
    }
}
