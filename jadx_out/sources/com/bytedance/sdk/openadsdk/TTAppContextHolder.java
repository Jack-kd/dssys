package com.bytedance.sdk.openadsdk;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.byazt.ik.a;
import java.lang.reflect.Method;
import okhttp3.internal.ws.WebSocketProtocol;

@com.byazt.kj.hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 1413})
/* loaded from: classes3.dex */
public class TTAppContextHolder {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context hp;

    @com.byazt.kj.hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 1718})
    public static class hp {

        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application hp;

        static {
            try {
                Object objL = l();
                hp = (Application) objL.getClass().getMethod("getApplication", null).invoke(objL, null);
                a.j("MyApplication", "application get success");
            } catch (Throwable th) {
                a.w("MyApplication", "application get failed", th);
            }
        }

        public static Application hp() {
            return hp;
        }

        private static Object l() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null);
                method.setAccessible(true);
                return method.invoke(null, null);
            } catch (Throwable th) {
                a.w("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static Context getContext() {
        if (hp == null) {
            setContext(null);
        }
        return hp;
    }

    public static synchronized void setContext(Context context) {
        if (hp == null) {
            if (context != null) {
                hp = context.getApplicationContext();
            } else if (hp.hp() != null) {
                try {
                    Application applicationHp = hp.hp();
                    hp = applicationHp;
                    if (applicationHp != null) {
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }
}
