package com.byazt.gc;

import android.content.pm.Signature;
import androidx.annotation.RequiresApi;
import com.byazt.gc.jx;
import com.kuaishou.weapon.p0.t;
import java.io.RandomAccessFile;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;

@com.byazt.kj.hp(hp = {0, 1, 524, 38})
@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public class j {
    public static v hp(String str, int i2) throws Throwable {
        int[] iArr;
        if (i2 > 3) {
            throw new xs(4, "No signature found in package of version " + i2 + " or newer for package " + str);
        }
        RandomAccessFile randomAccessFile = null;
        Signature[] signatureArr = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, t.f31269k);
                try {
                    try {
                        a.hp(str, randomAccessFile2, -262969152, 1896449818);
                        try {
                            try {
                                jx.C0255jx c0255jxHp = jx.hp(randomAccessFile2, str);
                                Signature[] signatureArrHp = hp(new Certificate[][]{c0255jxHp.hp});
                                jx.l lVar = c0255jxHp.f20378l;
                                if (lVar != null) {
                                    int size = lVar.hp.size();
                                    Signature[] signatureArr2 = new Signature[size];
                                    iArr = new int[c0255jxHp.f20378l.f20379l.size()];
                                    for (int i3 = 0; i3 < size; i3++) {
                                        signatureArr2[i3] = new Signature(c0255jxHp.f20378l.hp.get(i3).getEncoded());
                                        iArr[i3] = c0255jxHp.f20378l.f20379l.get(i3).intValue();
                                    }
                                    signatureArr = signatureArr2;
                                } else {
                                    iArr = null;
                                }
                                v vVar = new v(signatureArrHp, 3, signatureArr, iArr);
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception unused) {
                                }
                                return vVar;
                            } catch (Exception e2) {
                                throw new xs(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v3", e2);
                            }
                        } catch (k e3) {
                            if (i2 >= 3) {
                                throw new xs(4, "No APK Signature Scheme v3 signature in package ".concat(String.valueOf(str)), e3);
                            }
                            if (i2 > 2) {
                                throw new xs(4, "No signature found in package of version " + i2 + " or newer for package " + str);
                            }
                            try {
                                try {
                                    v vVar2 = new v(hp(l.hp(randomAccessFile2, str)), 2);
                                    try {
                                        randomAccessFile2.close();
                                    } catch (Exception unused2) {
                                    }
                                    return vVar2;
                                } catch (Exception e4) {
                                    throw new xs(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v2", e4);
                                }
                            } catch (k e5) {
                                if (i2 >= 2) {
                                    throw new xs(4, "No APK Signature Scheme v2 signature in package ".concat(String.valueOf(str)), e5);
                                }
                                if (i2 <= 1) {
                                    v vVarHp = hp.hp(str, true);
                                    try {
                                        randomAccessFile2.close();
                                    } catch (Exception unused3) {
                                    }
                                    return vVarHp;
                                }
                                throw new xs(4, "No signature found in package of version " + i2 + " or newer for package " + str);
                            }
                        }
                    } catch (Exception e6) {
                        throw new xs(4, "Failed to collect certificates from " + str + " when findSignatureInfo at once", e6);
                    }
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused5) {
            throw new xs(6, "failed to read apk file, minSignatureSchemeVersion : " + i2 + ", apkPath : " + str);
        }
    }

    public static Signature[] hp(Certificate[][] certificateArr) throws SecurityException, CertificateEncodingException {
        Signature[] signatureArr = new Signature[certificateArr.length];
        for (int i2 = 0; i2 < certificateArr.length; i2++) {
            if (com.byazt.lc.q.jx()) {
                Constructor constructorHp = com.byazt.vw.hp.hp((Class<?>) Signature.class, (Class<?>[]) new Class[]{Certificate[].class});
                if (constructorHp != null) {
                    constructorHp.setAccessible(true);
                }
                if (constructorHp != null && constructorHp.isAccessible()) {
                    try {
                        signatureArr[i2] = (Signature) constructorHp.newInstance(certificateArr[i2]);
                    } catch (IllegalAccessException e2) {
                        com.byazt.ik.a.hp(e2);
                    } catch (InstantiationException e3) {
                        com.byazt.ik.a.hp(e3);
                    } catch (InvocationTargetException e4) {
                        com.byazt.ik.a.hp(e4);
                    }
                }
            } else {
                signatureArr[i2] = new Signature(certificateArr[i2][0].getEncoded());
            }
        }
        return signatureArr;
    }
}
