package com.byazt.ksw;

import android.net.ssl.SSLSockets;
import android.os.Build;
import android.util.Log;
import com.byazt.cmb.a;
import com.byazt.hq.b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

@com.byazt.kj.hp(hp = {0, 1, 1035, 28})
/* loaded from: classes.dex */
public class hp extends w {

    /* renamed from: a, reason: collision with root package name */
    public final jx f22105a = jx.hp();
    public final Class<?> hp;

    /* renamed from: j, reason: collision with root package name */
    public final j<Socket> f22106j;
    public final j<Socket> jx;

    /* renamed from: l, reason: collision with root package name */
    public final j<Socket> f22107l;

    /* renamed from: w, reason: collision with root package name */
    public final j<Socket> f22108w;

    @com.byazt.kj.hp(hp = {0, 1, 1035, 170})
    /* renamed from: com.byazt.ksw.hp$hp, reason: collision with other inner class name */
    public static final class C0297hp extends com.byazt.cmb.jx {
        public final Object hp;

        /* renamed from: l, reason: collision with root package name */
        public final Method f22109l;

        public C0297hp(Object obj, Method method) {
            this.hp = obj;
            this.f22109l = method;
        }

        public boolean equals(Object obj) {
            return obj instanceof C0297hp;
        }

        public int hashCode() {
            return 0;
        }

        @Override // com.byazt.cmb.jx
        public List<Certificate> hp(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f22109l.invoke(this.hp, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (InvocationTargetException e3) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
                sSLPeerUnverifiedException.initCause(e3);
                throw sSLPeerUnverifiedException;
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1035, 255})
    public static final class l implements a {
        public final X509TrustManager hp;

        /* renamed from: l, reason: collision with root package name */
        public final Method f22111l;

        public l(X509TrustManager x509TrustManager, Method method) {
            this.f22111l = method;
            this.hp = x509TrustManager;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return this.hp.equals(lVar.hp) && this.f22111l.equals(lVar.f22111l);
        }

        public int hashCode() {
            return this.hp.hashCode() + (this.f22111l.hashCode() * 31);
        }

        @Override // com.byazt.cmb.a
        public X509Certificate hp(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f22111l.invoke(this.hp, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e2) {
                throw com.byazt.ru.jx.hp("unable to get issues and signature", (Exception) e2);
            } catch (InvocationTargetException unused) {
            }
            return null;
        }
    }

    public hp(Class<?> cls, j<Socket> jVar, j<Socket> jVar2, j<Socket> jVar3, j<Socket> jVar4) {
        this.hp = cls;
        this.f22107l = jVar;
        this.jx = jVar2;
        this.f22106j = jVar3;
        this.f22108w = jVar4;
    }

    private static boolean j() throws ClassNotFoundException {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // com.byazt.ksw.w
    public void hp(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        try {
            socket.connect(inetSocketAddress, i2);
        } catch (AssertionError e2) {
            if (!com.byazt.ru.jx.hp(e2)) {
                throw e2;
            }
            throw new IOException(e2);
        } catch (ClassCastException e3) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e3;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e3);
            throw iOException;
        } catch (SecurityException e4) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e4);
            throw iOException2;
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.ksw.w
    public boolean l(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return hp(str, cls, cls.getMethod("getInstance", null).invoke(null, null));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.l(str);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw com.byazt.ru.jx.hp("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw com.byazt.ru.jx.hp("unable to determine cleartext support", e);
        } catch (NoClassDefFoundError unused2) {
            return false;
        } catch (InvocationTargetException e4) {
            e = e4;
            throw com.byazt.ru.jx.hp("unable to determine cleartext support", e);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1035, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK})
    public static final class jx {
        public final Method hp;
        public final Method jx;

        /* renamed from: l, reason: collision with root package name */
        public final Method f22110l;

        public jx(Method method, Method method2, Method method3) {
            this.hp = method;
            this.f22110l = method2;
            this.jx = method3;
        }

        public Object hp(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            Method method = this.hp;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, null);
                    this.f22110l.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public boolean hp(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (obj == null) {
                return false;
            }
            try {
                this.jx.invoke(obj, null);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        public static jx hp() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
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
            return new jx(method3, method2, method);
        }
    }

    private boolean l(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", null).invoke(obj, null)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.l(str);
        }
    }

    @Override // com.byazt.ksw.w
    public a l(X509TrustManager x509TrustManager) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new l(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.l(x509TrustManager);
        }
    }

    @Override // com.byazt.ksw.w
    public void hp(SSLSocket sSLSocket, String str, List<b> list) {
        if (str != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    SSLSockets.setUseSessionTickets(sSLSocket, true);
                    SNIHostName sNIHostName = new SNIHostName(str);
                    SSLParameters sSLParameters = sSLSocket.getSSLParameters();
                    sSLParameters.setServerNames(Collections.singletonList(sNIHostName));
                    sSLSocket.setSSLParameters(sSLParameters);
                } catch (Throwable unused) {
                }
            } else {
                this.f22107l.l(sSLSocket, Boolean.TRUE);
                this.jx.l(sSLSocket, str);
            }
        }
        j<Socket> jVar = this.f22108w;
        if (jVar == null || !jVar.hp((j<Socket>) sSLSocket)) {
            return;
        }
        this.f22108w.j(sSLSocket, w.l(list));
    }

    @Override // com.byazt.ksw.w
    public String hp(SSLSocket sSLSocket) {
        byte[] bArr;
        j<Socket> jVar = this.f22106j;
        if (jVar == null || !jVar.hp((j<Socket>) sSLSocket) || (bArr = (byte[]) this.f22106j.j(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, com.byazt.ru.jx.f25382w);
    }

    @Override // com.byazt.ksw.w
    public void hp(int i2, String str, Throwable th) {
        int iMin;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            int iIndexOf = str.indexOf(10, i3);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i3 + TTAdConstant.INIT_LOCAL_FAIL_CODE);
                str.substring(i3, iMin);
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i3 = iMin;
                }
            }
            i3 = iMin + 1;
        }
    }

    @Override // com.byazt.ksw.w
    public Object hp(String str) {
        return this.f22105a.hp(str);
    }

    @Override // com.byazt.ksw.w
    public void hp(String str, Object obj) {
        if (this.f22105a.hp(obj)) {
            return;
        }
        hp(5, str, (Throwable) null);
    }

    private boolean hp(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return l(str, cls, obj);
        }
    }

    @Override // com.byazt.ksw.w
    public com.byazt.cmb.jx hp(X509TrustManager x509TrustManager) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0297hp(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.hp(x509TrustManager);
        }
    }

    public static w hp() {
        Class<?> cls;
        j jVar;
        j jVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            j jVar3 = new j(null, "setUseSessionTickets", Boolean.TYPE);
            j jVar4 = new j(null, "setHostname", String.class);
            if (j()) {
                jVar = new j(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                jVar2 = new j(null, "setAlpnProtocols", byte[].class);
            } else {
                jVar = null;
                jVar2 = null;
            }
            return new hp(cls2, jVar3, jVar4, jVar, jVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }
}
