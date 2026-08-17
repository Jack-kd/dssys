package com.smartdigimkt.r;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import com.umeng.analytics.pro.bk;

/* loaded from: classes5.dex */
public final class q extends Binder implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f42910a;

    public q(s sVar) {
        this.f42910a = sVar;
        attachInterface(this, com.anythink.odopt.a.a.i.f10577a);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            parcel.enforceInterface(com.anythink.odopt.a.a.i.f10577a);
            parcel.readInt();
            parcel.readLong();
            parcel.readInt();
            parcel.readFloat();
            parcel.readDouble();
            parcel.readString();
            parcel2.writeNoException();
            return true;
        }
        if (i2 != 2) {
            if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel2.writeString(com.anythink.odopt.a.a.i.f10577a);
            return true;
        }
        parcel.enforceInterface(com.anythink.odopt.a.a.i.f10577a);
        int i4 = parcel.readInt();
        Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
        if (i4 == 0 && bundle != null) {
            String string = bundle.getString(bk.c.f48849b);
            if (this.f42910a.f42916d != null) {
                if (TextUtils.isEmpty(string)) {
                    this.f42910a.f42916d.a("oaid is empty.");
                } else {
                    this.f42910a.f42916d.a(string, false);
                }
            }
        }
        parcel2.writeNoException();
        return true;
    }
}
