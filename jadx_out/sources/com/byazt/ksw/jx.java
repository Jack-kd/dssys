package com.byazt.ksw;

import com.byazt.hq.b;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

@com.byazt.kj.hp(hp = {0, 1, 1035, 30})
/* loaded from: classes.dex */
public class jx extends w {
    public final Method hp;

    /* renamed from: j, reason: collision with root package name */
    public final Class<?> f22113j;
    public final Method jx;

    /* renamed from: l, reason: collision with root package name */
    public final Method f22114l;

    /* renamed from: w, reason: collision with root package name */
    public final Class<?> f22115w;

    @com.byazt.kj.hp(hp = {0, 1, 1035, 219})
    public static class hp implements InvocationHandler {
        public boolean hp;
        public final List<String> jx;

        /* renamed from: l, reason: collision with root package name */
        public String f22116l;

        public hp(List<String> list) {
            this.jx = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = com.byazt.ru.jx.f25377l;
            }
            if ("supports".equals(name) && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if ("unsupported".equals(name) && Void.TYPE == returnType) {
                this.hp = true;
                return null;
            }
            if ("protocols".equals(name) && objArr.length == 0) {
                return this.jx;
            }
            if (!"selectProtocol".equals(name) && (!"select".equals(name) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List))) {
                if (!"protocolSelected".equals(name) && (!"selected".equals(name) || objArr.length != 1)) {
                    return method.invoke(this, objArr);
                }
                this.f22116l = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.jx.contains(list.get(i2))) {
                    String str = (String) list.get(i2);
                    this.f22116l = str;
                    return str;
                }
            }
            String str2 = this.jx.get(0);
            this.f22116l = str2;
            return str2;
        }
    }

    public jx(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.hp = method;
        this.f22114l = method2;
        this.jx = method3;
        this.f22113j = cls;
        this.f22115w = cls2;
    }

    @Override // com.byazt.ksw.w
    public void hp(SSLSocket sSLSocket, String str, List<b> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.hp.invoke(null, sSLSocket, Proxy.newProxyInstance(w.class.getClassLoader(), new Class[]{this.f22113j, this.f22115w}, new hp(w.hp(list))));
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.byazt.ru.jx.hp("unable to set alpn", (Exception) e2);
        }
    }

    @Override // com.byazt.ksw.w
    public void l(SSLSocket sSLSocket) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.jx.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.byazt.ru.jx.hp("unable to remove alpn", (Exception) e2);
        }
    }

    @Override // com.byazt.ksw.w
    public String hp(SSLSocket sSLSocket) {
        try {
            hp hpVar = (hp) Proxy.getInvocationHandler(this.f22114l.invoke(null, sSLSocket));
            boolean z2 = hpVar.hp;
            if (!z2 && hpVar.f22116l == null) {
                w.l().hp(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (z2) {
                return null;
            }
            return hpVar.f22116l;
        } catch (IllegalAccessException e2) {
            e = e2;
            throw com.byazt.ru.jx.hp("unable to get selected protocol", e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw com.byazt.ru.jx.hp("unable to get selected protocol", e);
        }
    }

    public static w hp() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new jx(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }
}
