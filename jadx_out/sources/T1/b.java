package T1;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Security;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CollectionCertStoreParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: g, reason: collision with root package name */
    public static final R1.c f547g = R1.b.a(b.class);

    /* renamed from: h, reason: collision with root package name */
    public static AtomicLong f548h = new AtomicLong();

    /* renamed from: a, reason: collision with root package name */
    public KeyStore f549a;

    /* renamed from: b, reason: collision with root package name */
    public Collection f550b;

    /* renamed from: c, reason: collision with root package name */
    public int f551c = -1;

    /* renamed from: d, reason: collision with root package name */
    public boolean f552d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f553e = false;

    /* renamed from: f, reason: collision with root package name */
    public String f554f;

    public b(KeyStore keyStore, Collection collection) {
        if (keyStore == null) {
            throw new InvalidParameterException("TrustStore must be specified for CertificateValidator.");
        }
        this.f549a = keyStore;
        this.f550b = collection;
    }

    public void a(boolean z2) {
        this.f552d = z2;
    }

    public void b(boolean z2) {
        this.f553e = z2;
    }

    public void c(int i2) {
        this.f551c = i2;
    }

    public void d(String str) {
        this.f554f = str;
    }

    public void e(KeyStore keyStore, Certificate certificate) throws CertPathBuilderException, KeyStoreException, CertPathValidatorException, CertificateException, InvalidAlgorithmParameterException {
        String str;
        if (certificate == null || !(certificate instanceof X509Certificate)) {
            return;
        }
        ((X509Certificate) certificate).checkValidity();
        try {
            if (keyStore == null) {
                throw new InvalidParameterException("Keystore cannot be null");
            }
            String certificateAlias = keyStore.getCertificateAlias((X509Certificate) certificate);
            if (certificateAlias == null) {
                certificateAlias = "JETTY" + String.format("%016X", Long.valueOf(f548h.incrementAndGet()));
                keyStore.setCertificateEntry(certificateAlias, certificate);
            }
            Certificate[] certificateChain = keyStore.getCertificateChain(certificateAlias);
            if (certificateChain == null || certificateChain.length == 0) {
                throw new IllegalStateException("Unable to retrieve certificate chain");
            }
            f(certificateChain);
        } catch (KeyStoreException e2) {
            f547g.a(e2);
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to validate certificate");
            if (0 == 0) {
                str = "";
            } else {
                str = " for alias [" + ((String) null) + "]";
            }
            sb.append(str);
            sb.append(": ");
            sb.append(e2.getMessage());
            throw new CertificateException(sb.toString(), e2);
        }
    }

    public void f(Certificate[] certificateArr) throws CertPathBuilderException, CertPathValidatorException, CertificateException, InvalidAlgorithmParameterException {
        try {
            ArrayList arrayList = new ArrayList();
            for (Certificate certificate : certificateArr) {
                if (certificate != null) {
                    if (!(certificate instanceof X509Certificate)) {
                        throw new IllegalStateException("Invalid certificate type in chain");
                    }
                    arrayList.add((X509Certificate) certificate);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("Invalid certificate chain");
            }
            X509CertSelector x509CertSelector = new X509CertSelector();
            x509CertSelector.setCertificate((X509Certificate) arrayList.get(0));
            PKIXBuilderParameters pKIXBuilderParameters = new PKIXBuilderParameters(this.f549a, x509CertSelector);
            pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(arrayList)));
            pKIXBuilderParameters.setMaxPathLength(this.f551c);
            pKIXBuilderParameters.setRevocationEnabled(true);
            Collection collection = this.f550b;
            if (collection != null && !collection.isEmpty()) {
                pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(this.f550b)));
            }
            if (this.f553e) {
                Security.setProperty("ocsp.enable", "true");
            }
            if (this.f552d) {
                System.setProperty("com.sun.security.enableCRLDP", "true");
            }
            CertPathValidator.getInstance("PKIX").validate(CertPathBuilder.getInstance("PKIX").build(pKIXBuilderParameters).getCertPath(), pKIXBuilderParameters);
        } catch (GeneralSecurityException e2) {
            f547g.a(e2);
            throw new CertificateException("Unable to validate certificate: " + e2.getMessage(), e2);
        }
    }
}
