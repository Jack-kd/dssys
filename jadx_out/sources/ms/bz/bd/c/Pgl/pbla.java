package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.umeng.analytics.pro.ek;

/* loaded from: classes5.dex */
public final class pbla implements IInterface {
    private final IBinder hp;

    public pbla(IBinder iBinder) {
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
            parcelObtain.writeInterfaceToken((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "df3b60", new byte[]{118, 107, 77, com.sigmob.sdk.archives.tar.e.f35453S, 28, 40, 99, 78, 113, 124, 122, 116, 69, 24, ek.f49293k, 34, 113, 78, 97, com.sigmob.sdk.archives.tar.e.f35449O, 59, 101, 73, 18, 5, 105, 72, 87, com.sigmob.sdk.archives.tar.e.f35454T, 60, 81, 97, 86, 31, 10, 34, 78, 67, com.sigmob.sdk.archives.tar.e.f35454T, 60, 97, 109, 70, 31, 12, com.sigmob.sdk.archives.tar.e.f35447M, 84, 66, 112, 36, 124, com.sigmob.sdk.archives.tar.e.f35454T, 69}));
            this.hp.transact(1, parcelObtain, parcelObtain2, 0);
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
