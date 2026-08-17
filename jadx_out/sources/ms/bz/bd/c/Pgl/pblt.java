package ms.bz.bd.c.Pgl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import ms.bz.bd.c.Pgl.pblk;

/* loaded from: classes5.dex */
public final class pblt {
    pblu hp;
    private final Context jx;

    /* renamed from: l, reason: collision with root package name */
    ServiceConnection f51983l = new pgla();

    public class pgla implements ServiceConnection {
        public pgla() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            pblt.this.hp = new pblu(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public pblt(Context context) {
        this.jx = context;
    }

    public final void hp(pblk.pblb pblbVar) {
        Intent intent = new Intent();
        intent.setClassName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b59248", new byte[]{112, 56, 71, 8, 17, 58, 104, 90, 108, com.sigmob.sdk.archives.tar.e.f35454T, 101, 62, 73, 67, 2, 43, 114, 17, 122, 116, 122, com.sigmob.sdk.archives.tar.e.f35446L, 79}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cd59bb", new byte[]{113, 105, 75, 3, 71, 96, 105, 11, 96, 108, 100, 111, 69, 72, 84, 113, 115, com.anythink.core.common.s.a.c.f7561b, 118, 127, 123, 101, 67, 3, 121, 112, 118, com.sigmob.sdk.archives.tar.e.f35450P, com.sigmob.sdk.archives.tar.e.f35454T, 108, 123, 98, 117, 72, 79, 99, 105, 70, 97}));
        if (this.jx.bindService(intent, this.f51983l, 1)) {
            try {
                pblu pbluVar = this.hp;
                if (pbluVar != null) {
                    String strHp = pbluVar.hp();
                    if (pblbVar != null) {
                        pblbVar.hp(strHp);
                    }
                }
            } catch (Throwable unused) {
            }
            this.jx.unbindService(this.f51983l);
        }
    }
}
