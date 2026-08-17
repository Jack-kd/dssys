package ms.bz.bd.c.Pgl;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.umeng.analytics.pro.ek;

/* loaded from: classes5.dex */
public final class c1 {
    private final Context hp;

    public c1(Context context) {
        this.hp = context;
    }

    public final String hp() throws RemoteException {
        Bundle bundleCall;
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = this.hp.getContentResolver().acquireContentProviderClient(Uri.parse((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "328a8f", new byte[]{33, 63, 69, 1, 2, 127, 36, 73, 38, 126, 33, 62, 5, 27, 18, 115, 57, 18, 39, 56, 38, com.sigmob.sdk.archives.tar.e.f35447M, 69, 1, ek.f49294l, 101, 41, 92, 96, com.sigmob.sdk.archives.tar.e.f35447M, 39, 62, 95, 28, 19, 104})));
            bundleCall = contentProviderClientAcquireContentProviderClient.call((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "be5c9f", new byte[]{116, 98, 82, 56, 39, com.sigmob.sdk.archives.tar.e.f35453S, 69}), null, null);
            contentProviderClientAcquireContentProviderClient.close();
        } catch (Exception unused) {
        }
        if (bundleCall.getInt((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ca4561", new byte[]{113, 108, 67, 68}), -1) == 0) {
            return bundleCall.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "dd0305", new byte[]{124, 98}));
        }
        bundleCall.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5e9746", new byte[]{41, 98, 89, 80, 10, 38, com.sigmob.sdk.archives.tar.e.f35445K}));
        return null;
    }
}
