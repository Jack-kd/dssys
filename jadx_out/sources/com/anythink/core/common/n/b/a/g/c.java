package com.anythink.core.common.n.b.a.g;

import com.anythink.core.common.n.b.aa;
import com.anythink.core.common.n.b.ab;
import com.anythink.core.common.n.b.z;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f6542a = 4;

    /* renamed from: b, reason: collision with root package name */
    public static final int f6543b = 5;

    /* renamed from: c, reason: collision with root package name */
    private static final c f6544c;

    /* renamed from: d, reason: collision with root package name */
    private static final Logger f6545d;

    static {
        c cVarA = a.a();
        if (cVarA == null && (cVarA = b.b()) == null) {
            throw new NullPointerException("No platform found on Android");
        }
        f6544c = cVarA;
        f6545d = Logger.getLogger(z.class.getName());
    }

    private static c d() {
        c cVarA = a.a();
        if (cVarA != null) {
            return cVarA;
        }
        c cVarB = b.b();
        if (cVarB != null) {
            return cVarB;
        }
        throw new NullPointerException("No platform found on Android");
    }

    public static c e() {
        return f6544c;
    }

    public static String f() {
        return aa.f6658a;
    }

    public static boolean g() {
        return "Dalvik".equals(System.getProperty("java.vm.name"));
    }

    private static c h() {
        c cVarA = a.a();
        if (cVarA != null) {
            return cVarA;
        }
        c cVarB = b.b();
        if (cVarB != null) {
            return cVarB;
        }
        throw new NullPointerException("No platform found on Android");
    }

    private static void i() {
    }

    public String a(SSLSocket sSLSocket) {
        return null;
    }

    public boolean b(String str) {
        return true;
    }

    public SSLContext c() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    private static void a() {
    }

    public final com.anythink.core.common.n.b.a.j.c b(SSLSocketFactory sSLSocketFactory) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        X509TrustManager x509TrustManagerA = a(sSLSocketFactory);
        if (x509TrustManagerA != null) {
            return a(x509TrustManagerA);
        }
        throw new IllegalStateException("Unable to extract the trust manager on " + f6544c + ", sslSocketFactory is " + sSLSocketFactory.getClass());
    }

    public void a(SSLSocket sSLSocket, String str, List<ab> list) {
    }

    public X509TrustManager a(SSLSocketFactory sSLSocketFactory) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        try {
            Object objA = a(sSLSocketFactory, Class.forName("sun.security.ssl.SSLContextImpl"), com.umeng.analytics.pro.g.f49337X);
            if (objA == null) {
                return null;
            }
            return (X509TrustManager) a(objA, X509TrustManager.class, "trustManager");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        socket.connect(inetSocketAddress, i2);
    }

    private static boolean b() {
        if ("conscrypt".equals(com.anythink.core.common.n.b.a.c.a("okhttp.platform", (String) null))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    public void a(int i2, String str, Throwable th) {
        f6545d.log(i2 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public Object a(String str) {
        if (f6545d.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    private static byte[] b(List<ab> list) {
        com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ab abVar = list.get(i2);
            if (abVar != ab.HTTP_1_0) {
                cVar.l(abVar.toString().length());
                cVar.b(abVar.toString());
            }
        }
        return cVar.y();
    }

    public void a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str, (Throwable) obj);
    }

    private static List<String> a(List<ab> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ab abVar = list.get(i2);
            if (abVar != ab.HTTP_1_0) {
                arrayList.add(abVar.toString());
            }
        }
        return arrayList;
    }

    public com.anythink.core.common.n.b.a.j.f b(X509TrustManager x509TrustManager) {
        return new com.anythink.core.common.n.b.a.j.b(x509TrustManager.getAcceptedIssuers());
    }

    public com.anythink.core.common.n.b.a.j.c a(X509TrustManager x509TrustManager) {
        return new com.anythink.core.common.n.b.a.j.a(b(x509TrustManager));
    }

    public static <T> T a(Object obj, Class<T> cls, String str) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        do {
            for (Class<?> superclass = obj.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
                try {
                    Field declaredField = superclass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    Object obj2 = declaredField.get(obj);
                    if (cls.isInstance(obj2)) {
                        return cls.cast(obj2);
                    }
                    return null;
                } catch (IllegalAccessException unused) {
                    throw new AssertionError();
                } catch (NoSuchFieldException unused2) {
                }
            }
            if (str.equals("delegate")) {
                break;
            }
            obj = a(obj, (Class<Object>) Object.class, "delegate");
        } while (obj != null);
        return null;
    }
}
