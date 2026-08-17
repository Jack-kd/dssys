package com.byazt.ksw;

import com.byazt.hq.b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

@com.byazt.kj.hp(hp = {0, 1, 1035, 34})
/* loaded from: classes.dex */
public final class l extends w {
    public final Method hp;

    /* renamed from: l, reason: collision with root package name */
    public final Method f22117l;

    public l(Method method, Method method2) {
        this.hp = method;
        this.f22117l = method2;
    }

    @Override // com.byazt.ksw.w
    public void hp(SSLSocket sSLSocket, String str, List<b> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listHp = w.hp(list);
            this.hp.invoke(sSLParameters, listHp.toArray(new String[listHp.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.byazt.ru.jx.hp("unable to set ssl parameters", (Exception) e2);
        }
    }

    @Override // com.byazt.ksw.w
    public String hp(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f22117l.invoke(sSLSocket, null);
            if (str != null) {
                if (!str.isEmpty()) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw com.byazt.ru.jx.hp("unable to get selected protocols", (Exception) e2);
        }
    }

    public static l hp() {
        try {
            return new l(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", null));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }
}
