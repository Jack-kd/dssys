package ms.bz.bd.c.Pgl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes5.dex */
public final class pblp {
    private final Context jx;
    public final LinkedBlockingQueue<IBinder> hp = new LinkedBlockingQueue<>(1024);

    /* renamed from: l, reason: collision with root package name */
    ServiceConnection f51982l = new pgla();

    public class pgla implements ServiceConnection {
        public pgla() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                pblp.this.hp.put(iBinder);
            } catch (Exception unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public pblp(Context context) {
        this.jx = context;
    }

    public final void hp(pblk.pblb pblbVar) throws PackageManager.NameNotFoundException {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 != 28 && i2 < 33) {
            try {
                this.jx.getPackageManager().getPackageInfo((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "622e3b", new byte[]{36, 63, com.sigmob.sdk.archives.tar.e.f35450P, 95, 4, 96, com.sigmob.sdk.archives.tar.e.f35446L, 4, 102, 60, 105, 56, 86, 24, 8}), 0);
            } catch (Exception unused) {
            }
            Intent intent = new Intent((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d278b7", new byte[]{118, 63, 73, 2, 72, 47, 99, 26, 117, 38, 122, 32, 65, 66, 89, 37, 113, 26, 101, 109, 59, 31, 116, 105, 115, 9, 67, 32, 89, 91, 80, 2, 114, 101, 126, 5}));
            intent.setPackage((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7a6fda", new byte[]{37, 108, 72, 92, com.sigmob.sdk.archives.tar.e.f35451Q, 99, com.sigmob.sdk.archives.tar.e.f35447M, 87, 98, 63, 104, 107, 82, 27, 95}));
            if (this.jx.bindService(intent, this.f51982l, 1)) {
                try {
                    String strHp = new pbla(this.hp.take()).hp();
                    if (pblbVar != null) {
                        pblbVar.hp(strHp);
                    }
                } catch (Exception unused2) {
                } catch (Throwable th) {
                    this.jx.unbindService(this.f51982l);
                    throw th;
                }
                this.jx.unbindService(this.f51982l);
            }
        }
    }
}
