package com.smartdigimkt.i4;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f40738a = b.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final Object f40739b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public volatile String f40740c = null;

    /* JADX WARN: Removed duplicated region for block: B:54:0x00aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ab A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r11, java.util.ArrayList r12, java.lang.String r13) {
        /*
            int r0 = r12.size()
            java.lang.String r1 = ""
            if (r0 != 0) goto L9
            return r1
        L9:
            r0 = 0
            int r2 = r12.size()     // Catch: java.lang.Throwable -> La3
            r3 = 1
            r4 = r0
            r5 = r1
            r6 = r3
        L12:
            if (r4 >= r2) goto La1
            java.lang.Object r7 = r12.get(r4)     // Catch: java.lang.Throwable -> L9f
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L9f
            boolean r8 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> La8
            if (r8 == 0) goto L39
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La8
            r8.<init>()     // Catch: java.lang.Throwable -> La8
            java.lang.String r9 = "_"
            java.lang.String[] r9 = r7.split(r9)     // Catch: java.lang.Throwable -> La8
            r9 = r9[r0]     // Catch: java.lang.Throwable -> La8
            r8.append(r9)     // Catch: java.lang.Throwable -> La8
            java.lang.String r9 = "_*"
            r8.append(r9)     // Catch: java.lang.Throwable -> La8
            java.lang.String r5 = r8.toString()     // Catch: java.lang.Throwable -> La8
        L39:
            boolean r8 = android.text.TextUtils.isEmpty(r13)     // Catch: java.lang.Throwable -> La8
            java.lang.String r9 = "layout"
            if (r8 != 0) goto L4a
            android.content.res.Resources r8 = r11.getResources()     // Catch: java.lang.Throwable -> La8
            int r8 = r8.getIdentifier(r7, r9, r13)     // Catch: java.lang.Throwable -> La8
            goto L4b
        L4a:
            r8 = -1
        L4b:
            if (r8 > 0) goto L59
            android.content.res.Resources r8 = r11.getResources()     // Catch: java.lang.Throwable -> La8
            java.lang.String r10 = r11.getPackageName()     // Catch: java.lang.Throwable -> La8
            int r8 = r8.getIdentifier(r7, r9, r10)     // Catch: java.lang.Throwable -> La8
        L59:
            if (r8 > 0) goto L5c
            goto La8
        L5c:
            r7 = 0
            android.content.res.Resources r9 = r11.getResources()     // Catch: java.lang.Throwable -> L83
            android.content.res.XmlResourceParser r7 = r9.getLayout(r8)     // Catch: java.lang.Throwable -> L83
        L65:
            int r8 = r7.next()     // Catch: java.lang.Throwable -> L83
            if (r8 == r3) goto L91
            r9 = 2
            if (r8 == r9) goto L6f
            goto L65
        L6f:
            java.lang.String r8 = "x"
            java.lang.String r9 = r7.getName()     // Catch: java.lang.Throwable -> L83
            boolean r8 = r8.equalsIgnoreCase(r9)     // Catch: java.lang.Throwable -> L83
            if (r8 == 0) goto L85
            int r8 = r7.getAttributeCount()     // Catch: java.lang.Throwable -> L83
            if (r8 != 0) goto L65
            r6 = r0
            goto L91
        L83:
            r8 = move-exception
            goto L8c
        L85:
            int r8 = r7.getAttributeCount()     // Catch: java.lang.Throwable -> L83
            if (r8 < 0) goto L65
            goto L91
        L8c:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L98
            if (r7 == 0) goto L94
        L91:
            r7.close()     // Catch: java.lang.Throwable -> La8
        L94:
            int r4 = r4 + 1
            goto L12
        L98:
            r11 = move-exception
            if (r7 == 0) goto L9e
            r7.close()     // Catch: java.lang.Throwable -> La8
        L9e:
            throw r11     // Catch: java.lang.Throwable -> La8
        L9f:
            r11 = move-exception
            goto La5
        La1:
            r0 = r6
            goto La8
        La3:
            r11 = move-exception
            r5 = r1
        La5:
            r11.printStackTrace()
        La8:
            if (r0 == 0) goto Lab
            return r1
        Lab:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.i4.b.a(android.content.Context, java.util.ArrayList, java.lang.String):java.lang.String");
    }
}
