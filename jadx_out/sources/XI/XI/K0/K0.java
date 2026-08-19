package XI.XI.K0;

import XI.XI.XI.XI;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Objects;

/* loaded from: classes.dex */
public class K0 implements kM {

    /* renamed from: K0, reason: collision with root package name */
    public XI.XI.XI.XI f701K0;

    /* renamed from: XI, reason: collision with root package name */
    public Context f702XI;
    public xo kM;
    public ServiceConnection xo = new XI();

    public class XI implements ServiceConnection {
        public XI() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            XI.XI.XI.XI c0018xi;
            K0 k02 = K0.this;
            int i2 = XI.AbstractBinderC0017XI.f706XI;
            if (iBinder == null) {
                c0018xi = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
                c0018xi = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof XI.XI.XI.XI)) ? new XI.AbstractBinderC0017XI.C0018XI(iBinder) : (XI.XI.XI.XI) iInterfaceQueryLocalInterface;
            }
            k02.f701K0 = c0018xi;
            K0.this.kM.connectSuccess(true);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            K0.this.f701K0 = null;
        }
    }

    public K0(Context context) {
        this.f702XI = context;
    }

    public boolean XI() {
        boolean zIsSupported;
        XI.XI.XI.XI xi = this.f701K0;
        if (xi != null) {
            try {
                zIsSupported = xi.isSupported();
            } catch (RemoteException e2) {
                e2.getMessage();
                e2.printStackTrace();
            }
        } else {
            zIsSupported = false;
        }
        Objects.toString(this.f701K0);
        return zIsSupported;
    }
}
