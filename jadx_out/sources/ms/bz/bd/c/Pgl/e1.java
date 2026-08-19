package ms.bz.bd.c.Pgl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import com.umeng.analytics.pro.ek;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes5.dex */
public final class e1 {
    ServiceConnection hp;

    /* renamed from: j, reason: collision with root package name */
    private f1 f51960j;
    private String jx;

    /* renamed from: l, reason: collision with root package name */
    private final Context f51961l;

    public class pgla implements ServiceConnection {
        public pgla() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e1.this.f51960j = new f1(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            e1.this.f51960j = null;
        }
    }

    public e1(Context context) {
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "09699d", new byte[]{ek.f49294l, ek.f49294l, 108, 105});
        this.hp = new pgla();
        this.f51961l = context;
    }

    public final void hp(pblk.pblb pblbVar) {
        boolean z2;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ffd12a", new byte[]{84, 101, 25, 75, 2, 98, 37, 85, 32, 111, com.sigmob.sdk.archives.tar.e.f35449O, 107, 25, 5, 32, 119, 108, 73, 1, 105, 101, 97, 22, 65}));
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "93aad6", new byte[]{43, 62, 31, 91, com.sigmob.sdk.archives.tar.e.f35451Q, 36, 35, 6, com.sigmob.sdk.archives.tar.e.f35443I, 33, 102, 62, 2, ek.f49296n, 85, 40, 62}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e3d6dc", new byte[]{119, 62, 26, 12, com.sigmob.sdk.archives.tar.e.f35451Q, 113, 127, 6, com.sigmob.sdk.archives.tar.e.f35446L, 118, 58, 62, 7, 71, 85, 125, 98, 92, 28, 98, 113, 63, 3, 75, 93, 109, 85, 23, 39, 112, 125, com.sigmob.sdk.archives.tar.e.f35444J, 18})));
        intent.setAction((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3f9f53", new byte[]{35, com.sigmob.sdk.archives.tar.e.f35454T, 94, 27, 5, 42, 126, 68, com.sigmob.sdk.archives.tar.e.f35454T, 59, 108, 108, 79, 11, 30, 37, 32, 9, com.sigmob.sdk.archives.tar.e.f35454T, 38, 39, 106, 67, 22, 68, 11, 0, 98, 70, 9, 11, com.anythink.core.common.s.a.c.f7561b, 117, 33, 47, 22, 6, 110, 75, 19}));
        try {
            z2 = true;
        } catch (Throwable unused) {
            z2 = false;
        }
        if (this.f51961l.bindService(intent, this.hp, 1)) {
            try {
                try {
                    SystemClock.sleep(3000L);
                } catch (Exception unused2) {
                }
                f1 f1Var = this.f51960j;
                if (f1Var != null) {
                    String strHp = hp(f1Var, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8fbb2b", new byte[]{6, 81, 56, com.sigmob.sdk.archives.tar.e.f35444J}));
                    if (pblbVar != null) {
                        pblbVar.hp(strHp);
                    }
                }
            } catch (Throwable unused3) {
                try {
                    com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ea5936", new byte[]{123, 115});
                    if (!z2) {
                        return;
                    }
                    this.f51961l.unbindService(this.hp);
                } finally {
                }
            }
            this.f51961l.unbindService(this.hp);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String hp(ms.bz.bd.c.Pgl.f1 r15, java.lang.String r16) throws java.security.NoSuchAlgorithmException {
        /*
            r14 = this;
            android.content.Context r0 = r14.f51961l
            java.lang.String r0 = r0.getPackageName()
            java.lang.String r1 = r14.jx
            r2 = 3
            r3 = 1
            r4 = 0
            r5 = 0
            if (r1 != 0) goto L6c
            android.content.Context r1 = r14.f51961l     // Catch: java.lang.Exception -> L1d
            android.content.pm.PackageManager r1 = r1.getPackageManager()     // Catch: java.lang.Exception -> L1d
            r6 = 64
            android.content.pm.PackageInfo r1 = r1.getPackageInfo(r0, r6)     // Catch: java.lang.Exception -> L1d
            android.content.pm.Signature[] r1 = r1.signatures     // Catch: java.lang.Exception -> L1d
            goto L1e
        L1d:
            r1 = r5
        L1e:
            if (r1 == 0) goto L69
            int r6 = r1.length
            if (r6 <= 0) goto L69
            r1 = r1[r4]
            byte[] r1 = r1.toByteArray()
            java.lang.String r10 = "845b0c"
            r6 = 4
            byte[] r11 = new byte[r6]     // Catch: java.lang.Exception -> L69
            r11 = {x00ca: FILL_ARRAY_DATA , data: [26, 30, 103, 71} // fill-array     // Catch: java.lang.Exception -> L69
            r6 = 16777217(0x1000001, float:2.350989E-38)
            r7 = 0
            r8 = 0
            java.lang.Object r6 = com.volcengine.mobsecBiz.matrix.pgla.a(r6, r7, r8, r10, r11)     // Catch: java.lang.Exception -> L69
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L69
            java.security.MessageDigest r6 = java.security.MessageDigest.getInstance(r6)     // Catch: java.lang.Exception -> L69
            if (r6 == 0) goto L69
            byte[] r1 = r6.digest(r1)     // Catch: java.lang.Exception -> L69
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L69
            r6.<init>()     // Catch: java.lang.Exception -> L69
            int r7 = r1.length     // Catch: java.lang.Exception -> L69
            r8 = r4
        L4e:
            if (r8 >= r7) goto L64
            r9 = r1[r8]     // Catch: java.lang.Exception -> L69
            r9 = r9 & 255(0xff, float:3.57E-43)
            r9 = r9 | 256(0x100, float:3.59E-43)
            java.lang.String r9 = java.lang.Integer.toHexString(r9)     // Catch: java.lang.Exception -> L69
            java.lang.String r9 = r9.substring(r3, r2)     // Catch: java.lang.Exception -> L69
            r6.append(r9)     // Catch: java.lang.Exception -> L69
            int r8 = r8 + 1
            goto L4e
        L64:
            java.lang.String r1 = r6.toString()     // Catch: java.lang.Exception -> L69
            goto L6a
        L69:
            r1 = r5
        L6a:
            r14.jx = r1
        L6c:
            java.lang.String r1 = r14.jx
            r15.getClass()
            android.os.Parcel r6 = android.os.Parcel.obtain()
            android.os.Parcel r7 = android.os.Parcel.obtain()
            java.lang.String r12 = "7ea7a6"
            r8 = 25
            byte[] r13 = new byte[r8]     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r13 = {x00d0: FILL_ARRAY_DATA , data: [37, 104, 31, 13, 86, 36, 45, 80, 49, 119, 104, 104, 2, 70, 80, 40, 48, 10, 25, 72, 54, 98, 28, 106, 122} // fill-array     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r8 = 16777217(0x1000001, float:2.350989E-38)
            r9 = 0
            r10 = 0
            java.lang.Object r8 = com.volcengine.mobsecBiz.matrix.pgla.a(r8, r9, r10, r12, r13)     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r6.writeInterfaceToken(r8)     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r6.writeString(r0)     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r6.writeString(r1)     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r0 = r16
            r6.writeString(r0)     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            android.os.IBinder r15 = r15.hp     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r15.transact(r3, r6, r7, r4)     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            r7.readException()     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            java.lang.String r5 = r7.readString()     // Catch: java.lang.Throwable -> La9 java.lang.Exception -> Lac
            goto Lbc
        La9:
            r0 = move-exception
            r15 = r0
            goto Lc3
        Lac:
            java.lang.String r12 = "6caef9"
            byte[] r13 = new byte[r2]     // Catch: java.lang.Throwable -> La9
            r13 = {x00e2: FILL_ARRAY_DATA , data: [40, 113, 27} // fill-array     // Catch: java.lang.Throwable -> La9
            r8 = 16777217(0x1000001, float:2.350989E-38)
            r9 = 0
            r10 = 0
            com.volcengine.mobsecBiz.matrix.pgla.a(r8, r9, r10, r12, r13)     // Catch: java.lang.Throwable -> La9
        Lbc:
            r6.recycle()
            r7.recycle()
            return r5
        Lc3:
            r6.recycle()
            r7.recycle()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: ms.bz.bd.c.Pgl.e1.hp(ms.bz.bd.c.Pgl.f1, java.lang.String):java.lang.String");
    }
}
