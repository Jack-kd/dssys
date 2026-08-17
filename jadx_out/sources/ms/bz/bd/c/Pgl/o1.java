package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.umeng.analytics.pro.ek;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class o1 {
    private static o1 hp;
    private ArrayList jx = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    private Context f51965l;

    private o1(Context context) {
        this.f51965l = null;
        this.f51965l = context;
    }

    public final int hp() {
        if (this.f51965l.registerReceiver(null, new IntentFilter((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1b8c4d", new byte[]{33, 110, 79, 5, 4, 122, com.sigmob.sdk.archives.tar.e.f35448N, ek.f49293k, 96, 61, com.sigmob.sdk.archives.tar.e.f35446L, 101, 69, 3, 69, 114, com.sigmob.sdk.archives.tar.e.f35443I, 87, 96, 60, 46, 46, 105, com.sigmob.sdk.archives.tar.e.f35448N, 63, 71, 23, 113, 80, 12, 3, 72, 106, 57, 44, 86, 22}))) == null) {
            return -1;
        }
        return Math.round(((r0.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "27474d", new byte[]{47, com.sigmob.sdk.archives.tar.e.f35442H, 81, 70, 7}), -1) / r0.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "76c5e4", new byte[]{com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35449O, 17, 77, 95}), -1)) * 100.0f) * 10.0f) / 10;
    }

    public final void j() {
        int i2;
        int iJx;
        int iHp;
        try {
            if (pble.hp() != null) {
                try {
                    synchronized (this) {
                        iJx = jx();
                        iHp = hp();
                    }
                    i2 = (iJx * 10000) + iHp;
                } catch (Exception unused) {
                    i2 = com.anythink.core.common.m.q.f5855m;
                }
                this.jx.add(Integer.valueOf(i2));
                try {
                    int size = this.jx.size();
                    if (size > 20) {
                        ArrayList arrayList = new ArrayList(this.jx.subList(size - 10, size));
                        this.jx.clear();
                        this.jx = arrayList;
                        return;
                    }
                    return;
                } catch (Throwable unused2) {
                    return;
                }
            }
        } catch (Throwable unused3) {
        }
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "444d6e", new byte[]{38, 62, 66, 19, 2, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35443I, ek.f49296n, 113, com.sigmob.sdk.archives.tar.e.f35449O, 45, 20, 70, 4, 29, 119, 37, 12, 86, 32, 36, 34, 82, 3, 58, 102, 37, 28, 107, com.sigmob.sdk.archives.tar.e.f35445K, 101, 63, 73, 80, 11, 115, com.sigmob.sdk.archives.tar.e.f35446L, 30, 98, 38, 42, 35, 73, 20});
    }

    public final int jx() {
        Intent intentRegisterReceiver = this.f51965l.registerReceiver(null, new IntentFilter((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "be44a7", new byte[]{114, 105, 67, 82, 81, 41, 101, 10, 108, 106, com.sigmob.sdk.archives.tar.e.f35454T, 98, 73, 84, ek.f49296n, 33, 98, 80, 108, 107, 125, 41, 101, 97, 106, 20, 68, 118, 92, 91, 80, 79, 102, 110, 121, 5, 69})));
        if (intentRegisterReceiver == null) {
            return -1;
        }
        return intentRegisterReceiver.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1d5de6", new byte[]{com.sigmob.sdk.archives.tar.e.f35442H, 106, com.sigmob.sdk.archives.tar.e.f35451Q, 23, 93, 36, com.sigmob.sdk.archives.tar.e.f35448N}), -1);
    }

    public final int l() {
        Intent intentRegisterReceiver = this.f51965l.registerReceiver(null, new IntentFilter((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6d23eb", new byte[]{38, 104, 69, 85, 85, 124, com.sigmob.sdk.archives.tar.e.f35443I, 11, 106, 109, com.sigmob.sdk.archives.tar.e.f35445K, 99, 79, com.sigmob.sdk.archives.tar.e.f35451Q, 20, 116, com.sigmob.sdk.archives.tar.e.f35448N, 81, 106, 108, 41, 40, 99, 102, 110, 65, ek.f49296n, 119, 90, 92, 4, 78, 96, 105, 125, 80, 17})));
        if (intentRegisterReceiver == null) {
            return -1;
        }
        int intExtra = intentRegisterReceiver.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9dcf16", new byte[]{59, 114, 17, 6, 27, com.sigmob.sdk.archives.tar.e.f35444J}), -1);
        return (intExtra == 2 || intExtra == 5) ? 1 : 0;
    }

    public final synchronized int[] w() {
        int size = this.jx.size();
        if (size <= 0) {
            return new int[0];
        }
        if (size == 1) {
            return new int[]{((Integer) this.jx.get(0)).intValue()};
        }
        try {
            ArrayList arrayList = this.jx;
            int i2 = size - 10;
            if (i2 <= 0) {
                i2 = 0;
            }
            List listSubList = arrayList.subList(i2, size);
            int[] iArr = new int[listSubList.size()];
            for (int i3 = 0; i3 < listSubList.size(); i3++) {
                iArr[i3] = ((Integer) listSubList.get(i3)).intValue();
            }
            return iArr;
        } catch (Throwable unused) {
            return new int[0];
        }
    }

    public static o1 hp(Context context) {
        if (hp == null) {
            synchronized (o1.class) {
                try {
                    if (hp == null) {
                        hp = new o1(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }
}
