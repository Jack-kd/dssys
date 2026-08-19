package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import java.util.HashMap;
import java.util.Map;
import ms.bz.bd.c.Pgl.q0;

/* loaded from: classes5.dex */
public final class p0 implements q0.pgla {
    private final long hp;
    private final pblv jx;

    /* renamed from: l, reason: collision with root package name */
    private final Context f51966l;

    public p0(pblv pblvVar, Context context, long j2) {
        if (context == null) {
            throw new NullPointerException("context could not be null");
        }
        this.jx = pblvVar;
        this.f51966l = context.getApplicationContext();
        this.hp = j2;
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final Map<String, String> getFeatureHash(String str, byte[] bArr) {
        HashMap map = new HashMap();
        if (str != null && str.length() != 0) {
            long j2 = this.hp;
            int i2 = pblz.hp;
            String[] strArr = (String[]) com.volcengine.mobsecBiz.matrix.pgla.a(33554438, 0, j2, str, bArr);
            if (strArr != null && strArr.length % 2 == 0) {
                for (int i3 = 0; i3 < strArr.length; i3 += 2) {
                    String str2 = strArr[i3];
                    String str3 = strArr[i3 + 1];
                    if (str2 != null && str3 != null) {
                        map.put(str2, str3);
                    }
                }
            }
        }
        return map;
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final String getToken() {
        long j2 = this.hp;
        if (j2 == -1) {
            return "";
        }
        int i2 = pblz.hp;
        return (String) com.volcengine.mobsecBiz.matrix.pgla.a(33554439, 0, j2, null, null);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void report(String str) {
        if (this.hp == -1 || TextUtils.isEmpty(str)) {
            return;
        }
        long j2 = this.hp;
        Context context = this.f51966l;
        int i2 = pblz.hp;
        com.volcengine.mobsecBiz.matrix.pgla.a(InputDeviceCompat.SOURCE_HDMI, 0, j2, str, context);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setBDDeviceID(String str) {
        this.jx.f51987d = str;
        long j2 = this.hp;
        if (j2 != -1) {
            Context context = this.f51966l;
            int i2 = pblz.hp;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554437, 0, j2, str, context);
        }
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setCollectMode(int i2) {
        long j2 = this.hp;
        if (j2 != -1) {
            int i3 = pblz.hp;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554441, i2, j2, null, null);
        }
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setDeviceID(String str) {
        this.jx.f51986c = str;
        long j2 = this.hp;
        if (j2 != -1) {
            Context context = this.f51966l;
            int i2 = pblz.hp;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554434, 0, j2, str, context);
        }
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setInstallID(String str) {
        this.jx.f51988e = str;
        long j2 = this.hp;
        if (j2 != -1) {
            Context context = this.f51966l;
            int i2 = pblz.hp;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554435, 0, j2, str, context);
        }
    }
}
