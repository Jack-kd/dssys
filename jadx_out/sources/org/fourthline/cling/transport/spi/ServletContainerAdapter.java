package org.fourthline.cling.transport.spi;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import javax.servlet.Servlet;

/* loaded from: classes5.dex */
public interface ServletContainerAdapter {
    int addConnector(String str, int i2) throws IOException;

    void registerServlet(String str, Servlet servlet);

    void removeConnector(String str, int i2);

    void setExecutorService(ExecutorService executorService);

    void startIfNotRunning();

    void stopIfRunning();
}
