package com.kwad.framework.filedownloader;

import com.kwad.framework.filedownloader.message.MessageSnapshot;
import com.kwad.framework.filedownloader.s;

/* loaded from: classes4.dex */
public interface x extends s.a {

    public interface a {
        t Bf();

        boolean a(MessageSnapshot messageSnapshot);

        boolean b(MessageSnapshot messageSnapshot);

        boolean c(MessageSnapshot messageSnapshot);

        boolean d(MessageSnapshot messageSnapshot);

        MessageSnapshot n(Throwable th);
    }

    public interface b {
        void start();
    }

    byte AH();

    Throwable AJ();

    int AL();

    boolean AN();

    void Bg();

    long Bh();

    void free();

    long getStatusUpdateTime();

    long getTotalBytes();

    boolean pause();

    void reset();
}
