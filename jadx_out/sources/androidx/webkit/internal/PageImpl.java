package androidx.webkit.internal;

import androidx.webkit.Page;
import androidx.webkit.WebNavigationClient;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

@WebNavigationClient.ExperimentalNavigationCallback
/* loaded from: classes.dex */
public class PageImpl implements Page {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final WebViewPageBoundaryInterface mPageBoundaryInterface;

    private PageImpl(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        this.mPageBoundaryInterface = webViewPageBoundaryInterface;
    }

    public static /* synthetic */ Object a(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        return new PageImpl(webViewPageBoundaryInterface);
    }

    public static Page forInvocationHandler(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewPageBoundaryInterface.class, invocationHandler);
        Object orCreatePeer = webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.I
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PageImpl.a(webViewPageBoundaryInterface);
            }
        });
        Objects.requireNonNull(orCreatePeer);
        return (Page) orCreatePeer;
    }
}
