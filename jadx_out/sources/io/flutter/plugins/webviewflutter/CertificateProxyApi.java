package io.flutter.plugins.webviewflutter;

import androidx.annotation.NonNull;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;

/* loaded from: classes5.dex */
class CertificateProxyApi extends PigeonApiCertificate {
    public CertificateProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiCertificate
    @NonNull
    public byte[] getEncoded(@NonNull Certificate certificate) {
        try {
            return certificate.getEncoded();
        } catch (CertificateEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }
}
