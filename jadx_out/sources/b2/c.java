package b2;

import android.database.ContentObserver;
import android.util.Log;

/* loaded from: classes5.dex */
public class c extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public String f1202a;

    /* renamed from: b, reason: collision with root package name */
    public int f1203b;

    /* renamed from: c, reason: collision with root package name */
    public b f1204c;

    public c(b bVar, int i2, String str) {
        super(null);
        this.f1204c = bVar;
        this.f1203b = i2;
        this.f1202a = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z2) {
        b bVar = this.f1204c;
        if (bVar != null) {
            bVar.l(this.f1203b, this.f1202a);
        } else {
            Log.e("VMS_SDK_Observer", "mIdentifierIdClient is null");
        }
    }
}
