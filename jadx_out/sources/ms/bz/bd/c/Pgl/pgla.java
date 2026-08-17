package ms.bz.bd.c.Pgl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import com.umeng.analytics.pro.ek;
import java.util.concurrent.LinkedBlockingQueue;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes5.dex */
public final class pgla {
    private final Context jx;
    public final LinkedBlockingQueue<IBinder> hp = new LinkedBlockingQueue<>(1024);

    /* renamed from: l, reason: collision with root package name */
    ServiceConnection f52003l = new ServiceConnectionC0878pgla();

    /* renamed from: ms.bz.bd.c.Pgl.pgla$pgla, reason: collision with other inner class name */
    public class ServiceConnectionC0878pgla implements ServiceConnection {
        public ServiceConnectionC0878pgla() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                pgla.this.hp.put(iBinder);
            } catch (Exception unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public pgla(Context context) {
        this.jx = context;
    }

    public final void hp(pblk.pblb pblbVar) throws PackageManager.NameNotFoundException {
        try {
            this.jx.getPackageManager().getPackageInfo((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "718285", new byte[]{37, 60, 70, 8, 6, com.sigmob.sdk.archives.tar.e.f35443I, 33, 3, 39, 111, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35444J, 5, 117, 18, com.sigmob.sdk.archives.tar.e.f35444J, 36, 28, 108, 111, 35, 61, 95, 71, 21, 59, ek.f49296n, 57, 77}), 0);
        } catch (Exception unused) {
        }
        Intent intent = new Intent();
        intent.setAction((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "680053", new byte[]{36, com.sigmob.sdk.archives.tar.e.f35447M, 78, 10, 11, com.sigmob.sdk.archives.tar.e.f35449O, 32, 10, 47, 109, com.sigmob.sdk.archives.tar.e.f35446L, 59, ek.f49293k, 69, 9, com.sigmob.sdk.archives.tar.e.f35442H, 60, 22, 111, 46, 6, 25, 96, 97, 57, 23, 10, 61, 72, 68}));
        intent.setComponent(new ComponentName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "eaf91d", new byte[]{119, 108, 24, 3, ek.f49295m, 96, 115, com.sigmob.sdk.archives.tar.e.f35451Q, 121, 100, com.sigmob.sdk.archives.tar.e.f35454T, 98, 91, 126, 27, 99, 118, com.sigmob.sdk.archives.tar.e.f35450P, com.sigmob.sdk.archives.tar.e.f35444J, 100, 113, 109, 1, com.sigmob.sdk.archives.tar.e.f35450P, 28, 106, 66, 105, 19}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "020696", new byte[]{34, 63, 78, 12, 7, com.sigmob.sdk.archives.tar.e.f35444J, 38, 0, 47, 107, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35443I, ek.f49293k, 113, 19, com.sigmob.sdk.archives.tar.e.f35443I, 35, 31, 100, 107, 36, 62, 87, 67, 20, 56, 23, 58, 69, 40, 18, 37, com.sigmob.sdk.archives.tar.e.f35451Q, 82, 10, 36, 62, 22, 111, 114, 32, 34, 90, 102, 47, 5, 0, 22, 115, 112, 40, com.sigmob.sdk.archives.tar.e.f35445K, 70})));
        if (this.jx.bindService(intent, this.f52003l, 1)) {
            try {
                String strHp = new pblb(this.hp.take()).hp();
                if (pblbVar != null) {
                    pblbVar.hp(strHp);
                }
            } catch (Exception unused2) {
            } catch (Throwable th) {
                this.jx.unbindService(this.f52003l);
                throw th;
            }
            this.jx.unbindService(this.f52003l);
        }
    }
}
