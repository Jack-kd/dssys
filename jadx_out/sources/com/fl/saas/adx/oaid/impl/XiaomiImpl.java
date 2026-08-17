package com.fl.saas.adx.oaid.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import com.fl.saas.adx.oaid.IGetter;
import com.fl.saas.adx.oaid.IOAID;
import com.fl.saas.adx.oaid.OAIDException;
import com.fl.saas.adx.oaid.OAIDLog;

/* loaded from: classes3.dex */
class XiaomiImpl implements IOAID {
    private final Context context;
    private Class<?> idProviderClass;
    private Object idProviderImpl;

    @SuppressLint({"PrivateApi"})
    public XiaomiImpl(Context context) {
        this.context = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.idProviderClass = cls;
            this.idProviderImpl = cls.newInstance();
        } catch (Throwable th) {
            OAIDLog.print(th);
        }
    }

    private String getOAID() {
        return (String) this.idProviderClass.getMethod("getOAID", Context.class).invoke(this.idProviderImpl, this.context);
    }

    @Override // com.fl.saas.adx.oaid.IOAID
    public void doGet(IGetter iGetter) {
        OAIDException th;
        if (this.context == null || iGetter == null) {
            return;
        }
        if (this.idProviderClass == null || this.idProviderImpl == null) {
            th = new OAIDException("Xiaomi IdProvider not exists");
        } else {
            try {
                String oaid = getOAID();
                if (oaid == null || oaid.length() == 0) {
                    throw new OAIDException("OAID query failed");
                }
                OAIDLog.print("OAID query success: " + oaid);
                iGetter.onOAIDGetComplete(oaid);
                return;
            } catch (Throwable th2) {
                th = th2;
                OAIDLog.print(th);
            }
        }
        iGetter.onOAIDGetError(th);
    }

    @Override // com.fl.saas.adx.oaid.IOAID
    public boolean supported() {
        return this.idProviderImpl != null;
    }
}
