package com.kwad.components.core.proxy.launchdialog;

import androidx.view.Lifecycle;

/* loaded from: classes4.dex */
public interface g {

    public static class a implements g {
        private long ajn;

        public a(long j2) {
            this.ajn = j2;
        }

        public final boolean Q(long j2) {
            return this.ajn > 0 && System.currentTimeMillis() - j2 >= this.ajn;
        }

        public final String toString() {
            return "DurationMoreThanItem{mDuration=" + this.ajn + '}';
        }
    }

    public static class b implements g {
        private Lifecycle.Event ajg;

        public b(Lifecycle.Event event) {
            this.ajg = event;
        }

        public final boolean b(Lifecycle.Event event) {
            return this.ajg.equals(event);
        }

        public final String toString() {
            return "PageEventItem{mEvent=" + this.ajg + '}';
        }
    }
}
