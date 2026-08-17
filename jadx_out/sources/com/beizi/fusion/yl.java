package com.beizi.fusion;

/* loaded from: classes2.dex */
public class yl extends Exception {

    /* renamed from: a, reason: collision with root package name */
    private final String f17700a;

    public yl(String str) {
        this.f17700a = str;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return "Render structs has conflict or unexpected error, " + this.f17700a;
    }
}
