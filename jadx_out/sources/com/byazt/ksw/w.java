package com.byazt.ksw;

import com.byazt.cmb.a;
import com.byazt.hq.b;
import com.byazt.hq.cx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

@com.byazt.kj.hp(hp = {0, 1, 1035, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {
    public static final w hp = hp();

    /* renamed from: l, reason: collision with root package name */
    public static final Logger f22118l = Logger.getLogger(cx.class.getName());

    public String hp(SSLSocket sSLSocket) {
        return null;
    }

    public String jx() {
        return "OkHttp";
    }

    public void l(SSLSocket sSLSocket) {
    }

    public void hp(SSLSocket sSLSocket, String str, List<b> list) {
    }

    public boolean l(String str) {
        return true;
    }

    public static w l() {
        return hp;
    }

    public void hp(Socket socket, InetSocketAddress inetSocketAddress, int i2) throws IOException {
        socket.connect(inetSocketAddress, i2);
    }

    public static byte[] l(List<b> list) {
        com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = list.get(i2);
            if (bVar != b.HTTP_1_0) {
                jxVar.q(bVar.toString().length());
                jxVar.l(bVar.toString());
            }
        }
        try {
            return jxVar.xs();
        } catch (IOException unused) {
            return null;
        }
    }

    public void hp(int i2, String str, Throwable th) {
        f22118l.log(i2 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public Object hp(String str) {
        if (f22118l.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public void hp(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        hp(5, str, (Throwable) obj);
    }

    public static List<String> hp(List<b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = list.get(i2);
            if (bVar != b.HTTP_1_0) {
                arrayList.add(bVar.toString());
            }
        }
        return arrayList;
    }

    public a l(X509TrustManager x509TrustManager) {
        return new com.byazt.cmb.l(x509TrustManager.getAcceptedIssuers());
    }

    public com.byazt.cmb.jx hp(X509TrustManager x509TrustManager) {
        return new com.byazt.cmb.hp(l(x509TrustManager));
    }

    private static w hp() {
        w wVarHp = hp.hp();
        if (wVarHp != null) {
            return wVarHp;
        }
        l lVarHp = l.hp();
        if (lVarHp != null) {
            return lVarHp;
        }
        w wVarHp2 = jx.hp();
        return wVarHp2 != null ? wVarHp2 : new w();
    }
}
