package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public final class pblb implements IInterface {
    private final IBinder hp;

    public pblb(IBinder iBinder) {
        this.hp = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.hp;
    }

    public final String hp() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c9d0e6", new byte[]{113, com.sigmob.sdk.archives.tar.e.f35446L, 26, 10, 91, com.sigmob.sdk.archives.tar.e.f35444J, 117, 11, 123, 109, 97, 58, 89, 119, 79, com.sigmob.sdk.archives.tar.e.f35443I, 112, 20, com.sigmob.sdk.archives.tar.e.f35442H, 109, 119, com.sigmob.sdk.archives.tar.e.f35447M, 3, 69, 72, 56, 68, com.sigmob.sdk.archives.tar.e.f35443I, 17, 46, 91, 31, 30, com.anythink.core.common.s.a.c.f7561b, 123, 40, 100, 20, 28, 110, 102, 62, 5, 66, 91, 34, 101}));
            this.hp.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Throwable unused) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            string = null;
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return string;
    }
}
