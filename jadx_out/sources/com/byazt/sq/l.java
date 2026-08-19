package com.byazt.sq;

@com.byazt.kj.hp(hp = {0, 1, 1453, 34})
/* loaded from: classes3.dex */
public class l {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008d  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.renderscript.BaseObj] */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.renderscript.BaseObj, android.renderscript.ScriptIntrinsicBlur] */
    @com.bytedance.component.sdk.annotation.RequiresApi(api = 17)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap hp(android.content.Context r4, android.graphics.Bitmap r5, int r6) {
        /*
            r0 = 0
            boolean r1 = com.byazt.wkx.j.hp()     // Catch: java.lang.Throwable -> L79
            if (r1 == 0) goto Le
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L79
            r2 = 26
            if (r1 >= r2) goto Le
            return r0
        Le:
            if (r5 == 0) goto L78
            boolean r1 = r5.isRecycled()     // Catch: java.lang.Throwable -> L79
            if (r1 == 0) goto L17
            goto L78
        L17:
            int r1 = r5.getWidth()     // Catch: java.lang.Throwable -> L79
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L79
            r2 = 1045220557(0x3e4ccccd, float:0.2)
            float r1 = r1 * r2
            int r1 = java.lang.Math.round(r1)     // Catch: java.lang.Throwable -> L79
            int r3 = r5.getHeight()     // Catch: java.lang.Throwable -> L79
            float r3 = (float) r3     // Catch: java.lang.Throwable -> L79
            float r3 = r3 * r2
            int r2 = java.lang.Math.round(r3)     // Catch: java.lang.Throwable -> L79
            r3 = 0
            android.graphics.Bitmap r5 = android.graphics.Bitmap.createScaledBitmap(r5, r1, r2, r3)     // Catch: java.lang.Throwable -> L79
            android.graphics.Bitmap r1 = android.graphics.Bitmap.createBitmap(r5)     // Catch: java.lang.Throwable -> L79
            android.renderscript.RenderScript r4 = android.renderscript.RenderScript.create(r4)     // Catch: java.lang.Throwable -> L79
            if (r4 != 0) goto L43
            if (r4 == 0) goto L42
            r4.destroy()
        L42:
            return r0
        L43:
            android.renderscript.Element r2 = android.renderscript.Element.U8_4(r4)     // Catch: java.lang.Throwable -> L74
            android.renderscript.ScriptIntrinsicBlur r2 = android.renderscript.ScriptIntrinsicBlur.create(r4, r2)     // Catch: java.lang.Throwable -> L74
            android.renderscript.Allocation r5 = android.renderscript.Allocation.createFromBitmap(r4, r5)     // Catch: java.lang.Throwable -> L71
            android.renderscript.Allocation r3 = android.renderscript.Allocation.createFromBitmap(r4, r1)     // Catch: java.lang.Throwable -> L6f
            float r6 = (float) r6
            r2.setRadius(r6)     // Catch: java.lang.Throwable -> L7c
            r2.setInput(r5)     // Catch: java.lang.Throwable -> L7c
            r2.forEach(r3)     // Catch: java.lang.Throwable -> L7c
            r3.copyTo(r1)     // Catch: java.lang.Throwable -> L7c
            if (r5 == 0) goto L65
            r5.destroy()
        L65:
            r3.destroy()
            r2.destroy()
            r4.destroy()
            return r1
        L6f:
            r3 = r0
            goto L7c
        L71:
            r5 = r0
            r3 = r5
            goto L7c
        L74:
            r5 = r0
        L75:
            r2 = r5
            r3 = r2
            goto L7c
        L78:
            return r0
        L79:
            r4 = r0
            r5 = r4
            goto L75
        L7c:
            if (r5 == 0) goto L81
            r5.destroy()
        L81:
            if (r3 == 0) goto L86
            r3.destroy()
        L86:
            if (r2 == 0) goto L8b
            r2.destroy()
        L8b:
            if (r4 == 0) goto L90
            r4.destroy()
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.sq.l.hp(android.content.Context, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }
}
