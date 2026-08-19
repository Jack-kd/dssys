package p;

import android.os.Build;
import com.anythink.core.api.ATAdConst;
import com.baidu.oauth.sdkbqt.auth.C1120a;
import com.baidu.oauth.sdkbqt.auth.C1121b;
import java.util.HashMap;
import java.util.Map;
import o.g;

/* loaded from: classes2.dex */
public abstract class e {
    public static Map a() {
        o.d.d("Utils", "buildCommonParams begin");
        HashMap map = new HashMap();
        map.put("client", "android");
        map.put("v", String.valueOf(System.currentTimeMillis()));
        map.put("device", Build.MODEL);
        map.put("sdk_version", "2.0.6.10");
        C1120a c1120aB = C1121b.b();
        if (c1120aB == null) {
            return map;
        }
        map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY, c1120aB.a());
        map.put("pkg", c1120aB.e());
        map.put("cuid", c1120aB.b());
        map.put("app_version", g.j(c1120aB.getContext()));
        return map;
    }
}
