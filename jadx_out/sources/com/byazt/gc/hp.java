package com.byazt.gc;

import android.content.pm.Signature;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.concurrent.atomic.AtomicReference;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

@com.byazt.kj.hp(hp = {0, 1, 524, 28})
/* loaded from: classes2.dex */
public class hp {
    public static final AtomicReference<byte[]> hp = new AtomicReference<>();

    public static v hp(String str, boolean z2) throws Throwable {
        GeneralSecurityException generalSecurityException;
        Throwable th;
        Throwable th2;
        JarFile jarFile;
        JarFile jarFile2 = null;
        try {
            try {
                jarFile = new JarFile(str);
            } catch (Throwable th3) {
                th2 = th3;
            }
        } catch (IOException e2) {
            e = e2;
            th = e;
            throw new xs(4, "Failed to collect certificates from ".concat(String.valueOf(str)), th);
        } catch (RuntimeException e3) {
            e = e3;
            th = e;
            throw new xs(4, "Failed to collect certificates from ".concat(String.valueOf(str)), th);
        } catch (GeneralSecurityException e4) {
            generalSecurityException = e4;
        }
        try {
            ArrayList arrayList = new ArrayList();
            JarEntry jarEntry = jarFile.getJarEntry("AndroidManifest.xml");
            if (jarEntry == null) {
                throw new xs(1, "Package " + str + " has no manifest");
            }
            Certificate[][] certificateArrHp = hp(jarFile, jarEntry);
            if (com.byazt.lc.j.hp(certificateArrHp)) {
                throw new xs(4, "Package " + str + " has no certificates at entry AndroidManifest.xml");
            }
            Signature[] signatureArrHp = j.hp(certificateArrHp);
            if (z2) {
                Enumeration<JarEntry> enumerationEntries = jarFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                    if (!jarEntryNextElement.isDirectory()) {
                        String name = jarEntryNextElement.getName();
                        if (!name.startsWith("META-INF/") && !name.equals("AndroidManifest.xml")) {
                            arrayList.add(jarEntryNextElement);
                        }
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    JarEntry jarEntry2 = (JarEntry) obj;
                    Certificate[][] certificateArrHp2 = hp(jarFile, jarEntry2);
                    if (com.byazt.lc.j.hp(certificateArrHp2)) {
                        throw new xs(4, "Package " + str + " has no certificates at entry " + jarEntry2.getName());
                    }
                    if (!v.hp(signatureArrHp, j.hp(certificateArrHp2))) {
                        throw new xs(3, "Package " + str + " has mismatched certificates at entry " + jarEntry2.getName());
                    }
                }
            }
            v vVar = new v(signatureArrHp, 1, null, null, null);
            try {
                jarFile.close();
            } catch (Exception unused) {
            }
            return vVar;
        } catch (IOException e5) {
            e = e5;
            th = e;
            throw new xs(4, "Failed to collect certificates from ".concat(String.valueOf(str)), th);
        } catch (RuntimeException e6) {
            e = e6;
            th = e;
            throw new xs(4, "Failed to collect certificates from ".concat(String.valueOf(str)), th);
        } catch (GeneralSecurityException e7) {
            generalSecurityException = e7;
            throw new xs(2, "Failed to collect certificates from ".concat(String.valueOf(str)), generalSecurityException);
        } catch (Throwable th4) {
            th2 = th4;
            jarFile2 = jarFile;
            if (jarFile2 == null) {
                throw th2;
            }
            try {
                jarFile2.close();
                throw th2;
            } catch (Exception unused2) {
                throw th2;
            }
        }
    }

    private static Certificate[][] hp(JarFile jarFile, JarEntry jarEntry) throws xs, IOException {
        InputStream inputStream = null;
        try {
            try {
                InputStream inputStream2 = jarFile.getInputStream(jarEntry);
                hp(inputStream2);
                Certificate[][] certificateArr = {jarEntry.getCertificates()};
                if (inputStream2 == null) {
                    return certificateArr;
                }
                try {
                    inputStream2.close();
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused) {
                }
                return certificateArr;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (RuntimeException e3) {
                        throw e3;
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException | RuntimeException e4) {
            throw new xs(5, "Failed reading " + jarEntry.getName() + " in " + jarFile, e4);
        }
    }

    private static void hp(InputStream inputStream) throws IOException {
        byte[] andSet = hp.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        while (inputStream.read(andSet, 0, andSet.length) != -1) {
        }
        hp.set(andSet);
    }
}
