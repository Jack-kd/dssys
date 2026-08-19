package com.kwad.framework.filedownloader;

import com.kwad.framework.filedownloader.x;

/* loaded from: classes4.dex */
public interface a {

    /* renamed from: com.kwad.framework.filedownloader.a$a, reason: collision with other inner class name */
    public interface InterfaceC0580a {
        a AP();

        x.a AQ();

        int AR();

        void AS();

        boolean AT();

        void AU();

        void AV();

        boolean AW();

        boolean cq(int i2);

        void free();

        boolean isOver();
    }

    public interface b {
        int AX();
    }

    public interface c {
        void AY();

        void onBegin();
    }

    int AA();

    boolean AB();

    i AC();

    int AD();

    long AE();

    int AF();

    long AG();

    byte AH();

    boolean AI();

    Throwable AJ();

    int AK();

    int AL();

    boolean AM();

    boolean AN();

    boolean AO();

    b Aw();

    boolean Ax();

    boolean Ay();

    int Az();

    a a(i iVar);

    a bT(String str);

    a bU(String str);

    a bs(boolean z2);

    a bt(boolean z2);

    a bu(boolean z2);

    a c(String str, boolean z2);

    boolean cancel();

    a cp(int i2);

    String getFilename();

    int getId();

    String getPath();

    int getSmallFileSoFarBytes();

    int getSmallFileTotalBytes();

    int getSpeed();

    long getStatusUpdateTime();

    Object getTag();

    String getTargetFilePath();

    String getUrl();

    a i(Object obj);

    boolean isRunning();

    boolean pause();

    int start();

    a y(String str, String str2);
}
