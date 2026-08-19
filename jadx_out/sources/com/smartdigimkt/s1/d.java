package com.smartdigimkt.s1;

import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    public static volatile d f43105d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f43106a;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f43108c = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final SimpleDateFormat f43107b = new SimpleDateFormat("yyyyMMdd");

    public d(Context context) {
        this.f43106a = context.getApplicationContext();
    }

    public static d a(Context context) {
        if (f43105d == null) {
            synchronized (d.class) {
                try {
                    if (f43105d == null) {
                        f43105d = new d(context);
                    }
                } finally {
                }
            }
        }
        return f43105d;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c6 A[Catch: all -> 0x00aa, PHI: r3
      0x00c6: PHI (r3v9 android.database.Cursor) = 
      (r3v6 android.database.Cursor)
      (r3v7 android.database.Cursor)
      (r3v8 android.database.Cursor)
      (r3v15 android.database.Cursor)
     binds: [B:23:0x00b1, B:27:0x00b8, B:35:0x00c4, B:20:0x00ad] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {, blocks: (B:15:0x00a4, B:36:0x00c6, B:32:0x00bf, B:33:0x00c2, B:26:0x00b5), top: B:52:0x002f, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.i0.c a(com.smartdigimkt.p3.a r15) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.s1.d.a(com.smartdigimkt.p3.a):com.smartdigimkt.i0.c");
    }
}
