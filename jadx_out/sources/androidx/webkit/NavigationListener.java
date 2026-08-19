package androidx.webkit;

import androidx.webkit.WebNavigationClient;

@WebNavigationClient.ExperimentalNavigationCallback
/* loaded from: classes.dex */
public interface NavigationListener {
    default void onFirstContentfulPaint(Page page, long j2) {
    }

    default void onNavigationCompleted(Navigation navigation) {
    }

    default void onNavigationRedirected(Navigation navigation) {
    }

    default void onNavigationStarted(Navigation navigation) {
    }

    default void onPageDeleted(Page page) {
    }

    default void onPageDomContentLoadedEvent(Page page) {
    }

    default void onPageLoadEvent(Page page) {
    }
}
