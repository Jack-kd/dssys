package com.byazt.gc;

import android.content.pm.Signature;
import android.util.ArraySet;
import androidx.annotation.Nullable;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 524, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public final class v {
    public static final v hp = new v(null, 0, null, null, null);

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final int[] f20382a;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final ArraySet<PublicKey> f20383j;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final Signature[] f20384l;

    /* renamed from: w, reason: collision with root package name */
    @Nullable
    public final Signature[] f20385w;

    public v(Signature[] signatureArr, int i2, ArraySet<PublicKey> arraySet, Signature[] signatureArr2, int[] iArr) {
        this.f20384l = signatureArr;
        this.jx = i2;
        this.f20383j = arraySet;
        this.f20385w = signatureArr2;
        this.f20382a = iArr;
    }

    public static ArraySet<PublicKey> hp(Signature[] signatureArr) throws NoSuchMethodException, SecurityException, CertificateException {
        Method method;
        ArraySet<PublicKey> arraySet = new ArraySet<>(signatureArr.length);
        for (Signature signature : signatureArr) {
            try {
                method = Signature.class.getMethod("getPublicKey", null);
            } catch (NoSuchMethodException e2) {
                com.byazt.ik.a.hp(e2);
                method = null;
            }
            if (method != null && method.isAccessible()) {
                try {
                    arraySet.add((PublicKey) method.invoke(signature, null));
                } catch (IllegalAccessException e3) {
                    com.byazt.ik.a.hp(e3);
                } catch (InvocationTargetException e4) {
                    com.byazt.ik.a.hp(e4);
                } catch (Exception e5) {
                    com.byazt.ik.a.hp(e5);
                }
            }
        }
        return arraySet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (this.jx != vVar.jx || !hp(this.f20384l, vVar.f20384l)) {
            return false;
        }
        ArraySet<PublicKey> arraySet = this.f20383j;
        if (arraySet != null) {
            if (!arraySet.equals(vVar.f20383j)) {
                return false;
            }
        } else if (vVar.f20383j != null) {
            return false;
        }
        return Arrays.equals(this.f20385w, vVar.f20385w) && Arrays.equals(this.f20382a, vVar.f20382a);
    }

    public int hashCode() {
        int iHashCode = ((Arrays.hashCode(this.f20384l) * 31) + this.jx) * 31;
        ArraySet<PublicKey> arraySet = this.f20383j;
        return ((((iHashCode + (arraySet != null ? arraySet.hashCode() : 0)) * 31) + Arrays.hashCode(this.f20385w)) * 31) + Arrays.hashCode(this.f20382a);
    }

    public v(Signature[] signatureArr, int i2, Signature[] signatureArr2, int[] iArr) throws CertificateException {
        this(signatureArr, i2, hp(signatureArr), signatureArr2, iArr);
    }

    public v(Signature[] signatureArr, int i2) throws CertificateException {
        this(signatureArr, i2, null, null);
    }

    public static boolean hp(Signature[] signatureArr, Signature[] signatureArr2) {
        return signatureArr.length == signatureArr2.length && com.byazt.lc.j.hp((Object[]) signatureArr, (Object[]) signatureArr2) && com.byazt.lc.j.hp((Object[]) signatureArr2, (Object[]) signatureArr);
    }

    public static boolean hp(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
