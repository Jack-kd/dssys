package T1;

import S1.e;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;
import java.util.Collection;

/* loaded from: classes5.dex */
public abstract class a {
    public static KeyStore a(InputStream inputStream, String str, String str2, String str3, String str4) throws IOException {
        char[] charArray = null;
        if (inputStream == null && str == null) {
            return null;
        }
        if (inputStream == null) {
            try {
                inputStream = e.e(str).c();
            } catch (Throwable th) {
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        }
        KeyStore keyStore = str3 != null ? KeyStore.getInstance(str2, str3) : KeyStore.getInstance(str2);
        if (str4 != null) {
            charArray = str4.toCharArray();
        }
        keyStore.load(inputStream, charArray);
        if (inputStream != null) {
            inputStream.close();
        }
        return keyStore;
    }

    public static Collection b(String str) throws IOException {
        InputStream inputStreamC = null;
        if (str == null) {
            return null;
        }
        try {
            inputStreamC = e.e(str).c();
            return CertificateFactory.getInstance("X.509").generateCRLs(inputStreamC);
        } finally {
            if (inputStreamC != null) {
                inputStreamC.close();
            }
        }
    }
}
