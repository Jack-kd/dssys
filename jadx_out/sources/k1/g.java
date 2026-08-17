package k1;

import com.umeng.analytics.pro.ek;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f51285a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35448N, com.sigmob.sdk.archives.tar.e.f35449O, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, ek.f49293k, ek.f49294l, ek.f49295m, ek.f49296n, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, com.sigmob.sdk.archives.tar.e.f35442H, com.sigmob.sdk.archives.tar.e.f35443I, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35445K, -1, -1, -1, -1, -1};

    static {
        new HashMap();
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        if (r5 != (-1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0078, code lost:
    
        r2.write(((r4 & com.umeng.analytics.pro.ek.f49295m) << 4) | ((r5 & 60) >>> 2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0084, code lost:
    
        r4 = r3 + 1;
        r3 = r10[r3] & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008a, code lost:
    
        if (r3 != 61) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008c, code lost:
    
        r10 = r2.toByteArray();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0091, code lost:
    
        r9 = k1.g.f51285a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0093, code lost:
    
        if (r3 >= 128) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0095, code lost:
    
        r3 = r9[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0098, code lost:
    
        r3 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0099, code lost:
    
        if (r4 >= r1) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
    
        if (r3 == (-1)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x009e, code lost:
    
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
    
        if (r3 != (-1)) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
    
        r2.write(r3 | ((r5 & 3) << 6));
        r3 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 == 0) goto L9
            java.lang.String r10 = ""
            return r10
        L9:
            java.lang.String r0 = new java.lang.String
            byte[] r10 = r10.getBytes()
            int r1 = r10.length
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream
            r2.<init>(r1)
            r3 = 0
        L16:
            if (r3 >= r1) goto Lae
        L18:
            int r4 = r3 + 1
            r3 = r10[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            byte[] r5 = k1.g.f51285a
            r6 = 128(0x80, float:1.8E-43)
            r7 = -1
            if (r3 >= r6) goto L28
            r3 = r5[r3]
            goto L29
        L28:
            r3 = r7
        L29:
            if (r4 >= r1) goto L30
            if (r3 == r7) goto L2e
            goto L30
        L2e:
            r3 = r4
            goto L18
        L30:
            if (r3 != r7) goto L34
            goto Lae
        L34:
            int r5 = r4 + 1
            r4 = r10[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            byte[] r8 = k1.g.f51285a
            if (r4 >= r6) goto L41
            r4 = r8[r4]
            goto L42
        L41:
            r4 = r7
        L42:
            if (r5 >= r1) goto L49
            if (r4 == r7) goto L47
            goto L49
        L47:
            r4 = r5
            goto L34
        L49:
            if (r4 != r7) goto L4d
            goto Lae
        L4d:
            int r3 = r3 << 2
            r8 = r4 & 48
            int r8 = r8 >>> 4
            r3 = r3 | r8
            r2.write(r3)
        L57:
            int r3 = r5 + 1
            r5 = r10[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r8 = 61
            if (r5 != r8) goto L66
            byte[] r10 = r2.toByteArray()
            goto Lb2
        L66:
            byte[] r9 = k1.g.f51285a
            if (r5 >= r6) goto L6d
            r5 = r9[r5]
            goto L6e
        L6d:
            r5 = r7
        L6e:
            if (r3 >= r1) goto L75
            if (r5 == r7) goto L73
            goto L75
        L73:
            r5 = r3
            goto L57
        L75:
            if (r5 != r7) goto L78
            goto Lae
        L78:
            r4 = r4 & 15
            int r4 = r4 << 4
            r9 = r5 & 60
            int r9 = r9 >>> 2
            r4 = r4 | r9
            r2.write(r4)
        L84:
            int r4 = r3 + 1
            r3 = r10[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            if (r3 != r8) goto L91
            byte[] r10 = r2.toByteArray()
            goto Lb2
        L91:
            byte[] r9 = k1.g.f51285a
            if (r3 >= r6) goto L98
            r3 = r9[r3]
            goto L99
        L98:
            r3 = r7
        L99:
            if (r4 >= r1) goto La0
            if (r3 == r7) goto L9e
            goto La0
        L9e:
            r3 = r4
            goto L84
        La0:
            if (r3 != r7) goto La3
            goto Lae
        La3:
            r5 = r5 & 3
            int r5 = r5 << 6
            r3 = r3 | r5
            r2.write(r3)
            r3 = r4
            goto L16
        Lae:
            byte[] r10 = r2.toByteArray()
        Lb2:
            r0.<init>(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k1.g.a(java.lang.String):java.lang.String");
    }
}
