package U1;

import R1.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertStore;
import java.security.cert.Certificate;
import java.security.cert.CollectionCertStoreParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.CertPathTrustManagerParameters;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import org.eclipse.jetty.util.i;
import org.eclipse.jetty.util.security.Password;

/* loaded from: classes5.dex */
public class b extends org.eclipse.jetty.util.component.a {

    /* renamed from: L, reason: collision with root package name */
    public static final TrustManager[] f578L = {new a()};

    /* renamed from: M, reason: collision with root package name */
    public static final c f579M = R1.b.a(b.class);

    /* renamed from: N, reason: collision with root package name */
    public static final String f580N;

    /* renamed from: O, reason: collision with root package name */
    public static final String f581O;

    /* renamed from: P, reason: collision with root package name */
    public static final String f582P;

    /* renamed from: A, reason: collision with root package name */
    public boolean f583A;

    /* renamed from: C, reason: collision with root package name */
    public String f585C;

    /* renamed from: F, reason: collision with root package name */
    public String f588F;

    /* renamed from: G, reason: collision with root package name */
    public KeyStore f589G;

    /* renamed from: H, reason: collision with root package name */
    public KeyStore f590H;

    /* renamed from: J, reason: collision with root package name */
    public SSLContext f592J;

    /* renamed from: f, reason: collision with root package name */
    public String f598f;

    /* renamed from: g, reason: collision with root package name */
    public String f599g;

    /* renamed from: i, reason: collision with root package name */
    public InputStream f601i;

    /* renamed from: j, reason: collision with root package name */
    public String f602j;

    /* renamed from: k, reason: collision with root package name */
    public String f603k;

    /* renamed from: l, reason: collision with root package name */
    public String f604l;

    /* renamed from: n, reason: collision with root package name */
    public InputStream f606n;

    /* renamed from: r, reason: collision with root package name */
    public transient Password f610r;

    /* renamed from: s, reason: collision with root package name */
    public transient Password f611s;

    /* renamed from: t, reason: collision with root package name */
    public transient Password f612t;

    /* renamed from: u, reason: collision with root package name */
    public String f613u;

    /* renamed from: w, reason: collision with root package name */
    public String f615w;

    /* renamed from: z, reason: collision with root package name */
    public boolean f618z;

    /* renamed from: b, reason: collision with root package name */
    public final Set f594b = new LinkedHashSet();

    /* renamed from: c, reason: collision with root package name */
    public Set f595c = new LinkedHashSet();

    /* renamed from: d, reason: collision with root package name */
    public final Set f596d = new LinkedHashSet();

    /* renamed from: e, reason: collision with root package name */
    public Set f597e = new LinkedHashSet();

    /* renamed from: h, reason: collision with root package name */
    public String f600h = "JKS";

    /* renamed from: m, reason: collision with root package name */
    public String f605m = "JKS";

    /* renamed from: o, reason: collision with root package name */
    public boolean f607o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f608p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f609q = true;

    /* renamed from: v, reason: collision with root package name */
    public String f614v = "TLS";

    /* renamed from: x, reason: collision with root package name */
    public String f616x = f580N;

    /* renamed from: y, reason: collision with root package name */
    public String f617y = f581O;

    /* renamed from: B, reason: collision with root package name */
    public int f584B = -1;

    /* renamed from: D, reason: collision with root package name */
    public boolean f586D = false;

    /* renamed from: E, reason: collision with root package name */
    public boolean f587E = false;

    /* renamed from: I, reason: collision with root package name */
    public boolean f591I = true;

    /* renamed from: K, reason: collision with root package name */
    public boolean f593K = true;

    static {
        f580N = Security.getProperty("ssl.KeyManagerFactory.algorithm") == null ? "SunX509" : Security.getProperty("ssl.KeyManagerFactory.algorithm");
        f581O = Security.getProperty("ssl.TrustManagerFactory.algorithm") != null ? Security.getProperty("ssl.TrustManagerFactory.algorithm") : "SunX509";
        f582P = System.getProperty("user.home") + File.separator + ".keystore";
    }

    public void P() throws IOException {
        if (this.f592J != null) {
            return;
        }
        KeyStore keyStore = this.f589G;
        if (keyStore == null && this.f601i == null && this.f598f == null) {
            throw new IllegalStateException("SSL doesn't have a valid keystore");
        }
        if (this.f590H == null && this.f606n == null && this.f603k == null) {
            this.f590H = keyStore;
            this.f603k = this.f598f;
            this.f606n = this.f601i;
            this.f605m = this.f600h;
            this.f604l = this.f599g;
            this.f612t = this.f610r;
            this.f617y = this.f616x;
        }
        InputStream inputStream = this.f601i;
        if (inputStream == null || inputStream != this.f606n) {
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            i.c(this.f601i, byteArrayOutputStream);
            this.f601i.close();
            this.f601i = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            this.f606n = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        } catch (Exception e2) {
            throw new IllegalStateException(e2);
        }
    }

    public void Q(SSLEngine sSLEngine) {
        if (V()) {
            sSLEngine.setWantClientAuth(V());
        }
        if (T()) {
            sSLEngine.setNeedClientAuth(T());
        }
        sSLEngine.setEnabledCipherSuites(d0(sSLEngine.getEnabledCipherSuites(), sSLEngine.getSupportedCipherSuites()));
        sSLEngine.setEnabledProtocols(e0(sSLEngine.getEnabledProtocols(), sSLEngine.getSupportedProtocols()));
    }

    public KeyManager[] R(KeyStore keyStore) throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyStoreException {
        if (keyStore == null) {
            return null;
        }
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(this.f616x);
        Password password = this.f611s;
        keyManagerFactory.init(keyStore, (password == null && (password = this.f610r) == null) ? null : password.toString().toCharArray());
        KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
        if (this.f602j != null) {
            for (int i2 = 0; i2 < keyManagers.length; i2++) {
                if (keyManagers[i2] instanceof X509KeyManager) {
                    keyManagers[i2] = new U1.a(this.f602j, (X509KeyManager) keyManagers[i2]);
                }
            }
        }
        return keyManagers;
    }

    public KeyStore S(InputStream inputStream, String str, String str2, String str3, String str4) {
        return T1.a.a(inputStream, str, str2, str3, str4);
    }

    public boolean T() {
        return this.f607o;
    }

    public TrustManager[] U(KeyStore keyStore, Collection collection) throws NoSuchAlgorithmException, KeyStoreException, InvalidAlgorithmParameterException {
        if (keyStore == null) {
            return null;
        }
        if (!this.f583A || !this.f617y.equalsIgnoreCase("PKIX")) {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(this.f617y);
            trustManagerFactory.init(keyStore);
            return trustManagerFactory.getTrustManagers();
        }
        PKIXBuilderParameters pKIXBuilderParameters = new PKIXBuilderParameters(keyStore, new X509CertSelector());
        pKIXBuilderParameters.setMaxPathLength(this.f584B);
        pKIXBuilderParameters.setRevocationEnabled(true);
        if (collection != null && !collection.isEmpty()) {
            pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(collection)));
        }
        if (this.f586D) {
            System.setProperty("com.sun.security.enableCRLDP", "true");
        }
        if (this.f587E) {
            Security.setProperty("ocsp.enable", "true");
            String str = this.f588F;
            if (str != null) {
                Security.setProperty("ocsp.responderURL", str);
            }
        }
        TrustManagerFactory trustManagerFactory2 = TrustManagerFactory.getInstance(this.f617y);
        trustManagerFactory2.init(new CertPathTrustManagerParameters(pKIXBuilderParameters));
        return trustManagerFactory2.getTrustManagers();
    }

    public boolean V() {
        return this.f608p;
    }

    public boolean W() {
        return this.f591I;
    }

    public Collection X(String str) {
        return T1.a.b(str);
    }

    public KeyStore Y() {
        KeyStore keyStore = this.f589G;
        if (keyStore != null) {
            return keyStore;
        }
        InputStream inputStream = this.f601i;
        String str = this.f598f;
        String str2 = this.f600h;
        String str3 = this.f599g;
        Password password = this.f610r;
        return S(inputStream, str, str2, str3, password == null ? null : password.toString());
    }

    public KeyStore Z() {
        KeyStore keyStore = this.f590H;
        if (keyStore != null) {
            return keyStore;
        }
        InputStream inputStream = this.f606n;
        String str = this.f603k;
        String str2 = this.f605m;
        String str3 = this.f604l;
        Password password = this.f612t;
        return S(inputStream, str, str2, str3, password == null ? null : password.toString());
    }

    public SSLEngine a0() {
        SSLEngine sSLEngineCreateSSLEngine = this.f592J.createSSLEngine();
        Q(sSLEngineCreateSSLEngine);
        return sSLEngineCreateSSLEngine;
    }

    public SSLEngine b0(String str, int i2) {
        SSLEngine sSLEngineCreateSSLEngine = W() ? this.f592J.createSSLEngine(str, i2) : this.f592J.createSSLEngine();
        Q(sSLEngineCreateSSLEngine);
        return sSLEngineCreateSSLEngine;
    }

    public SSLSocket c0() {
        SSLSocket sSLSocket = (SSLSocket) this.f592J.getSocketFactory().createSocket();
        if (V()) {
            sSLSocket.setWantClientAuth(V());
        }
        if (T()) {
            sSLSocket.setNeedClientAuth(T());
        }
        sSLSocket.setEnabledCipherSuites(d0(sSLSocket.getEnabledCipherSuites(), sSLSocket.getSupportedCipherSuites()));
        sSLSocket.setEnabledProtocols(e0(sSLSocket.getEnabledProtocols(), sSLSocket.getSupportedProtocols()));
        return sSLSocket;
    }

    public String[] d0(String[] strArr, String[] strArr2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (this.f597e.isEmpty()) {
            linkedHashSet.addAll(Arrays.asList(strArr));
        } else {
            for (String str : this.f597e) {
                if (Arrays.asList(strArr2).contains(str)) {
                    linkedHashSet.add(str);
                }
            }
        }
        Set set = this.f596d;
        if (set != null) {
            linkedHashSet.removeAll(set);
        }
        return (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        String str;
        TrustManager[] trustManagerArr;
        if (this.f592J == null) {
            if (this.f589G == null && this.f601i == null && this.f598f == null && this.f590H == null && this.f606n == null && this.f603k == null) {
                if (this.f593K) {
                    f579M.i("No keystore or trust store configured.  ACCEPTING UNTRUSTED CERTIFICATES!!!!!", new Object[0]);
                    trustManagerArr = f578L;
                } else {
                    trustManagerArr = null;
                }
                String str2 = this.f615w;
                SecureRandom secureRandom = str2 == null ? null : SecureRandom.getInstance(str2);
                String str3 = this.f613u;
                SSLContext sSLContext = str3 == null ? SSLContext.getInstance(this.f614v) : SSLContext.getInstance(this.f614v, str3);
                this.f592J = sSLContext;
                sSLContext.init(null, trustManagerArr, secureRandom);
                return;
            }
            P();
            KeyStore keyStoreY = Y();
            KeyStore keyStoreZ = Z();
            Collection collectionX = X(this.f585C);
            if (this.f618z && keyStoreY != null) {
                if (this.f602j == null) {
                    ArrayList list = Collections.list(keyStoreY.aliases());
                    this.f602j = list.size() == 1 ? (String) list.get(0) : null;
                }
                String str4 = this.f602j;
                Certificate certificate = str4 == null ? null : keyStoreY.getCertificate(str4);
                if (certificate == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("No certificate found in the keystore");
                    if (this.f602j == null) {
                        str = "";
                    } else {
                        str = " for alias " + this.f602j;
                    }
                    sb.append(str);
                    throw new Exception(sb.toString());
                }
                T1.b bVar = new T1.b(keyStoreZ, collectionX);
                bVar.c(this.f584B);
                bVar.a(this.f586D);
                bVar.b(this.f587E);
                bVar.d(this.f588F);
                bVar.e(keyStoreY, certificate);
            }
            KeyManager[] keyManagerArrR = R(keyStoreY);
            TrustManager[] trustManagerArrU = U(keyStoreZ, collectionX);
            String str5 = this.f615w;
            SecureRandom secureRandom2 = str5 != null ? SecureRandom.getInstance(str5) : null;
            String str6 = this.f613u;
            SSLContext sSLContext2 = str6 == null ? SSLContext.getInstance(this.f614v) : SSLContext.getInstance(this.f614v, str6);
            this.f592J = sSLContext2;
            sSLContext2.init(keyManagerArrR, trustManagerArrU, secureRandom2);
            SSLEngine sSLEngineA0 = a0();
            c cVar = f579M;
            cVar.k("Enabled Protocols {} of {}", Arrays.asList(sSLEngineA0.getEnabledProtocols()), Arrays.asList(sSLEngineA0.getSupportedProtocols()));
            if (cVar.f()) {
                cVar.i("Enabled Ciphers   {} of {}", Arrays.asList(sSLEngineA0.getEnabledCipherSuites()), Arrays.asList(sSLEngineA0.getSupportedCipherSuites()));
            }
        }
    }

    public String[] e0(String[] strArr, String[] strArr2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (this.f595c.isEmpty()) {
            linkedHashSet.addAll(Arrays.asList(strArr));
        } else {
            for (String str : this.f595c) {
                if (Arrays.asList(strArr2).contains(str)) {
                    linkedHashSet.add(str);
                }
            }
        }
        Set set = this.f594b;
        if (set != null) {
            linkedHashSet.removeAll(set);
        }
        return (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    public String toString() {
        return String.format("%s@%x(%s,%s)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this.f598f, this.f603k);
    }

    public static class a implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }
    }
}
