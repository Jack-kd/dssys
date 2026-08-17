package org.eclipse.jetty.server.handler;

import java.io.IOException;

/* loaded from: classes5.dex */
class ConnectHandler$ProxyToServerConnection$1 extends IOException {
    final /* synthetic */ c this$1;
    final /* synthetic */ InterruptedException val$x;

    public ConnectHandler$ProxyToServerConnection$1(c cVar, InterruptedException interruptedException) {
        this.val$x = interruptedException;
        initCause(interruptedException);
    }
}
