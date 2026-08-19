package com.byazt.jc;

import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;

/* loaded from: classes.dex */
public interface jx {

    public interface a {
        void jx(jx jxVar);
    }

    public interface eb {
        void hp(jx jxVar, int i2, int i3, int i4, int i5);
    }

    public interface hp {
        void hp(jx jxVar, int i2);
    }

    public interface j {
        boolean l(jx jxVar, int i2, int i3);
    }

    /* renamed from: com.byazt.jc.jx$jx, reason: collision with other inner class name */
    public interface InterfaceC0280jx {
        boolean hp(jx jxVar, int i2, int i3);
    }

    public interface l {
        void hp(jx jxVar);
    }

    public interface w {
        void l(jx jxVar);
    }

    void a() throws Throwable;

    long e() throws Throwable;

    void eb() throws Throwable;

    void gu() throws Throwable;

    void hp(long j2, int i2) throws Throwable;

    void hp(Surface surface) throws Throwable;

    void hp(SurfaceHolder surfaceHolder) throws Throwable;

    void hp(com.byazt.fw.hp hpVar) throws Throwable;

    void hp(a aVar);

    void hp(eb ebVar);

    void hp(hp hpVar);

    void hp(j jVar);

    void hp(InterfaceC0280jx interfaceC0280jx);

    void hp(l lVar);

    void hp(w wVar);

    void hp(com.byazt.tw.a aVar, com.byazt.tw.l lVar);

    void hp(FileDescriptor fileDescriptor) throws Throwable;

    void hp(String str) throws Throwable;

    void hp(boolean z2);

    void j(boolean z2) throws Throwable;

    void jl() throws Throwable;

    void jx(boolean z2) throws Throwable;

    int k();

    void l(boolean z2) throws Throwable;

    long q() throws Throwable;

    void s();

    boolean v();

    void w() throws Throwable;

    void w(boolean z2);

    int zy();
}
