package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes5.dex */
public final class f1 implements IInterface {
    public IBinder hp;

    public f1(IBinder iBinder) {
        this.hp = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.hp;
    }
}
