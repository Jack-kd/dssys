package com.anythink.core.common.n.b.a.g;

import android.os.Build;
import android.util.Log;
import com.anythink.core.common.n.b.aa;
import com.anythink.core.common.n.b.ab;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes2.dex */
class b extends com.anythink.core.common.n.b.a.g.c {

    /* renamed from: c, reason: collision with root package name */
    private static final int f6527c = 4000;

    /* renamed from: d, reason: collision with root package name */
    private final Class<?> f6528d;

    /* renamed from: e, reason: collision with root package name */
    private final Class<?> f6529e;

    /* renamed from: f, reason: collision with root package name */
    private final Method f6530f;

    /* renamed from: g, reason: collision with root package name */
    private final Method f6531g;

    /* renamed from: h, reason: collision with root package name */
    private final Method f6532h;

    /* renamed from: i, reason: collision with root package name */
    private final Method f6533i;

    /* renamed from: j, reason: collision with root package name */
    private final C0068b f6534j = C0068b.a();

    public static final class a extends com.anythink.core.common.n.b.a.j.c {

        /* renamed from: a, reason: collision with root package name */
        private final Object f6535a;

        /* renamed from: b, reason: collision with root package name */
        private final Method f6536b;

        public a(Object obj, Method method) {
            this.f6535a = obj;
            this.f6536b = method;
        }

        @Override // com.anythink.core.common.n.b.a.j.c
        public final List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f6536b.invoke(this.f6535a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
                sSLPeerUnverifiedException.initCause(e3);
                throw sSLPeerUnverifiedException;
            }
        }

        public final boolean equals(Object obj) {
            return obj instanceof a;
        }

        public final int hashCode() {
            return 0;
        }
    }

    public static final class c implements com.anythink.core.common.n.b.a.j.f {

        /* renamed from: a, reason: collision with root package name */
        private final X509TrustManager f6540a;

        /* renamed from: b, reason: collision with root package name */
        private final Method f6541b;

        public c(X509TrustManager x509TrustManager, Method method) {
            this.f6541b = method;
            this.f6540a = x509TrustManager;
        }

        @Override // com.anythink.core.common.n.b.a.j.f
        public final X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f6541b.invoke(this.f6540a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e2) {
                throw new AssertionError("unable to get issues and signature", e2);
            } catch (InvocationTargetException unused) {
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f6540a.equals(cVar.f6540a) && this.f6541b.equals(cVar.f6541b);
        }

        public final int hashCode() {
            return this.f6540a.hashCode() + (this.f6541b.hashCode() * 31);
        }
    }

    public b(Class<?> cls, Class<?> cls2, Method method, Method method2, Method method3, Method method4) {
        this.f6528d = cls;
        this.f6529e = cls2;
        this.f6530f = method;
        this.f6531g = method2;
        this.f6532h = method3;
        this.f6533i = method4;
    }

    public static int d() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (NoClassDefFoundError unused) {
            return 0;
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        try {
            socket.connect(inetSocketAddress, i2);
        } catch (AssertionError e2) {
            if (!com.anythink.core.common.n.b.a.c.a(e2)) {
                throw e2;
            }
            throw new IOException(e2);
        } catch (ClassCastException e3) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e3;
            }
            throw new IOException("Exception in connect", e3);
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final boolean b(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return a(str, cls, cls.getMethod("getInstance", null).invoke(null, null));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.b(str);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new AssertionError("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw new AssertionError("unable to determine cleartext support", e);
        } catch (InvocationTargetException e4) {
            e = e4;
            throw new AssertionError("unable to determine cleartext support", e);
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final SSLContext c() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    /* renamed from: com.anythink.core.common.n.b.a.g.b$b, reason: collision with other inner class name */
    public static final class C0068b {

        /* renamed from: a, reason: collision with root package name */
        private final Method f6537a;

        /* renamed from: b, reason: collision with root package name */
        private final Method f6538b;

        /* renamed from: c, reason: collision with root package name */
        private final Method f6539c;

        private C0068b(Method method, Method method2, Method method3) {
            this.f6537a = method;
            this.f6538b = method2;
            this.f6539c = method3;
        }

        public final Object a(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Method method = this.f6537a;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, null);
                    this.f6538b.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public final boolean a(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (obj == null) {
                return false;
            }
            try {
                this.f6539c.invoke(obj, null);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        public static C0068b a() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", null);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", null);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new C0068b(method3, method2, method);
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", null).invoke(obj, null)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.b(str);
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final X509TrustManager a(SSLSocketFactory sSLSocketFactory) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Object objA = com.anythink.core.common.n.b.a.g.c.a(sSLSocketFactory, this.f6528d, "sslParameters");
        if (objA == null) {
            try {
                objA = com.anythink.core.common.n.b.a.g.c.a(sSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
            } catch (ClassNotFoundException unused) {
                return super.a(sSLSocketFactory);
            }
        }
        X509TrustManager x509TrustManager = (X509TrustManager) com.anythink.core.common.n.b.a.g.c.a(objA, X509TrustManager.class, "x509TrustManager");
        return x509TrustManager != null ? x509TrustManager : (X509TrustManager) com.anythink.core.common.n.b.a.g.c.a(objA, X509TrustManager.class, "trustManager");
    }

    public static com.anythink.core.common.n.b.a.g.c b() {
        if (!com.anythink.core.common.n.b.a.g.c.g()) {
            return null;
        }
        try {
            Class<?> cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            Class<?> cls2 = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
            try {
                return new b(cls, cls2, cls2.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE), cls2.getMethod("setHostname", String.class), cls2.getMethod("getAlpnSelectedProtocol", null), cls2.getMethod("setAlpnProtocols", byte[].class));
            } catch (NoSuchMethodException unused) {
                throw new IllegalStateException("Expected Android API level 21+ but was " + Build.VERSION.SDK_INT);
            }
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public void a(SSLSocket sSLSocket, String str, List<ab> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f6529e.isInstance(sSLSocket)) {
            if (str != null) {
                try {
                    this.f6530f.invoke(sSLSocket, Boolean.TRUE);
                    this.f6531g.invoke(sSLSocket, str);
                } catch (IllegalAccessException e2) {
                    e = e2;
                    throw new AssertionError(e);
                } catch (InvocationTargetException e3) {
                    e = e3;
                    throw new AssertionError(e);
                }
            }
            Method method = this.f6533i;
            com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                ab abVar = list.get(i2);
                if (abVar != ab.HTTP_1_0) {
                    cVar.l(abVar.toString().length());
                    cVar.b(abVar.toString());
                }
            }
            method.invoke(sSLSocket, cVar.y());
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final com.anythink.core.common.n.b.a.j.f b(X509TrustManager x509TrustManager) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new c(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public String a(SSLSocket sSLSocket) {
        if (!this.f6529e.isInstance(sSLSocket)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) this.f6532h.invoke(sSLSocket, null);
            if (bArr != null) {
                return new String(bArr, StandardCharsets.UTF_8);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final void a(int i2, String str, Throwable th) {
        int iMin;
        int i3 = i2 != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int length = str.length();
        int i4 = 0;
        while (i4 < length) {
            int iIndexOf = str.indexOf(10, i4);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i4 + 4000);
                Log.println(i3, aa.f6658a, str.substring(i4, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i4 = iMin;
                }
            }
            i4 = iMin + 1;
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final Object a(String str) {
        return this.f6534j.a(str);
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final void a(String str, Object obj) {
        if (this.f6534j.a(obj)) {
            return;
        }
        a(5, str, (Throwable) null);
    }

    private boolean a(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return b(str, cls, obj);
        }
    }

    @Override // com.anythink.core.common.n.b.a.g.c
    public final com.anythink.core.common.n.b.a.j.c a(X509TrustManager x509TrustManager) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }
}
