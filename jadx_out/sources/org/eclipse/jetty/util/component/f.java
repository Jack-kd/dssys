package org.eclipse.jetty.util.component;

import java.util.EventListener;

/* loaded from: classes5.dex */
public interface f {

    public interface a extends EventListener {
    }

    boolean isRunning();

    boolean isStarted();

    boolean isStarting();

    boolean isStopped();

    boolean isStopping();

    void start();

    void stop();
}
