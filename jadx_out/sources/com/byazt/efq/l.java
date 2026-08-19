package com.byazt.efq;

import androidx.core.app.NotificationCompat;
import com.byazt.pg.k;
import com.byazt.uhg.zy;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1388, 34})
/* loaded from: classes2.dex */
public class l implements hp {
    private String l(com.byazt.uhg.l lVar) throws NullPointerException {
        return lVar.hp().l().toString();
    }

    @Override // com.byazt.efq.hp
    public void hp(com.byazt.uhg.l lVar, InetSocketAddress inetSocketAddress, Proxy proxy, zy zyVar, IOException iOException) {
        try {
            ((k) com.byazt.ym.j.getService(NotificationCompat.CATEGORY_EVENT)).onExceptionEvent("okhttp_connectFailed", hp(lVar), iOException);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.efq.hp
    public void hp(com.byazt.uhg.l lVar, IOException iOException) {
        try {
            ((k) com.byazt.ym.j.getService(NotificationCompat.CATEGORY_EVENT)).onExceptionEvent("okhttp_callFailed", hp(lVar), iOException);
        } catch (Exception unused) {
        }
    }

    private JSONObject hp(com.byazt.uhg.l lVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("url", l(lVar));
        return jSONObject;
    }
}
