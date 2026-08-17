package com.smartdigimkt.b3;

/* loaded from: classes5.dex */
public final class a extends Throwable {
    public a(Exception exc) {
        super(exc);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        if (getCause() == null) {
            return super.toString();
        }
        return a.class.getName() + ": " + getCause();
    }
}
