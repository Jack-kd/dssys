package com.kwad.sdk;

/* loaded from: classes4.dex */
public final class g {
    private volatile boolean aFV = false;
    private com.kwad.sdk.g.a aFW;

    private g(com.kwad.sdk.g.a aVar) {
        this.aFW = aVar;
    }

    public static g aj(final long j2) {
        return f(new com.kwad.sdk.g.a() { // from class: com.kwad.sdk.g.1
            @Override // com.kwad.sdk.g.a
            public final void accept(Object obj) {
                p.ap(j2);
            }
        });
    }

    public static g ak(final long j2) {
        return f(new com.kwad.sdk.g.a() { // from class: com.kwad.sdk.g.2
            @Override // com.kwad.sdk.g.a
            public final void accept(Object obj) {
                p.aq(j2);
            }
        });
    }

    public static g al(final long j2) {
        return f(new com.kwad.sdk.g.a() { // from class: com.kwad.sdk.g.3
            @Override // com.kwad.sdk.g.a
            public final void accept(Object obj) {
                p.at(j2);
            }
        });
    }

    public static g am(final long j2) {
        return f(new com.kwad.sdk.g.a() { // from class: com.kwad.sdk.g.4
            @Override // com.kwad.sdk.g.a
            public final void accept(Object obj) {
                p.au(j2);
            }
        });
    }

    private static g f(com.kwad.sdk.g.a aVar) {
        return new g(aVar);
    }

    public final synchronized void report() {
        if (this.aFW != null && !this.aFV) {
            this.aFW.accept(null);
            this.aFV = true;
        }
    }
}
