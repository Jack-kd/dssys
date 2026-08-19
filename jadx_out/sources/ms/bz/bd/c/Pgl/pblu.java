package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public final class pblu implements IInterface {
    private final IBinder hp;

    public pblu(IBinder iBinder) {
        this.hp = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    public final String hp() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f1bc61", new byte[]{116, 60, 28, 89, 19, com.sigmob.sdk.archives.tar.e.f35445K, 108, 94, com.sigmob.sdk.archives.tar.e.f35449O, com.sigmob.sdk.archives.tar.e.f35448N, 97, 58, 18, 18, 0, 34, 118, 21, 33, 37, 126, com.sigmob.sdk.archives.tar.e.f35442H, 20, 89, 32, 2, 96, 6, 58, com.sigmob.sdk.archives.tar.e.f35442H, 114, 58, 21, 62, 7, com.sigmob.sdk.archives.tar.e.f35444J, 96, 2, com.sigmob.sdk.archives.tar.e.f35447M, com.sigmob.sdk.archives.tar.e.f35444J, 116, com.sigmob.sdk.archives.tar.e.f35448N}));
            this.hp.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            String string = parcelObtain2.readString();
            parcelObtain2.recycle();
            parcelObtain.recycle();
            return string;
        } catch (Exception unused) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            return null;
        } catch (Throwable th) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            throw th;
        }
    }
}
